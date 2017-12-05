FROM mono:latest

# MAINTAINER s6s8/Mike>

RUN mkdir /manager /data
WORKDIR /manager

RUN curl -O https://mngr.s3.amazonaws.com/$(curl -s http://www.manager.io/version.txt)/ManagerServer.tar.gz \
 && tar -xzf ManagerServer.tar.gz \
 && rm ManagerServer.tar.gz
CMD mono ManagerServer.exe -port 8080 -path "/data"

VOLUME ["/data"]
EXPOSE 8080
