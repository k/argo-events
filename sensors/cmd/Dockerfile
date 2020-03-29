FROM golang as builder

ENV GO111MODULE=on

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -o ./dist/sensor ./sensors/cmd/client.go

FROM alpine

RUN apk add ca-certificates openssh openssh-server openssh-client openssl-dev curl git

RUN mkdir /.openfaas
RUN chmod 777 /.openfaas

RUN mkdir /bin/workflows
RUN chmod -R 777 /bin/workflows

COPY assets/argo-linux-amd64 /usr/local/bin/argo
COPY assets/faas-cli /usr/local/bin/faas
COPY --from=builder /app/dist/sensor /bin/sensor

ENTRYPOINT [ "/bin/sensor" ]
