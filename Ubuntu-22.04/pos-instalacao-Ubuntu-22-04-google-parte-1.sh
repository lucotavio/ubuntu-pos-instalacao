#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir -p /home/$USER/.icons/

## Criando diretorio .themes
mkdir -p /home/$USER/.themes/

## Criando diretorio Temp
mkdir -p /home/$USER/Temp/

## Criando diretorio Servidores
mkdir -p /home/$USER/Servidores/

## Criando diretorio Docker-Compose
mkdir -p /home/$USER/Docker-Compose/

## Criando diretorio do OBS Studio
mkdir -p /home/$USER/Vídeos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir -p /home/$USER/Instalacao/Script/

## Criando diretorio onde vai ficar o arquivo do docker compose do MySql
mkdir -p /home/$USER/Instalacao/docker-compose-files/mysql/

## Criando diretorio onde vai ficar o arquivo do docker compose do PostgreSQL
mkdir -p /home/$USER/Instalacao/docker-compose-files/postgres/

##Criando diretorio Angular dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular-Spring

##Criando diretorio Java dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Java

## Entrando na para pasta de programas
cd /home/$USER/Downloads/Programas/

## Instalar software de terceiros
sudo apt install -y ubuntu-restricted-extras

## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/TXT.txt ];then
    echo "O arquivo  TXT.txt  ja existe"
else
    touch /home/$USER/Modelos/TXT.txt
fi


## Criando modelo de arquivo shell script
if [ -e /home/$USER/Modelos/shell-script.sh ];then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch /home/$USER/Modelos/shell-script.sh
    echo "#!/bin/bash" > /home/$USER/Modelos/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e /home/$USER/Modelos/SQL.sql ];then
    echo "O arquivo  SQL.sql  ja existe"
else
    touch /home/$USER/Modelos/SQL.sql
fi


## Criando modelo de arquivo xml
if [ -e /home/$USER/Modelos/XML.xml ];then
    echo "O arquivo  XML.xml  ja existe"
else
    touch /home/$USER/Modelos/XML.xml
fi


## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install -y sharutils
sudo apt install -y p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress


## Instalando comando curl
sudo apt install -y curl


## Download Compactador
if [ -e compactar-tar-gz ];then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Compactador-tar-gz"
  curl -L -o compactar-tar-gz https://www.dropbox.com/scl/fi/d7k90hf9wbg6ktkusnrkj/compactar-tar-gz?rlkey=63589ewcbxim2ic2qikr8s99i&dl=0

  chmod +x compactar-tar-gz
  sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Descompactar-tar-gz"
  curl -L -o descompactar-tar-gz https://www.dropbox.com/scl/fi/9yu2s8bft2wd4cp1baw5m/descompactar-tar-gz?rlkey=fq3bn68tjyw5qd8x7eljkihxf&dl=0

  chmod +x descompactar-tar-gz
  sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    curl -L -o 4kvideodownloader_4.21.7-1_amd64.deb https://www.dropbox.com/scl/fi/sw2eu0227rspecu5pmual/4kvideodownloader_4.21.7-1_amd64.deb?rlkey=dfl9pyy85nxyhdzzapmgrvl92&dl=0
fi



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ]
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    echo -e "\n\n\n\n Android Studio"
    curl -L -o android-studio-2022.3.1.deb https://www.dropbox.com/scl/fi/mf6q32srkrzeclpvklzs7/android-studio-2022.3.1.deb?rlkey=mqgpxlju6z13yneab7xa39qkp&dl=0
fi



## Download Apache Netbeans
if [ -e apache-netbeans_18-1_all.deb ]
then
    echo "O arquivo  apache-netbeans_18-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    curl -L -o apache-netbeans_18-1_all.deb https://www.dropbox.com/scl/fi/tex4dj3n8uj7ylv2hy3o4/apache-netbeans_18-1_all.deb?rlkey=s2fq766r2ln3tvf73ap2wrus6&dl=0
fi



## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    curl -L -o atom-amd64.deb https://www.dropbox.com/scl/fi/zyujuf0gx07jslngeeb7y/atom-amd64.deb?rlkey=p1xfaul0vpj1324jbe9m9q70r&dl=0
fi



