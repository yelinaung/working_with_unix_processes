FROM bash:4.4
COPY hello.sh /
RUN mv /hello.sh /hello
ENTRYPOINT "/hello"
