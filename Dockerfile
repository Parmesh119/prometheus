# Use the official Prometheus image
FROM prom/prometheus

# Copy the Prometheus configuration file
COPY ./prometheus.yml /etc/prometheus/prometheus.yml

# Set the working directory
WORKDIR /etc/prometheus

# Expose Prometheus port
EXPOSE 9090

# Start Prometheus
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]

