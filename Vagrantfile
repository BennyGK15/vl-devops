# -*- mode: ruby -*-
# vi: set ft=ruby :

# DigitalOcean credits
# DO_BOX_URL
# PRIVATE_KEY_PATH
# TOKEN

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
# ##########################
# installation and configuration through Vagrantfile
#Vagrant.configure("2") do |config|
#  config.vm.box = "ubuntu/focal64" # für DO nicht mehr benötigt
#  config.vm.network "forwarded_port", guest: 5000, host: 5000
#  config.vm.provision "shell", inline: <<-SHELL
#    apt-get update
#    apt-get install -y python3-pip
#    python3 -m pip install -r /vagrant/requirements.txt
#    export FLASK_APP=/vagrant/app.py
#    python3 -m flask run --host=0.0.0.0
#  SHELL
#end
# Configuration is made with the ansible playbook
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 5000, host: 8080
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "provisioning/playbook.yaml"
  end