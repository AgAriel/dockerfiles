FROM rust:1.33-stretch AS builder

RUN rustup target add x86_64-unknown-linux-musl
RUN apt update && apt install -y make musl-dev musl-tools pkg-config

RUN git clone --branch v2.1.0 https://github.com/bloom42/flint.git 

WORKDIR /flint
RUN make build_static

FROM ubuntu:18.10

COPY --from=builder /flint/dist/flint /bin/flint