## Download Balena Etcher
if [ -e balena-etcher_1.18.11_amd64.deb ]
then
    echo "O arquivo  balena-etcher_1.18.11_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    curl -L -o balena-etcher_1.18.11_amd64.deb https://www.dropbox.com/scl/fi/agv48klw7x5f9xj77rsnc/balena-etcher_1.18.11_amd64.deb?rlkey=p9e733w5frbehzayvqjzmy7kr&dl=0
fi



## Download Chrome
if [ -e chrome-stable_current_amd64.deb ];then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Chrome"
  curl -L -o chrome-stable_current_amd64.deb https://www.dropbox.com/scl/fi/g2rh0obc91mm3ks2q40bp/chrome-stable_current_amd64.deb?rlkey=3aoflfwa828ytttqvpbl3p5ty&dl=0
fi



## Download DBeaver
if [ -e dbeaver-le_23.1.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_23.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n DBeaver"
  curl -L -o dbeaver-le_23.1.0_amd64.deb https://www.dropbox.com/scl/fi/8c9nrdld9y2jcdeje7y8w/dbeaver-le_23.1.0_amd64.deb?rlkey=tubcnfy1v4ngrs6qx9vqiwype&dl=0
fi



## Download Docker Compose
if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe"
else
  echo -e "\n\n\n\n Docker Compose"
  curl -L -o docker-compose https://www.dropbox.com/scl/fi/4md6qgtogm6rqfw2y2616/docker-compose?rlkey=gq6gg8eof8l4lmq0dppte4wj1&dl=0
fi



## Download Dropbox
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Dropbox"
  curl -L -o dropbox_2020.03.04_amd64.deb https://www.dropbox.com/scl/fi/xjglhnapdbxuse01d2iui/dropbox_2020.03.04_amd64.deb?rlkey=5fpogm4ecnk47gocfje27d1b9&dl=0
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
  echo -e "\n\n\n\n GitKraken"
  curl -L -o gitkraken-amd64.deb https://www.dropbox.com/scl/fi/996uutt1meglik6baii2k/gitkraken-amd64.deb?rlkey=ob4i1xm8i6oc8g83lma72fvbd&dl=0
fi



## Download Insomnia
if [ -e Insomnia.Core-2023.4.0.deb ];then
    echo "O arquivo  Insomnia.Core-2023.4.0.deb  ja existe"
else
  echo -e "\n\n\n\n Insomnia"
  curl -L -o Insomnia.Core-2023.4.0.deb https://www.dropbox.com/scl/fi/h7xtvlsfhtdah3pplp5gn/Insomnia.Core-2023.4.0.deb?rlkey=6a5yw80qc2l91zu20ez1q1cpy&dl=0
fi



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
  echo -e "\n\n\n\n Insync"
  curl -L -o insync_3.8.6.50504-jammy_amd64.deb https://www.dropbox.com/scl/fi/2aogduckfunw0mtr6ri94/insync_3.8.6.50504-jammy_amd64.deb?rlkey=adbcxsnt7ef3b4m7wbp98gl1x&dl=0
fi



## Download Intellij Community
if [ -e intellij-community-2023.2.deb ];then
    echo "O arquivo  intellij-community-2023.2.deb ja existe"
else
  echo -e "\n\n\n\n Intellij Community"
  curl -L -o intellij-community-2023.2.deb https://www.dropbox.com/scl/fi/sm7sjsh0qrjidvl2l30tu/intellij-community-2023.2.deb?rlkey=42og3v3q5d8qqmyb3t2k1xtdo&dl=0
fi



## Download Lombok
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
  echo -e "\n\n\n\n Lombok"
  curl -L -o lombok.jar https://www.dropbox.com/scl/fi/neaq7xcukvkwc2l3dpspz/lombok.jar?rlkey=jfra6fg5s0m3en7z18po9v2xa&dl=0
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Only Office"
  curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/scl/fi/hs31f1ivjoii5cxpz8apy/onlyoffice-desktopeditors_amd64.deb?rlkey=pk2a5oau8g3l00jmiklcii74t&dl=0
fi



## Download Postman
if [ -e postman-10.17.1.deb ];then
    echo "O arquivo  postman-10.17.1.deb  ja existe"
else
  echo -e "\n\n\n\n Postman"
  curl -L -o postman-10.17.1.deb https://www.dropbox.com/scl/fi/u3tftai62fp354ror3nis/postman-10.17.1.deb?rlkey=l6wkuijjwujonk9dhrftfranp&dl=0
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.19.1.RELEASE.deb ];then
    echo "O arquivo  spring-tool-suite-4.19.1.RELEASE.deb  ja existe"
