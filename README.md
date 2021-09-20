# jmusicbot-docker
docker container for [JMusicBot](https://github.com/jagrosh/MusicBot). This uses the latest Alpine image for a small footprint.

## Usage

### Docker
```bash
docker run -dt \  
  --name=jmusicbot \  
  -v /yourpath/toconfig:/config \
  --restart=unless-stopped \
  yojoshb/jmusicbot
```

Place your config.txt in `yourpath/toconfig` to map it to the container.

---
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

Place your config.txt in `yourpath/toconfig` to map it to the container.
