# JMusicBot Docker
[![Release](https://img.shields.io/github/release/jagrosh/MusicBot?color=g&style=for-the-badge)](https://github.com/jagrosh/MusicBot/releases/latest)
[![Docker Hub Pulls](https://img.shields.io/docker/pulls/yojoshb/jmusicbot?color=blue&style=for-the-badge)](https://hub.docker.com/r/yojoshb/jmusicbot)
![Supports amd64 Architecture](https://img.shields.io/badge/amd64-yes-blueviolet.svg?style=for-the-badge)
![Supports arm64 Architecture](https://img.shields.io/badge/arm64-yes-blueviolet.svg?style=for-the-badge)

Docker container for the latest version of [JMusicBot](https://github.com/jagrosh/MusicBot)

## Usage
Place your **config.txt**, **Playlists** folder, and **serversettings.json** file (if you have one) in `yourpath/toconfig` to map it to the container. If you need to access the container you can hop into it and get a shell using:

```bash
docker exec -it jmusicbot /bin/bash
```

---

### Docker CLI
```bash
docker run -dit \  
  --name=jmusicbot \  
  -v /yourpath/toconfig:/config \
  --restart=unless-stopped \
  ghcr.io/yojoshb/jmusicbot-docker
```

### Docker Compose

```bash
---
version: "3"
services:
  jmusicbot:
    image: ghcr.io/yojoshb/jmusicbot-docker
    container_name: jmusicbot
    volumes:
      - /yourpath/toconfig:/config
    restart: unless-stopped
```