else
  echo -e "\n\n\n\n Spring Tool Suite"
  curl -L -o spring-tool-suite-4.19.1.RELEASE.deb https://www.dropbox.com/scl/fi/u023zwdap3qm0ehogn2yd/spring-tool-suite-4.19.1.RELEASE.deb?rlkey=c15vdq3ztql2ce1nh5e01bevj&dl=0
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ];then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n StarUML"
  curl -L -o StarUML_5.1.0_amd64.deb https://www.dropbox.com/scl/fi/eo7hrf8h5nld6z05vhgua/StarUML_5.1.0_amd64.deb?rlkey=zopg6yl2omjy93ac1aue73xog&dl=0
fi



## Download Visual Studio Code
if [ -e visual_code_1.81.1-1691620686_amd64.deb ];then
    echo "O arquivo  visual_code_1.81.1-1691620686_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Visual Studio Code"
  curl -L -o visual_code_1.81.1-1691620686_amd64.deb https://www.dropbox.com/scl/fi/pqneijolnboxzqwalhoro/visual_code_1.81.1-1691620686_amd64.deb?rlkey=15pdwcaw4zklavtq9bleyqssn&dl=0
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ];then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
  echo -e "\n\n\n\n VMware Workstation"
  curl -L -o VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle https://www.dropbox.com/scl/fi/f6j0c1iu7duqjpbyqz2im/VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle?rlkey=9ckvhlsfy086s3f8o3bx523nu&dl=0
fi



## Download Waterfox
if [ -e waterfox-G5.1.10.deb ];then
    echo "O arquivo  waterfox-G5.1.10.deb  ja existe"
else
  echo -e "\n\n\n\n Waterfox"
  curl -L -o waterfox-G5.1.10.deb https://www.dropbox.com/scl/fi/6hwa2b6j7bgqa9xg6g1xv/waterfox-G5.1.10.deb?rlkey=115tr1yfdq54x3t1arh4b3cev&dl=0
fi



