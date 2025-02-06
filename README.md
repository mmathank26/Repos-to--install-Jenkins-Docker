# Jenkins

Script help to install Jenkins on a RHEL vm.

#  Docker

If you are trying to build docker images from jenkins using docker compose please add jnekins use in docker group so that it can access required  files.

sudo usermod -aG docker $USER
