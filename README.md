# manager
manager.io

#running manager
```
docker run -d -p 8080:8080 --name Manager --restart=always -v $(pwd)/data:/data s6s8/manager
```

Open your browser http://dockerhost:8080

### Docker:</br>
login:</br>
`docker login --username=yourhubusername` </br>
images:</br>
`docker images`</br>
change tag:</br>
`docker tag bb38976d03cf s6s8/manager:latest`</br>
push:</br>
`docker push s6s8/mono:latest`

### Manager Version:</br>
`https://www.manager.io/desktop/download/`</br>
`wget https://mngr.s3.amazonaws.com/17.12.3/ManagerServer.tar.gz`
