FROM bitnami/minideb:latest

RUN install_packages openjdk-11-jre-headless wget curl grep \
  && mkdir /app \
  && mkdir -p /config/Playlists \
  && ln -s /config/Playlists /app/Playlists \
  && ln -s /config/serversettings.json /app/serversettings.json

STOPSIGNAL SIGTERM

COPY run_bot.sh /app/run_bot.sh
RUN chmod 700 /app/run_bot.sh

WORKDIR /app
VOLUME  /config

CMD ["./run_bot.sh"]
