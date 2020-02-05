FROM mono:latest
# MAINTAINER <s6s8/Mike>

RUN mkdir /manager /data
WORKDIR /manager

RUN wget https://github.com/Manager-io/Manager.zip/releases/latest/download/Manager.zip -O /manager/Manager.zip \
 && unzip Manager.zip \
 && rm ManagerServer.zip
CMD mono ManagerServer.exe -port 8080 -path "/data"

VOLUME ["/data"]
EXPOSE 8080
