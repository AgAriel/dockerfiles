FROM golang:1.12.5 as builder

RUN go get github.com/pressly/goose/cmd/goose

WORKDIR /go/src/github.com/pressly/goose
RUN CGO_ENABLED=0 go install -tags='no_mysql no_sqlite3' ./cmd/goose

FROM alpine:3.9

COPY --from=builder /go/bin/goose /bin/goose