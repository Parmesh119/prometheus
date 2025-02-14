# Use the official Prometheus image
FROM prom/prometheus

# Copy the Prometheus configuration file
COPY ./prometheus.yml /etc/prometheus/prometheus.yml

# Set the working directory
WORKDIR /etc/prometheus

# Expose Prometheus port
EXPOSE 9090

# Corrected CMD to explicitly specify the config file
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml"]

