FROM golang:1.11 as builder
RUN mkdir /go
COPY main.go /go
WORKDIR /go
RUN go build

FROM alpine:3.10
COPY --from=builde /go/main.go /
ENTRYPOINT ["/main.go"]