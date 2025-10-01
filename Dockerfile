FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y sudo libusb-1.0-0 && \
    rm -rf /var/lib/apt/lists/*

COPY deepcool /usr/local/bin/deepcool
RUN chmod +x /usr/local/bin/deepcool

USER root

CMD ["sudo", "/usr/local/bin/deepcool", "--pid", "10"]
