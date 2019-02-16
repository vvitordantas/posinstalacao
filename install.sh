#! /bin/bash
clear
echo ************************************
echo *   UPDATING REPOSITORY and PPAs   *
echo ************************************
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt-get -y update
sudo apt-get -y upgrade
clear
echo ************************************
echo *          UPDATE FINISH           *
echo ************************************
pause 2

clear
echo ************************************
echo *     INSTALL ESSENCIAL APPS       *
echo ************************************
sudo apt-get -y install net-tools
sudo apt-get -y install snapd
sudo apt-get -y install snapd-xdg-open
sudo apt-get -y install ubuntu-make
sudo apt-get -y install software-properties-common apt-transport-https wget
sudo apt-get -y install wget ca-certificates
sudo apt-get -y install flatpak
clear
echo ************************************
echo *  FINISH INSTALL ESSENCIAL APPS   *
echo ************************************
pause 2

clear
echo ************************************
echo *      INSTALLING DEV TOOLS        *
echo ************************************
sudo snap install datagrip --classic
sudo snap install pycharm-community --classic
sudo snap install intellij-idea-community --classic --edge
sudo apt-get -y install sublime-text
sudo apt-get -y install zsh
sudo apt-get -y install git
sudo apt-get -y install git-core
sudo apt-get -y install mysql-workbench
sudo apt-get -y install code
sudo apt-get -y install goland-go
sudo apt-get -y install dbeaver-ce
sudo apt-get -y install atom
sudo apt-get -y install awscli
sudo apt-get -y install filezilla
sudo apt-get -y install maven
sudo apt-get -y install python3
sudo apt-get -y install redis
sudo apt-get -y install openvpn
sudo apt-get -y install freeradius-utils
sudo apt-get -y install alien
sudo apt-get -y install htop
sudo apt-get -y install curl
sudo apt-get -y install mtr
sudo apt-get -y install traceroute
#
#DOCKER
#
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
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
echo ************************************
echo *    FINISH INSTALL DEV TOOLS      *
echo ************************************
pause 2
