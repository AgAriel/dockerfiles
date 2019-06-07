FROM golang:1.12.5 as builder

RUN go get github.com/lib/pq \
    github.com/mattn/go-sqlite3 \
    github.com/pkg/errors \
    github.com/pressly/goose/cmd/goose

WORKDIR /go/src/github.com/pressly/goose
RUN git checkout tags/v2.6.0
RUN CGO_ENABLED=0 go install -tags='no_mysql no_sqlite3' ./cmd/goose

FROM alpine:3.9

COPY --from=builder /go/bin/goose /bin/goose
