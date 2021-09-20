#!/bin/sh

echo "Starting JMusicBot"

VER=$(curl --silent "https://api.github.com/repos/jagrosh/MusicBot/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')

if [ ! -f JMusicBot-$VER.jar ]; then	
  wget https://github.com/jagrosh/MusicBot/releases/download/$VER/JMusicBot-$VER.jar
fi

java -Dnogui=true -Dconfig=/config/config.txt -jar JMusicBot-$VER.jar 
