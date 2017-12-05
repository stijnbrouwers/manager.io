# manager
manager.io

#running manager
```
docker run -d -p 8080:8080 --name Manager -v $(pwd)/data:/data s6s8/manager
```

Open your browser http://dockerhost:8080

Docker:
login:
`docker login --username=yourhubusername`
images:
`docker images`