## Download Tomcat
if [ -d /home/$USER/Servidores/tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/tomcat-9.0.68  ja existe"
else
  echo -e "\n\n\n\n Tomcat"
  curl -L -o tomcat-9.0.68.tar.gz https://www.dropbox.com/scl/fi/tten8hb98flun4h3d6lrn/tomcat-9.0.68.tar.gz?rlkey=ypk0vnqui3ptmrhd61rs9twuw&dl=0

  descompactar-tar-gz tomcat-9.0.68.tar.gz
  cp -r tomcat-9.0.68 /home/$USER/Servidores/
  rm tomcat-9.0.68.tar.gz
fi



## Download Wildfly
if [ -d /home/$USER/Servidores/wildfly-29.0.0.Final ];then
    echo "O diretorio  /home/$USER/Servidores/wildfly-29.0.0.Final  ja existe"
else
  echo -e "\n\n\n\n Wildfly"
  curl -L -o wildfly-29.0.0.Final.tar.gz https://www.dropbox.com/scl/fi/kp4r86ckqroli8dbrxxms/wildfly-29.0.0.Final.tar.gz?rlkey=fkadhixit28q6n7imrtkg2ql9&dl=0

  descompactar-tar-gz wildfly-29.0.0.Final.tar.gz
  cp -r wildfly-29.0.0.Final /home/$USER/Servidores/
  rm wildfly-29.0.0.Final.tar.gz
fi



## Download Netbeans plugins
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
  echo -e "\n\n\n\n Netbeans Plugins"
  curl -L -o netbeans-plugins.tar.gz https://www.dropbox.com/scl/fi/qi0gc5p9zwa0m8xrgu3ho/netbeans-plugins.tar.gz?rlkey=8jh276kug9220n8n0qx8kyl77&dl=0

  descompactar-tar-gz netbeans-plugins.tar.gz
  cp -r netbeans-plugins /home/$USER/Instalacao/
  rm netbeans-plugins.tar.gz
fi



#Download Drivers JDBC
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
  echo -e "\n\n\n\n Drivers JDBC"
  curl -L -o drivers-JDBC.tar.gz https://www.dropbox.com/scl/fi/0kjrweecumqmf67nz00yp/drivers-JDBC.tar.gz?rlkey=fgog9cr3dojcf58vx3xsgpp21&dl=0

  descompactar-tar-gz drivers-JDBC.tar.gz
  cp -r drivers-JDBC /home/$USER/Instalacao/
  rm drivers-JDBC.tar.gz
fi



## Download Wallpapers
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
  echo -e "\n\n\n\n Wallpapers"
  curl -L -o wallpaper.tar.gz https://www.dropbox.com/scl/fi/6h2hn3soxnc2pgr47d083/wallpaper.tar.gz?rlkey=lttxhbfyndz4qixdoi8zcqlbb&dl=0

  descompactar-tar-gz wallpaper.tar.gz
  cp -r wallpaper /home/$USER/Imagens/
  rm wallpaper.tar.gz
fi



## Download tema WhiteSur Dark solid
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
else
  echo -e "\n\n\n\n WhiteSur Dark solid"
  curl -L -o WhiteSur-dark-solid.tar.gz https://www.dropbox.com/scl/fi/9cgw5ayyx9mmnlw640lbk/WhiteSur-dark-solid.tar.gz?rlkey=9jmioj4noijqulim1kdhv5d85&dl=0

  descompactar-tar-gz WhiteSur-dark-solid.tar.gz
  cp -r WhiteSur-dark-solid /home/$USER/.themes/
  rm WhiteSur-dark-solid.tar.gz
fi



## Download icones Big Sur
if [ -d /home/$USER/.icons/BigSur ];then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
else
  echo -e "\n\n\n\n Big Sur"
  curl -L -o BigSur.tar.gz https://www.dropbox.com/scl/fi/2wvx6y84mh43dhk3159z3/BigSur.tar.gz?rlkey=4vig7m32fkixv3m9gy3xa12ck&dl=0

  descompactar-tar-gz BigSur.tar.gz
  cp -r BigSur /home/$USER/.icons/
  rm BigSur.tar.gz
fi



## Download icones Deepin
if [ -d /home/$USER/.icons/Deepin ];then
    echo "O diretorio  /home/$USER/.icons/Deepin  ja existe"
else
  echo -e "\n\n\n\n Deepin"
  curl -L -o Deepin.tar.gz https://www.dropbox.com/scl/fi/fzn51ofgbeg8daeyfvlz2/Deepin.tar.gz?rlkey=8hdt3259jql0n1tsx1ubo1h26&dl=0

  descompactar-tar-gz Deepin.tar.gz
  cp -r Deepin /home/$USER/.icons/
  rm Deepin.tar.gz
fi



## Download MacMojave cursores
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
else
  echo -e "\n\n\n\n MacMojave cursores"
  curl -L -o McMojave-cursors.tar.gz https://www.dropbox.com/scl/fi/djoiyo8jvq4wfzr38qkcj/McMojave-cursors.tar.gz?rlkey=did69bilywzavhfqov0zdjxbi&dl=0

  descompactar-tar-gz McMojave-cursors.tar.gz
  cp -r McMojave-cursors /home/$USER/.icons/
  rm McMojave-cursors.tar.gz
fi



## Download arquivo Docker compose MySql
if [ -e cd /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml ];then
    echo "O arquuivo Docker Compose do MySql ja existe"
else
  echo -e "\n\n\n\n Docker Compose do MySql"
  curl -L -o docker-compose.yml https://www.dropbox.com/scl/fi/u4d118rodk404xotvas5w/docker-compose.yml?rlkey=nx0ckyinnpyvnzdef8kkcf4y6&dl=0

  mv /home/$USER/Downloads/Programas/docker-compose.yml /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml
fi


## Download arquivo Docker compose PostgreSQL
if [ -e cd /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml ];then
    echo "O arquuivo Docker Compose do PostgreSQL ja existe"
else
  echo -e "\n\n\n\n Docker Compose do MySql"
  curl -L -o docker-compose.yml https://www.dropbox.com/scl/fi/mg8doj3yedrp208a0ni60/docker-compose.yml?rlkey=z9kt0oeh607d4xar5x5rr6exe&dl=0

  mv /home/$USER/Downloads/Programas/docker-compose.yml /home/$USER/Instalacao/docker-compose-files/postgres/docker-compose.yml
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

sudo apt update -y
sudo apt install -y openjdk-17-jdk -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 2
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
source /home/$USER/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**********************************************INSTALANDO  O  MAVEN *******************************************************************"

sudo apt update -y
sudo apt install maven -y


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/usr/share/maven" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    ## Espaco em branco
    echo "" >> /home/$USER/.bashrc
    echo "export MAVEN_HOME=/usr/share/maven" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /home/$USER/.bashrc
fi


## Usando o comando source para executar o arquivo .bashrc
source /home/$USER/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************** INSTALANDO  O  DOCKER  **********************************************************"

## Atualizando os repositorios
sudo apt update -y

## Instalando o Docker
sudo apt install -y docker.io

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************ INSTALANDO  O  DOCKER  COMPOSE  *****************************************************"

chmod +x docker-compose
sudo cp docker-compose /usr/local/bin/

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install -y android-sdk-platform-tools-common

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte firecode
sudo apt install -y fonts-firacode

## Instalando Hardinfo
sudo apt install -y hardinfo

## Instalando fontes da Microsoft
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v

## Instalando gcc g++
sudo apt install -y gcc g++ make

## Instalando o Transmission
sudo apt install -y transmission

## Intalando Gnome tweaks tools
sudo apt install -y gnome-tweaks

## Instalando net-tools
sudo apt install -y net-tools

## Instalando libglib2.0-dev
sudo apt install -y libglib2.0-dev

## Instalando libgconf-2-4
sudo apt install -y libgconf-2-4

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install -y libfuse2

## Instalando VLC
sudo apt install -y vlc

## Instalando Browser Epiphany
sudo apt install -y epiphany-browser

## Instalando Gnome extensions
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

## Instalando o gerenciador de extensões
sudo apt install -y gnome-shell-extension-manager

## Instalando Kolourpaint
sudo apt install -y kolourpaint

## Instalando o Dconf-editor
sudo apt install -y dconf-editor

## Instalando Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install spotify-client -y

## Instalando Gparted
sudo apt install -y gparted

## Instalando VirtualBox
sudo apt install -y virtualbox

## Instalando Kotlin
sudo apt-get -y install kotlin

## Instalando SDKMAN
curl -s https://get.sdkman.io | bash

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt install -y git
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install -y meld
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************ INSTALANDO  NODE, ANGULAR CLI, TYPESCRIPT, VUE.JS, VUEL CLI E QUASAR ****************************************"

#Atualizando indices de repositorio
sudo apt update -y

## aumentando o numero de arquivos que o sistema pode monitorar
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf

## Instalando Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

## Instalando Angular CLI
sudo npm install -g  @angular/cli@15.2.2

## Instalando Typescript
sudo npm install -g typescript

## Instalando Vue.js
sudo npm install vue

## Instalando Vue CLI
sudo npm install -g @vue/cli

## Instalando o Quasar
sudo npm i -g @quasar/cli

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install -y adb
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install -y qemu-kvm
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK***************************************************************************"

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd /home/$USER/Instalacao/docker-compose-files/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd /home/$USER/Instalacao/docker-compose-files/postgres/
sudo docker-compose up -d

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
