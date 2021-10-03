FROM mono:latest
# MAINTAINER <s6s8/Mike>

RUN mkdir /manager /data
WORKDIR /manager

RUN apt-get update \
 && apt-get install -y wget unzip \
 && rm -rf /var/lib/apt/lists/*;
RUN wget https://github.com/Manager-io/Manager.zip/releases/download/$(curl --silent "https://api.github.com/repos/Manager-io/Manager.zip/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')/ManagerServer-Linux-x64.zip -O /manager/Manager.zip \
 && unzip Manager.zip \
 && rm Manager.zip
RUN chmod +x ManagerServer
CMD ./ManagerServer -port 8080 -path "/data"

VOLUME ["/data"]
EXPOSE 8080
