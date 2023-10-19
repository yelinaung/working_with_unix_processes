FROM bash:4.4
COPY hello.sh /
ENTRYPOINT ["bash", "/hello.sh"]
