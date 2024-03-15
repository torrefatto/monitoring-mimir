FROM docker.io/grafana/mimir:latest

COPY ./config.yml /config.yml
COPY ./entrypoint.sh /entrypoint.sh
RUN mkdir -p /data/ingester

ENTRYPOINT ["/entrypoint.sh"]
