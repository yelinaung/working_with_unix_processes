FROM bash:4.4

RUN addgroup --gid 1000 cloud93 && \
    adduser --uid 1000 cloud92 --ingroup cloud93 \
    --disabled-password --gecos '' cloud92

USER cloud92:cloud93
COPY hello.sh /
ENTRYPOINT ["bash", "/hello.sh"]
