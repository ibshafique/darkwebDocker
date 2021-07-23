# darkwebDocker
Host a website on the Dark Web. A  docker container is connected to the ToR network and is being used as on Onion Service. It's basically a Dark Web website running in a Docker!

**To build the container in x86 Architecture:**

```sh
sudo docker build -t tordocker .
```


**To run the image for testing:**

```sh
sudo docker run \
--name mydarkweb \
-h torr -d tordocker \
-v /docker/torweb/nginx:/var/www/html/ \
--restart unless-stopped
```

**Log into the container with the following:**

```sh
sudo docker exec -it mydarkweb bash
```

**To find out the link of the onion URL:**

```sh
cat /var/lib/tor/hidden_service/hostname
```


**To remove the container:**

```sh
sudo docker rm -fv mydarkweb
```
