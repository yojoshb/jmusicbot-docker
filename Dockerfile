FROM alpine:latest

ENV VERSION 0.3.5
ENV PUID=1000 PGID=1000

RUN apk --update add --no-cache openjdk11-jre

RUN mkdir /app
RUN mkdir /config

COPY run_bot.sh /app/run_bot.sh
RUN chmod +x /app/run_bot.sh

WORKDIR /app
VOLUME /config

CMD ["/bin/sh","./run_bot.sh"]
