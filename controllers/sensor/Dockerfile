FROM golang as builder

ENV GO111MODULE=on

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -o ./dist/sensor-controller ./cmd/controllers/sensor

FROM alpine

COPY --from=builder /app/dist/sensor-controller /sensor-controller

ENTRYPOINT [ "/sensor-controller" ]
