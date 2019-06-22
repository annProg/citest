FROM alpine:3.10
COPY /build/main /
ENTRYPOINT ["/main"]