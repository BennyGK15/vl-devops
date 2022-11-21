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
- make sure you have terraform installed (Windows - recommended through chocolatey)
  - make sure to install it like ```choco install terraform -y```
  - the flag '-y' allows your machine to execute a ps1 file after installation to ensure terraform is installed corretly 
- change configuration in main.tf and variables.tf with your own property values

## start deployment
Shell:  ''```terraform validate```''

Shell:  ''```terraform plan```''

Shell:  ''```terraform apply```'' - apply with 'yes'

### Note: the regions variable can be found in variables.tf