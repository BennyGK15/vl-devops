# How to run this docker-project

## push file from docker-hub
```docker pull benesenwein/devops-python-flask-webapp:latest```

## create docker container
```docker create devops-python-flask-webapp```

## start docker container
```docker container start -i [image id]```

optionally the attribute '-p' can be added to set the application port (by default 5000:5000 is recommended)

