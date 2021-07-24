FROM ubuntu:20.04
#making an environment variable for timezone required for nginx setup
ENV TZ=Asia/Dhaka
#copying a startup script
COPY service_start.sh /service_start.sh

RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade &&\
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&\ 
    echo $TZ > /etc/timezone &&\
    apt-get install -y tor nginx nano &&\
    chmod +x /service_start.sh

#copying tor and nginx config files
COPY torrc /etc/tor/torrc
COPY nginx.conf /etc/nginx/nginx.conf

#starting the container with service_start.sh shell script
ENTRYPOINT "/service_start.sh" && sleep infinity
