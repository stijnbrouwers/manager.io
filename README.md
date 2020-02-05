## APP
Dockerized http://manager.io  
FREE Full-Featured Accounting Software1

The data stored in a separate data volume container "/data" folder.  
Create data folder, and run:

## RUNNING
##### Simple RUN:
```
$ docker run -d s6s8/manager.io
```
##### Preferred way to RUN:
```
$ docker run -d \
  -p 8080:8080 \
  --name Manager \
  --restart=always \
  -v $(pwd)/data:/data \
  s6s8/manager.io

```
Open your browser http://dockerhost:8080
## UPDATING
### WARNING! MAKE SURE TO BACKUP ALL FILES!!!
##### FROM MANAGER:
```
Open the business name -> backup
```
##### DATA FOLDER:
```
If created with /data/ folder, back up to safe location.
```
##### UPDATING:
```
$ docker stop Manager
$ docker rm Manager
$ docker pull s6s8/manager.io

```
Running docker prefered way, should remount the /data/ folder, and all files should be in place. If not, restore from the backup location.
