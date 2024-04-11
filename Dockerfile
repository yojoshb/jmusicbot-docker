FROM bitnami/minideb:bullseye

RUN install_packages openjdk-11-jre-headless wget curl grep \
  && mkdir -p /config/Playlists

STOPSIGNAL SIGTERM

COPY ./run_bot.sh /config/
RUN chmod +x /config/run_bot.sh

WORKDIR /config
VOLUME  /config

CMD ["./run_bot.sh"]
