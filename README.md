Ansible-provisioned Vagrant box for Ruby on Rails applications development
===

** What is AVRails? **

This is a Vagrant file with Ansible provisioning scripts which provides a template development environment for Ruby on Rails Web applications.

It will check if Ansible is installed on the host machine, and if it is not, Ansible will be installed and run on the target machine.

** Prerequisites **

The host machine must have the following installed:

- Vagrant
- VirtualBox

** What will be installed on the target machine?: **

- NodeJS
- RVM
- Ruby
- Rails

** Credits **
Used some ideas learned from the following sources.
- https://github.com/jweissig/episode-45
- https://github.com/radar/ansible-rails-app
- http://phansible.com/
- https://gorails.com/setup/ubuntu/14.04
- https://github.com/toast38coza/toast38coza.railserver
- https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
- http://www.hostingadvice.com/how-to/install-nodejs-ubuntu-14-04/
"# avrails" 
