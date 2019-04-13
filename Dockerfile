FROM golang:1.12

ENV PORT 8082
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN go get github.com/fullstorydev/grpcui
RUN go install github.com/fullstorydev/grpcui/cmd/grpcui

EXPOSE ${PORT}

CMD grpcui -bind 0.0.0.0 -port ${PORT} -plaintext ${URL}
