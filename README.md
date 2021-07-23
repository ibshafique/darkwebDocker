# darkwebDocker
Host a website on the Dark Web. A  docker container is connected to the ToR network and is being used as on Onion Service. It's basically a Dark Web website running in a Docker!

**For local testing:**
```sh
sudo docker build -t tordocker .
```

**To run the image for testing:**

```sh
sudo docker run \
--name mydarkweb \
-h torr -d mytw \
-v /docker/torweb/nginx:/var/www/html/ \
--restart unless-stopped
```

```sh
sudo docker exec -it mydarkweb bash
```

sudo docker rm -fv mydarkweb
