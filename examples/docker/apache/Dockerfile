FROM debian:stable
MAINTAINER Simon Lauger <simon@lauger.de>
RUN sed -i 's/stable main/stable main contrib non-free/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends apache2 && \
    apt-get install -y libcap2-bin && \
    apt-get clean && \
    mkdir /var/run/apache2 && \
    chown -R www-data /var/log/apache2 /var/run/apache2 && \
    setcap cap_net_bind_service=+ep /usr/sbin/apache2
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
USER 33:33
CMD ["/usr/local/bin/docker-entrypoint.sh"]
