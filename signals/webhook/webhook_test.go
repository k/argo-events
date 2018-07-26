/*
Copyright 2018 BlackRock, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package webhook

import (
	"fmt"
	"net/http"
	"strings"
	"testing"

	"github.com/argoproj/argo-events/pkg/apis/sensor/v1alpha1"
)

var (
	client  = &http.Client{}
	payload = "{name: x}"
)

func handleEvent(t *testing.T, testEventChan <-chan *v1alpha1.Event) {
	event := <-testEventChan

	if string(event.Data) != payload {
		t.Errorf("event Data:\nexpected: %s\nactual: %s", payload, string(event.Data))
	}
}

func makeAPIRequest(t *testing.T, httpMethod string, endpoint string, port int32) {
	web := New()
	signal := v1alpha1.Signal{
		Webhook: &v1alpha1.WebhookSignal{
			Port:     port,
			Endpoint: endpoint,
			Method:   httpMethod,
		},
	}
	done := make(chan struct{})
	// stop listening and ensure the events channel is closed on exit
	defer close(done)
	events, err := web.Listen(&signal, done)

	go handleEvent(t, events)

	request, err := http.NewRequest(httpMethod, fmt.Sprintf("http://localhost:%d%s", port, endpoint), strings.NewReader(payload))
	if err != nil {
		t.Fatalf("unable to create http request. cause: %s", err)
	}
	request.Close = true // do not keep the connection alive
	resp, err := client.Do(request)
	if err != nil {
		t.Fatalf("failed to perform http request. cause: %s", err)
	}
	if resp.Status != "200 OK" {
		t.Errorf("response status expected: '200 OK' actual: '%s'", resp.Status)
	}
}

func testPostRequest(t *testing.T) {
	makeAPIRequest(t, http.MethodPost, "/post", 5677)
}

func testPutRequest(t *testing.T) {
	makeAPIRequest(t, http.MethodPut, "/put", 5678)
}

func testDeleteRequest(t *testing.T) {
	makeAPIRequest(t, http.MethodDelete, "/delete", 5679)
}

func TestSignal(t *testing.T) {
	t.Run("post", testPostRequest)
	t.Run("put", testPutRequest)
	t.Run("delete", testDeleteRequest)
}