## APP
Dockerized http://manager.io

FREE Full-Featured Accounting Software

## RUNNING
```
docker run -d -p 8080:8080 --name Manager --restart=always -v $(pwd)/data:/data s6s8/manager.io:
```

Open your browser http://dockerhost:8080

