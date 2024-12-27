#!/bin/bash

RELEASE_JSON=$(curl --silent "https://api.github.com/repos/${BOT_GITHUB}/releases/latest")

VER_DEFAULT=$(echo "$RELEASE_JSON" | grep -Po '"tag_name":\s*"\K[^"]*')
ASSET_NAME=$(echo "$RELEASE_JSON" | grep -Po '"name":\s*"\KJMusicBot[^"]*\.jar')
DOWNLOAD_URL=$(echo "$RELEASE_JSON" | grep -Po '"browser_download_url":\s*"\Khttps://[^"]*JMusicBot[^"]*\.jar')

# If the ENV is not explicitly set, use the sourced ENV from the Dockerfile
if [ "$BOT_VERSION" == "latest" ]; then
  BOT_VERSION=$VER_DEFAULT
fi

echo -e "Downloading JMusicBot $BOT_VERSION"
if [ ! -f "$ASSET_NAME" ]; then
  wget "$DOWNLOAD_URL"
fi

echo -e "Starting JMusicBot $BOT_VERSION"
java -Dnogui=true -Dconfig=/config/config.txt -jar "$ASSET_NAME"