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
sudo add-apt-repository ppa:serge-rider/dbeaver-ce -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository ppa:webupd8team/atom -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository ppa:alexlarsson/flatpak -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository ppa:nilarimogard/webupd8 -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y >> Log-`date +%Y-%m-%d`.txt
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y update >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y upgrade >> Log-`date +%Y-%m-%d`.txt
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%          UPDATE FINISH           %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sleep 2
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%     INSTALL ESSENCIAL APPS       %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sudo apt-get -y install net-tools >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install snapd >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install snapd-xdg-open >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install ubuntu-make >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install software-properties-common apt-transport-https wget >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install wget ca-certificates >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y reminna* >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install flatpak >> Log-`date +%Y-%m-%d`.txt
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%  FINISH INSTALL ESSENCIAL APPS   %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
sleep 2
clear
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%       INSTALLING DEV TOOLS       %"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
#
sudo snap install datagrip --classic >> Log-`date +%Y-%m-%d`.txt
sudo snap install pycharm-community --classic >> Log-`date +%Y-%m-%d`.txt
sudo snap install intellij-idea-community --classic --edge >> Log-`date +%Y-%m-%d`.txt
#
sudo apt-get -y install sublime-text >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install zsh >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install git >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install git-core >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install mysql-workbench >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install code >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install goland-go >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install dbeaver-ce >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install atom >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install awscli >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install filezilla >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install maven >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install python3 >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install redis >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install openvpn >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install freeradius-utils >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install alien >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install htop >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install curl  >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y mtr >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y traceroute >> Log-`date +%Y-%m-%d`.txt
#
#DOCKER
#
sudo apt-get remove docker docker-engine docker.io >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common >> Log-`date +%Y-%m-%d`.txt
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >> Log-`date +%Y-%m-%d`.txt
sudo apt-get update >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y install docker-ce >> Log-`date +%Y-%m-%d`.txt
sudo groupadd docker >> Log-`date +%Y-%m-%d`.txt
sudo usermod -aG docker $USER >> Log-`date +%Y-%m-%d`.txt
#
#GitKraken
#
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb >> Log-`date +%Y-%m-%d`.txt
sudo dpkg -i gitkraken-amd64.deb >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y -f install >> Log-`date +%Y-%m-%d`.txt
sudo dpkg -i gitkraken-amd64.deb >> Log-`date +%Y-%m-%d`.txt
rm -rf gitkraken-amd64.deb >> Log-`date +%Y-%m-%d`.txt
#
#TEAMVIEWER
#
wget http://download.teamviewer.com/download/teamviewer_i386.deb -O teamviewer.deb >> Log-`date +%Y-%m-%d`.txt
sudo dpkg -i teamviewer.deb >> Log-`date +%Y-%m-%d`.txt
sudo apt-get -y -f install >> Log-`date +%Y-%m-%d`.txt
sudo dpkg -i teamviewer.deb >> Log-`date +%Y-%m-%d`.txt
rm -rf teamviewer.deb >> Log-`date +%Y-%m-%d`.txt
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
