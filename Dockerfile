FROM alpine:3.10
COPY main /
ENTRYPOINT ["/main"]