#!/bin/bash
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "% ########   #######   ######                                                                            %"
echo "% ##     ## ##     ## ##    ##                                                                           %"
echo "% ##     ## ##     ## ##                                                                                 %"
echo "% ########  ##     ##  ######                                                                            %"
echo "% ##        ##     ##       ##                                                                           %"
echo "% ##        ##     ## ##    ##                                                                           %"
echo "% ##         #######   ######                                                                            %"
echo "%                                                                                                        %"
echo "% #### ##    ##  ######  ########    ###    ##          ###     ######     ###     #######               %"
echo "%  ##  ###   ## ##    ##    ##      ## ##   ##         ## ##   ##    ##   ## ##   ##     ##              %"
echo "%  ##  ####  ## ##          ##     ##   ##  ##        ##   ##  ##        ##   ##  ##     ##              %"
echo "%  ##  ## ## ##  ######     ##    ##     ## ##       ##     ## ##       ##     ## ##     ##              %"
echo "%  ##  ##  ####       ##    ##    ######### ##       ######### ##       ######### ##     ##              %"
echo "%  ##  ##   ### ##    ##    ##    ##     ## ##       ##     ## ##    ## ##     ## ##     ##              %"
echo "% #### ##    ##  ######     ##    ##     ## ######## ##     ##  ######  ##     ##  #######               %"
echo "%                                                                                                        %"
echo "%                                                                                                        %"
echo "%     Instalação dos aplicativos mais usados, padronizando o pós instalação das maquinas.                %"
echo "%     Atualiza o sistema, instala pacotes básicos e ferramentas de desenvolvimento.                      %"
echo "%                                                                                                        %"
echo "%                                                                                                        %"
echo "%     Pressione qualquer tecla para continuar...                                                         %"
echo "%                                                                                                        %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
read X
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%   UPDATING REPOSITORY and PPAs   %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
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
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%          UPDATE FINISH           %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sleep 2
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%     INSTALL ESSENCIAL APPS       %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sudo apt-get -y install net-tools snapd snapd-xdg-open ubuntu-make remminna*
sudo apt-get -y install software-properties-common apt-transport-https wget
sudo apt-get -y install wget ca-certificates
sudo apt-get -y install flatpak
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%  FINISH INSTALL ESSENCIAL APPS   %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sleep 2
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%       INSTALLING DEV TOOLS       %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sudo snap install datagrip --classic
sudo snap install pycharm-community --classic
sudo snap install intellij-idea-community --classic --edge
sudo apt-get -y install sublime-text zsh git git-core mysql-workbench code
sudo apt-get -y install goland-go dbeaver-ce atom awscli filezilla maven python3
sudo apt-get -y install redis openvpn freeradius-utils alien htop curl mtr traceroute
#
#DOCKER
#
sudo apt-get remove docker docker-engine docker.io
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
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
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%     FINISH INSTALL DEV TOOLS     %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sleep 3
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "% ########   #######   ######                                                                            %"
echo "% ##     ## ##     ## ##    ##                                                                           %"
echo "% ##     ## ##     ## ##                                                                                 %"
echo "% ########  ##     ##  ######                                                                            %"
echo "% ##        ##     ##       ##                                                                           %"
echo "% ##        ##     ## ##    ##                                                                           %"
echo "% ##         #######   ######                                                                            %"
echo "%                                                                                                        %"
echo "% #### ##    ##  ######  ########    ###    ##          ###     ######     ###     #######               %"
echo "%  ##  ###   ## ##    ##    ##      ## ##   ##         ## ##   ##    ##   ## ##   ##     ##              %"
echo "%  ##  ####  ## ##          ##     ##   ##  ##        ##   ##  ##        ##   ##  ##     ##              %"
echo "%  ##  ## ## ##  ######     ##    ##     ## ##       ##     ## ##       ##     ## ##     ##              %"
echo "%  ##  ##  ####       ##    ##    ######### ##       ######### ##       ######### ##     ##              %"
echo "%  ##  ##   ### ##    ##    ##    ##     ## ##       ##     ## ##    ## ##     ## ##     ##              %"
echo "% #### ##    ##  ######     ##    ##     ## ######## ##     ##  ######  ##     ##  #######               %"
echo "%                                                                                                        %"
echo "%                                                                                                        %"
echo "%     Instalação concluida, o computador está pronto.                                                    %"
echo "%                                                                                                        %"
echo "%                                                                                                        %"
echo "%                                                                                                        %"
echo "%     Pressione qualquer tecla para sair...                                                              %"
echo "%                                                                                                        %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
read X
clear
