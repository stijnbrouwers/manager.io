FROM mono:latest
# MAINTAINER <s6s8/Mike>

RUN mkdir /manager /data
WORKDIR /manager

RUN apt-get update \
 && apt-get install -y wget unzip \
 && rm -rf /var/lib/apt/lists/* \
 && wget https://github.com/Manager-io/Manager.zip/releases/download/$(curl --silent "https://api.github.com/repos/Manager-io/Manager.zip/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')/Manager.zip -O /manager/Manager.zip \
 && unzip Manager.zip \
 && rm Manager.zip
CMD mono ManagerServer.exe -port 8080 -path "/data"

VOLUME ["/data"]
EXPOSE 8080
