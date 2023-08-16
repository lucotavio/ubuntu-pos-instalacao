#!/bin/bash



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
sudo apt install ubuntu-restricted-extras -y

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
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y


## Instalando comando curl
sudo apt install curl -y


## Download Goodls
if [ -e goodls ]
then
    echo "O arquivo  goodls  ja existe"
else
    echo -e "\n\n\n\nDownload Goodls"
    fileId=1157bnfr9MOo2-MgTrltIu5WvGP3faN7K
    fileName=goodls
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

    chmod +x goodls
    sudo cp goodls /usr/local/bin/
fi




## Download Compactador
if [ -e compactar-tar-gz ];then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Compactador-tar-gz"
  goodls -u https://drive.google.com/file/d/1kWXdmTjqzyCpoIFxgB1zctX1msprYEVJ/view?usp=drivesdk

  chmod +x compactar-tar-gz
  sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Descompactar-tar-gz"
  goodls -u https://drive.google.com/file/d/1h3KbeWkbDyBqZCW69FlQo5l3hp5ISJOf/view?usp=drivesdk

  chmod +x descompactar-tar-gz
  sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    goodls -u https://drive.google.com/file/d/1Y_M5XaadEMoN5mkwbfHgB3aQIyS08YcK/view?usp=drivesdk
fi



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ]
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    echo -e "\n\n\n\n Android Studio"
    goodls -u https://drive.google.com/file/d/1Vzqml8ccrXcSZ-QOFhaZH2TGQnHA7-0C/view?usp=drivesdk
fi



## Download Apache Netbeans
if [ -e apache-netbeans_18-1_all.deb ]
then
    echo "O arquivo  apache-netbeans_18-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    goodls -u https://drive.google.com/file/d/1la7Y5_GT3vSB8f9dg9EhcPA9VfQ80lv6/view?usp=drivesdk
fi



## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    goodls -u https://drive.google.com/file/d/1xazxsCtLFbMctp7SgrrWREC-Z8Ky_1u-/view?usp=drivesdk
fi



## Download Balena Etcher
if [ -e balena-etcher_1.18.11_amd64.deb ]
then
    echo "O arquivo  balena-etcher_1.18.11_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    goodls -u https://drive.google.com/file/d/1wTLeIL_PGxMmkukdzGNosQ-vBLhsXuAK/view?usp=drivesdk
fi



## Download Chrome
if [ -e chrome-stable_current_amd64.deb ];then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Chrome"
  goodls -u https://drive.google.com/file/d/119PJ78GXF5hFl2D0yvrR5WTjYDVjBRbY/view?usp=drivesdk
fi



## Download DBeaver
if [ -e dbeaver-le_23.1.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_23.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n DBeaver"
  goodls -u https://drive.google.com/file/d/1rmBnEjP_cxVfuLhNayaWUT1T5zqCBeOP/view?usp=drivesdk
fi



## Download Docker Compose
if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe"
else
  echo -e "\n\n\n\n Docker Compose"
  goodls -u https://drive.google.com/file/d/1cqFtoCJW_jiIvg2uMSH1Ww8iTYzS8N5q/view?usp=drivesdk -e application/x-executable
  chmod +x docker-compose
  sudo cp docker-compose /usr/local/bin/
fi



## Download Dropbox
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Dropbox"
  goodls -u https://drive.google.com/file/d/12CO9lVV40Zmqx7cFb5Lmo3F_-lURqFjF/view?usp=drivesdk
fi



## Download Firefox
if [ -e firefox-116.0.2.deb ];then
    echo "O arquivo  firefox-116.0.2.deb  ja existe"
else
  echo -e "\n\n\n\n Firefox"
  goodls -u https://drive.google.com/file/d/1zWJMssXHj2GFGdvqatsFkp2mUPlhPZQs/view?usp=drivesdk
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
  echo -e "\n\n\n\n GitKraken"
  goodls -u https://drive.google.com/file/d/1i47sx1P0cdtykTXw3aFrZY9t1XMJ2yAC/view?usp=drivesdk
fi



## Download Insomnia
if [ -e Insomnia.Core-2023.4.0.deb ];then
    echo "O arquivo  Insomnia.Core-2023.4.0.deb  ja existe"
else
  echo -e "\n\n\n\n Insomnia"
  goodls -u https://drive.google.com/file/d/1M-6axTc8LNI_66iLwvvY-SyyNTmZ77Ic/view?usp=drivesdk
fi



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
  echo -e "\n\n\n\n Insync"
  goodls -u https://drive.google.com/file/d/15Y8zCGHiXsEntMqTme_0pILFLlRv063Z/view?usp=drivesdk
fi



## Download Intellij Community
if [ -e intellij-community-2023.2.deb ];then
    echo "O arquivo  intellij-community-2023.2.deb ja existe"
else
  echo -e "\n\n\n\n Intellij Community"
  goodls -u https://drive.google.com/file/d/1_GvKUI8e7Htttu0LxJgSl2SdpGCWV-9X/view?usp=drivesdk
fi



## Download Lombok
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
  echo -e "\n\n\n\n Lombok"
  goodls -u https://drive.google.com/file/d/1ZD-QAd5aky-DzDxYUrs9JEsAZS9gul5k/view?usp=drivesdk
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Only Office"
  goodls -u https://drive.google.com/file/d/11Stf18xGX31jm5inMxStUvk0g6VpwuNl/view?usp=drivesdk
fi



## Download Postman
if [ -e postman-10.17.1.deb ];then
    echo "O arquivo  postman-10.17.1.deb  ja existe"
else
  echo -e "\n\n\n\n Postman"
  goodls -u https://drive.google.com/file/d/1_3P-NmeAH-9F35voO1__Niz4lhr_eSx1/view?usp=drivesdk
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.19.1.RELEASE.deb ];then
    echo "O arquivo  spring-tool-suite-4.19.1.RELEASE.deb  ja existe"
