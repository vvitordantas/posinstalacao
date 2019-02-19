#! /bin/bash
clear
addrepo=sudo add-apt-repository
instalar=sudo apt-get -y install
snap=sudo snap install
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %___UPDATING REPOSITORY and PPAs___%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
$addrepo ppa:serge-rider/dbeaver-ce -y
$addrepo ppa:webupd8team/atom -y
$addrepo ppa:ubuntu-desktop/ubuntu-make -y
$addrepo ppa:alexlarsson/flatpak -y
$addrepo ppa:nilarimogard/webupd8 -y
$addrepo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
$addrepo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt-get -y update && upgrade
clear
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %__________UPDATE FINISH___________%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause 2
clear
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %_____INSTALL ESSENCIAL APPS_______%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
$instalar net-tools snapd snapd-xdg-open ubuntu-make remminna*
$instalar software-properties-common apt-transport-https wget
$instalar wget ca-certificates
$instalar flatpak
clear
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %__FINISH INSTALL ESSENCIAL APPS___%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause 2
clear
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %______INSTALLING DEV TOOLS________%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
$snap datagrip --classic
$snap pycharm-community --classic
$snap intellij-idea-community --classic --edge
$instalar sublime-text zsh git git-core mysql-workbench code
$instalar goland-go dbeaver-ce atom awscli filezilla maven python3
$instalar redis openvpn freeradius-utils alien htop curl mtr traceroute
#
#DOCKER
#
sudo apt-get remove docker docker-engine docker.io
$instalar apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
#
#GitKraken
#
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get -y -f install
sudo dpkg -i gitkraken-amd64.deb
#
#TEAMVIEWER
#
wget http://download.teamviewer.com/download/teamviewer_i386.deb -O teamviewer.deb
sudo dpkg -i teamviewer.deb
sudo apt-get -y -f install
sudo dpkg -i teamviewer.deb
clear
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo %_____FINISH INSTALL DEV TOOLS_____%
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pause 3
