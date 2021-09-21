FROM alpine:latest

RUN apk -U upgrade --no-cache \
  && apk add --no-cache openjdk11-jre \
  && apk add --no-cache curl \
  && apk add --no-cache grep \
  && mkdir /app \
  && mkdir /config \
  && ln -s /config/serversettings.json /app/serversettings.json

STOPSIGNAL SIGTERM

COPY run_bot.sh /app/run_bot.sh
RUN chmod 700 /app/run_bot.sh

WORKDIR /app
VOLUME  /config

CMD ["./run_bot.sh"]
