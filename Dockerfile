FROM prom/prometheus

COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose the default Prometheus port (9090)
EXPOSE 9090

CMD ["--config.file=/etc/prometheus/prometheus.yml"]
