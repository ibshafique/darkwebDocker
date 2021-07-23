FROM ubuntu:20.04
#making an environment variable for timezone required
#for nginx setup
ENV TZ=Asia/Dhaka

COPY service_start.sh /service_start.sh

RUN apt-get update && apt-get -y dist-upgrade &&\
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&\ 
    echo $TZ > /etc/timezone &&\
    apt-get install -y tor nginx nano &&\
    chmod +x /service_start.sh

COPY torrc /etc/tor/torrc
COPY nginx.conf /etc/nginx/nginx.conf
#CMD ["sh", "/service_start.sh"]

ENTRYPOINT "/service_start.sh" && sleep infinity