else
  echo -e "\n\n\n\n Spring Tool Suite"
  goodls -u https://drive.google.com/file/d/1enbYDfIX9MXXKdKR8g-zm5Gx0uAcCfPL/view?usp=drivesdk
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ];then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n StarUML"
  goodls -u https://drive.google.com/file/d/1LH-IOmVRljnv-J35qQkWQnCwPI2t5r-a/view?usp=drivesdk
fi



## Download Visual Studio Code
if [ -e visual_code_1.81.1-1691620686_amd64.deb ];then
    echo "O arquivo  visual_code_1.81.1-1691620686_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Visual Studio Code"
  goodls -u https://drive.google.com/file/d/15W3wFK2uVHSeUHW4V3HUC2PKS2KrLJUu/view?usp=drivesdk
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ];then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
  echo -e "\n\n\n\n VMware Workstation"
  goodls -u https://drive.google.com/file/d/1M1h1hN4nIG-OqAXoPePEneM-H17yCfIv/view?usp=drivesdk
fi



## Download Waterfox
if [ -e waterfox-G5.1.10.deb ];then
    echo "O arquivo  waterfox-G5.1.10.deb  ja existe"
else
  echo -e "\n\n\n\n Waterfox"
  goodls -u https://drive.google.com/file/d/1dgHPXFJjTo8WkWIzsez5PljYAwD6S5ix/view?usp=drivesdk
fi



