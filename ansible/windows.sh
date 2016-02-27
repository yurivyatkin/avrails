#!/usr/bin/env bash

# Update Repositories
sudo apt-get update

# Install ansible (http://docs.ansible.com/intro_installation.html)
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# Prepare Ansible for local use
cp /vagrant/ansible/inventory.ini /etc/ansible/hosts -f
chmod 666 /etc/ansible/hosts
# cat /vagrant/ansible/files/authorized_keys >> /home/vagrant/.ssh/authorized_keys

# Run Ansible
sudo ansible-playbook /vagrant/ansible/app.yml -e hostname=$1 --connection=local
