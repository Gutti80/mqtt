#!/bin/bash

docker run -v ./config/:/etc/mosquitto/config/ -v ./data/:/etc/mosquitto/data/ -v ./log/:/etc/mosquitto/log -t -i jessie/mqtt:latest 
