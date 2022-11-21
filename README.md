# How to run this docker-project

## push file from docker-hub
```docker pull benesenwein/devops-python-flask-webapp:latest```

## create docker container
```docker create devops-python-flask-webapp```

## start docker container
```docker container start -i [image id]```

optionally the attribute '-p' can be added to set the application port (by default 5000:5000 is recommended)

&nbsp;

---
# Running in VirtualBox
- you have to install VirtualBox
- you have to install vagrant

## start generating a virtualbox image with vagrant
Shell: ```vagrant up```

---
# Deploy application in Azure via Terraform-Script
- make sure you have azure cli installed and you are logged in
- change configuration in main.tf and variables.tf with your own property values

## start deployment
Shell:  ```terraform validate```
        ```terraform plan```
        ```terraform apply``` - apply with 'yes'