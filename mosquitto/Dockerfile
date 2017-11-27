FROM debian:jessie
MAINTAINER Georg Guttmann

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl sudo nano

# add Mosquitto repository key
RUN curl http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key | apt-key add -

# add repository to sources.list.d
RUN curl http://repo.mosquitto.org/debian/mosquitto-jessie.list > /etc/apt/sources.list.d/mosquitto-jessie.list
RUN apt-get update -y

# finally install 
RUN apt-get install -y --no-install-recommends mosquitto mosquitto-clients

WORKDIR /etc/mosquitto

# add a user
RUN adduser --system --disabled-password --disabled-login mosquitto
USER mosquitto



# expose ports (normal unencrypted, TLS encrypted, WS encrypted)
EXPOSE 1883 8883 8080

# start mosquitto as main process
CMD ["mosquitto", "-c", "/etc/mosquitto/config/mosquitto.conf"]
