# JMusicBot Docker
[![Release](https://img.shields.io/github/release/jagrosh/MusicBot?color=g&style=for-the-badge)](https://github.com/jagrosh/MusicBot/releases/latest)
[![Docker Pulls](https://img.shields.io/docker/pulls/yojoshb/jmusicbot?style=for-the-badge)](https://hub.docker.com/r/yojoshb/jmusicbot)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yojoshb/jmusicbot/latest?color=blueviolet&style=for-the-badge)](https://hub.docker.com/r/yojoshb/jmusicbot)

Docker container for [JMusicBot](https://github.com/jagrosh/MusicBot). This uses the latest Minideb image for a small footprint.

## Usage
Place your **config.txt** in `yourpath/toconfig` to map it to the container. The config folder will also contain the `Playlists` directory and `serversettings.json` if it exists. If you need to access the container you can hop into it and get a shell using:

```bash
docker exec -it jmusicbot /bin/sh
```

---

### Docker CLI
```bash
docker run -dt \  
  --name=jmusicbot \  
  -v /yourpath/toconfig:/config \
  --restart=unless-stopped \
  yojoshb/jmusicbot
```

### Docker Compose

```bash
---
version: "2"
services:
  jmusicbot:
    image: yojoshb/jmusicbot
    container_name: jmusicbot
    volumes:
      - /yourpath/toconfig:/config
    restart: unless-stopped
```
