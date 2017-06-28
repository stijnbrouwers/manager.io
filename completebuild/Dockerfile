FROM debian:jessie-slim

# MAINTAINER s6s8

# based on dockerfile by Michael Friis <friism@gmail.com>

ENV MONO_VERSION 5.0.1.1

RUN apt-get update \
  && apt-get install -y curl \
  && rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list \
  && apt-get update \
  && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl \
  && rm -rf /var/lib/apt/lists/* /tmp/*

RUN mkdir /manager /data
WORKDIR /manager

RUN curl -O https://mngr.s3.amazonaws.com/ManagerServer.tar.gz \
 && tar -xzf ManagerServer.tar.gz \
 && rm ManagerServer.tar.gz
CMD mono ManagerServer.exe -port 8080 -path "/data"

VOLUME ["/data"]
EXPOSE 8080
