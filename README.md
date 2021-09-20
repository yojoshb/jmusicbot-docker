# jmusicbot-docker
docker container for [JMusicBot](https://github.com/jagrosh/MusicBot). This uses the latest Alpine image for a small footprint.

## Usage
Place your **config.txt** in `yourpath/toconfig` to map it to the container. If you need to access the `serversettings.json` file, you can hop into the container to access it

```bash
docker exec -it jmusicbot /bin/sh
```

### Docker CLI
```bash
docker run -dt \  
  --name=jmusicbot \  
  -v /yourpath/toconfig:/config \
  --restart=unless-stopped \
  yojoshb/jmusicbot
```
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
