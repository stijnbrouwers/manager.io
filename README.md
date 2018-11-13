## APP
Dockerized http://manager.io  
FREE Full-Featured Accounting Software

The data stored in a separate data volume container "/data" folder.  
Create data folder, and run:

## RUNNING
#### Simple RUN:
```
$ docker run -d s6s8/manager.io
```
#### Preferred way to RUN:
```
$ docker run -d \
  -p 8080:8080 \
  --name Manager \
  --restart=always \
  -v $(pwd)/data:/data \
  s6s8/manager.io

```

Open your browser http://dockerhost:8080