## Download Tomcat
if [ -d /home/$USER/Servidores/tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/tomcat-9.0.68  ja existe"
else
  echo -e "\n\n\n\n Tomcat"
  goodls -u https://drive.google.com/file/d/1EqMonKmeOMh3r0eP1c_2UStAN6JWrM49/view?usp=drivesdk

  descompactar-tar-gz tomcat-9.0.68.tar.gz
  cp -r tomcat-9.0.68 /home/$USER/Servidores/
  rm tomcat-9.0.68.tar.gz
fi



## Download Wildfly
if [ -d /home/$USER/Servidores/wildfly-29.0.0.Final ];then
    echo "O diretorio  /home/$USER/Servidores/wildfly-29.0.0.Final  ja existe"
else
  echo -e "\n\n\n\n Wildfly"
  goodls -u https://drive.google.com/file/d/1q8-3vFReU_t6ZZcnvwSPrYNLUUx906BY/view?usp=drivesdk

  descompactar-tar-gz wildfly-29.0.0.Final.tar.gz
  cp -r wildfly-29.0.0.Final /home/$USER/Servidores/
  rm wildfly-29.0.0.Final.tar.gz
fi



## Download Netbeans plugins
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
  echo -e "\n\n\n\n Netbeans Plugins"
  goodls -u https://drive.google.com/file/d/1jl-Dl6DnzUDEDq-XBnfT8MDZRL2vKJJk/view?usp=drivesdk -e tarball

  descompactar-tar-gz netbeans-plugins.tar.gz
  cp -r netbeans-plugins /home/$USER/Instalacao/
  rm netbeans-plugins.tar.gz
fi



#Download Drivers JDBC
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
  echo -e "\n\n\n\n Drivers JDBC"
  goodls -u https://drive.google.com/file/d/1FP1TVh-xppkiwjvQkwMEf5SyY4e6JwJ4/view?usp=drivesdk -e  tarball

  descompactar-tar-gz drivers-JDBC.tar.gz
  cp -r drivers-JDBC /home/$USER/Instalacao/
  rm drivers-JDBC.tar.gz
fi



## Download Wallpapers
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
  echo -e "\n\n\n\n Wallpapers"
  goodls -u https://drive.google.com/file/d/1j8HSlYsw8SwzF3mrZz9sBq8BrVLgGXut/view?usp=drivesdk -e tarball

  descompactar-tar-gz wallpaper.tar.gz
  cp -r wallpaper /home/$USER/Imagens/
  rm wallpaper.tar.gz
fi



## Download tema WhiteSur Dark solid
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
else
  echo -e "\n\n\n\n WhiteSur Dark solid"
  goodls -u https://drive.google.com/file/d/1P5kHLIcFWJHFmvQXhC8aB32SQAYOAOor/view?usp=drivesdk -e tarball

  descompactar-tar-gz WhiteSur-dark-solid.tar.gz
  cp -r WhiteSur-dark-solid /home/$USER/.themes/
  rm WhiteSur-dark-solid.tar.gz
fi



## Download icones Big Sur
if [ -d /home/$USER/.icons/BigSur ];then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
else
  echo -e "\n\n\n\n Big Sur"
  goodls -u https://drive.google.com/file/d/1Xi3d9-NlDfBGA1kUA2_KK_dijD3w0fuS/view?usp=drivesdk -e tarball

  descompactar-tar-gz BigSur.tar.gz
  cp -r BigSur /home/$USER/.icons/
  rm BigSur.tar.gz
fi



## Download icones Deepin
if [ -d /home/$USER/.icons/Deepin ];then
    echo "O diretorio  /home/$USER/.icons/Deepin  ja existe"
else
  echo -e "\n\n\n\n Deepin"
  goodls -u https://drive.google.com/file/d/1K8XnVwkVgPGKEsYjt-Vd5HCYOk0cRALs/view?usp=drivesdk -e tarball

  descompactar-tar-gz Deepin.tar.gz
  cp -r Deepin /home/$USER/.icons/
  rm Deepin.tar.gz
fi



## Download MacMojave cursores
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
else
  echo -e "\n\n\n\n MacMojave cursores"
  goodls -u https://drive.google.com/file/d/1x9KWvR9GudSrvBD6XRex5yfiioGZOn_f/view?usp=drivesdk -e tarball

  descompactar-tar-gz McMojave-cursors.tar.gz
  cp -r McMojave-cursors /home/$USER/.icons/
  rm McMojave-cursors.tar.gz
fi



## Download arquivo Docker compose MySql
if [ -e cd /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml ];then
    echo "O arquuivo Docker Compose do MySql ja existe"
else
  echo -e "\n\n\n\n Docker Compose do MySql"
  goodls -u https://drive.google.com/file/d/1v3gLtg1HF577do4Y9lqdXFN3OItwtBJe/view?usp=drivesdk -e application/x-yaml

  mv /home/$USER/Downloads/Programas/docker-compose.yml /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml
fi


## Download arquivo Docker compose PostgreSQL
if [ -e cd /home/$USER/Instalacao/docker-compose-files/mysql/docker-compose.yml ];then
    echo "O arquuivo Docker Compose do PostgreSQL ja existe"
else
  echo -e "\n\n\n\n Docker Compose do MySql"
  goodls -u https://drive.google.com/file/d/1-jipcIOVVyziuUQ_QjaaTSlW_QN_Cl-L/view?usp=drivesdk -e application/x-yaml

  mv /home/$USER/Downloads/Programas/docker-compose.yml /home/$USER/Instalacao/docker-compose-files/postgres/docker-compose.yml
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

sudo apt update -y
sudo apt install openjdk-17-jdk -y


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
sudo apt install docker.io -y

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************ INSTALANDO  O  DOCKER  COMPOSE  *****************************************************"

chmod +x docker-compose
sudo cp docker-compose /usr/local/bin/

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install android-sdk-platform-tools-common -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando fontes da Microsoft
sudo apt install ttf-mscorefonts-installer -y
sudo fc-cache -f -v

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando o Dconf-editor
sudo apt install dconf-editor -y

## Instalando Spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install spotify-client -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando VirtualBox
sudo apt install virtualbox -y

## Instalando Kotlin
sudo apt-get install kotlin -y

## Instalando SDKMAN
curl -s https://get.sdkman.io | bash

echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt install git -y
git config --global user.name "Luciano"
git config --global user.email "luc.oliveira343@gmail.com"
## git config --global credential.helper store


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install meld -y
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
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

## Instalando Angular CLI
sudo npm install -g  @angular/cli@16.2.0

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
sudo apt install adb -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************INSTALANDO  SUPORTE  A FLATPAK***************************************************************************"

sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd /home/$USER/Instalacao/docker-compose-files/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd /home/$USER/Instalacao/docker-compose-files/postgres/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** DESINSTALANDO  FIREFOX  SNAP  *********************************************************"

sudo snap remove firefox

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
