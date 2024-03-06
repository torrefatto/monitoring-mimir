FROM docker.io/grafana/mimir:latest

COPY ./config.yml /config.yml
RUN mkdir -p /data/ingester

CMD ["-config.file", "/config.yml"]
