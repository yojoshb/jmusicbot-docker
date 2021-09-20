# jmusicbot-docker
docker container for [JMusicBot](https://github.com/jagrosh/MusicBot)

## Usage

### Docker
Usage: `docker run -it -v yourpath/toconfig:/config yojoshb/jmusicbot:latest`

Place your config.txt in `yourpath/toconfig` to map it to the container.

---
### Docker Compose

```bash
---
version: "2"
services:
  musicbot:
    image: yojoshb/jmusicbot
    container_name: musicbot
    volumes:
      - /yourpath/toconfig:/config
    restart: unless-stopped
```

Place your config.txt in `yourpath/toconfig` to map it to the container.
