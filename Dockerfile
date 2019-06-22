FROM golang:1.11 as builder
RUN mkdir /build
COPY main.go /go
WORKDIR /build
RUN go build

FROM alpine:3.10
COPY --from=builde /build/main.go /
ENTRYPOINT ["/main.go"]