#!/bin/sh

echo "Starting JMusicBot"

if [ ! -f JMusicBot-${VERSION}.jar ]; then	
  wget https://github.com/jagrosh/MusicBot/releases/download/${VERSION}/JMusicBot-${VERSION}.jar
fi

java -Dnogui=true -Dconfig=/config/config.txt -jar JMusicBot-${VERSION}.jar 
