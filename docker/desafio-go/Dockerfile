FROM golang:1.20rc3-alpine3.17 AS GOLANG_BUILDER
WORKDIR /go/src
COPY ./hello-full-cycle.go .
RUN mkdir /go/out
RUN go build -o /go/out hello-full-cycle.go

FROM scratch
COPY --from=GOLANG_BUILDER /go/out/hello-full-cycle /
CMD ["/hello-full-cycle"]

