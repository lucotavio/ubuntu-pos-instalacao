#!/bin/bash


## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir /home/$USER/Downloads/Programas/

## Criando diretorio .icons
mkdir /home/$USER/.icons/

## Criando diretorio .themes
mkdir /home/$USER/.themes/

## Criando diretorio Temp
mkdir /home/$USER/Temp/

## Criando diretorio Servidores
mkdir /home/$USER/Servidores/

## Criando diretorio Docker-Compose
mkdir /home/$USER/Docker-Compose/

## Criando diretorio do OBS Studio
mkdir /home/$USER/Vídeos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p /home/$USER/Instalacao/ISO/

## Criando diretorio Script dentro da pasta InstalacaoF/usr/-
mkdir /home/$USER/Instalacao/Script/

##Criando diretorio Angular dentro do diretorio Projetos
mkdir -p /home/$USER/Projetos/Angular

##Criando diretorio Angular-Spring dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Angular-Spring

##Criando diretorio Java dentro do diretorio Projetos
mkdir /home/$USER/Projetos/Java

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


## Instalando o Megatools do Mega
sudo apt update -y
sudo apt install megatools -y


## Download Compactador
if [ -e compactar-tar-gz ]
then
    echo "O arquivo  compactar-tar-gz  ja existe"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    megadl 'https://mega.nz/file/KQ9SURRT#wZKDjEkztjJgA30o2t3awXfMRGWSxf33Vpt_0Yxye3I'
    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi


## Download Descompactador
if [ -e descompactar-tar-gz ]
then
    echo "O arquivo  descompactar-tar-gz  ja existe"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    megadl 'https://mega.nz/file/ecFCwIpa#v1hTZuPHT8zoCKvNaBqltIzGl-LK311BgloUlPk6PGI'
    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi


## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/nQF1TJgB#3GPVaUZUEYcLLXoHlZQrMru185df3ctIVbMpTzF_cg0'
fi


## Download Android Studio
if [ -e android-studio-2022.3.1.deb ]
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    megadl 'https://mega.nz/file/nUtUCBAa#EUcMsSXbWmJhr4sh7_9d7b9ArEj0ELvXQY5XDYxbybE'
fi


## Download Apache Netbeans
if [ -e apache-netbeans_18-1_all.deb ]
then
    echo "O arquivo  apache-netbeans_18-1_all.deb  ja existe"
else
    megadl 'https://mega.nz/file/DRFGHTrC#OK5PjIxbdmKe8-MQPexs7wACZ6HaX-ZkE0YowxsWrHM'
fi


## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/Oc9iDDgJ#ezvpe2JBT9OcJtCM4ePVqhqpFNEn7ixUYEnM4tKyQqY'
fi


## Download Balena Etcher
if [ -e balena-etcher-1.14.3.deb ]
then
    echo "O arquivo  balena-etcher-1.14.3.deb  ja existe"
else
    megadl 'https://mega.nz/file/rINzxDrR#5O0e2VCgt-sjjtwD3530cWLTMXzXavoeMgaFIGrFK3o'
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/eF0ylR4I#2Ehgtq7U7Co3In5Bfieyvho6wmpjX16zsL1OKq7JgaI'
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/qc8zmJYC#XfYY7J3LAiPRCun6RE970pRa1mqza5O0jepPGGumo-I'
fi


## Download Docker Compose
echo -e "\n\n\n Docker Compose"
if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe"
else
    megadl 'https://mega.nz/file/yUFwSIBK#6UjXZPnQM3e98TS4nliZjqKdmpQBcaPwQjE-ye9l0rA'
fi


## Download Dropbox
echo -e "\n\n\n Dropbox"
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/DVdyCIQR#2hgvQXNU5JBdbGtsZgHNnX-z5kRGbhzuafBrTVpjI4g'
fi


## Download Insomnia
echo -e "\n\n\n Insomnia"
if [ -e Insomnia.Core-2022.6.0.deb ];then
    echo "O arquivo  Insomnia.Core-2022.6.0.deb  ja existe"
else
    megadl 'https://mega.nz/file/nRkHCYpS#wCt1-hqgxIWuAoxbkHPkJuo_mB1WGIgpWNwUTfxYYWE'
fi


## Download Insync
echo -e "\n\n\n Insync"
if [ -e insync_3.8.4.50481-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.4.50481-jammy_amd64.deb ja existe"
else
    megadl 'https://mega.nz/file/XRV0EAKK#Vgq9b3xQO8-yFrgiLnIQbeRJNJwxIKdhLRKvucTtbhg'
fi


## Download Intellij Community
echo -e "\n\n\n Intellij Community"
if [ -e intellij-community.deb ];then
    echo "O arquivo  intellij-community.deb ja existe"
else
    megadl 'https://mega.nz/file/iIEXgIxa#m4DHZOPJeVqIhLQ292d4FjG3sJYGTT01wk9YEsXuzig'
fi


## Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    megadl 'https://mega.nz/file/rU0hACCC#CKTAmKnK6fVAgbJy37XUwTH1i1Sb5H04-xifYXx5aD4'
fi


## Download MegaSync
echo -e "\n\n\n MegaSync"
if [ -e megasync-xUbuntu_22.04_amd64.deb ];then
    echo "O arquivo  megasync-xUbuntu_22.04_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/XJUQWI5C#hgqezFXaIpIBVCmTBJi2u5Kjd4gpgfOSct-Qhj98L_c'
fi


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/jVt20RSb#ZT5cnIFNz0GpV4qQfEGgSD8NhQSqY1IsJTG6_Ee0-wg'
fi


## Download Postman
echo -e "\n\n\n Postman"
if [ -e postman-10.11.2.deb ];then
    echo "O arquivo  postman-10.11.2.deb  ja existe"
else
    megadl 'https://mega.nz/file/TRE2wACb#XqxR37McXGcJaghOiSa081s3rdCh4xTn24gx0EsTqDc'
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.17.2.RELEASE.deb ];then
    echo "O arquivo  sts-4.17.2.RELEASE.deb  ja existe"
else
    megadl 'https://mega.nz/file/3QMRGYwC#B__-m3cygl1b8fo4eQn5goKxOtWBKAUvKg_oALb7q6U'
fi


## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML_5.0.2_amd64.deb ];then
    echo "O arquivo  StarUML_5.0.2_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/3d0C0LAI#yxmSieGE3UqLh2MqDhh7aYy6x-_VvmSWaJ0qgOOnnVU'
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.74.2-1671533413_amd64.deb ];then
    echo "O arquivo  code_1.74.2-1671533413_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/2ZME3QZA#1TqKTtZHIPboaWs13sy46iKNVI3-LZgeO0LJYDNBuEk'
fi


## Download VMware player
echo -e "\n\n\n VMware player"
if [ -e VMware-Player-Full-17.0.0-20800274.x86_64.bundle ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    megadl 'https://mega.nz/file/7R9CSDDQ#rsOS2kO5LFJeaiZ-rlFk7lpc5KQVVFIqvlZKYeOYHlY'
fi


## Download VMware player icon
echo -e "\n\n\n VMware player icon"
if [ -e vmware.png ];then
    echo "O arquivo  vmware.png  ja existe"
else
    megadl 'https://mega.nz/file/LdMjlSLR#CLKUj70Klt1CzFbZhZVL4f-BdOPpS-FzuCbx4aikxdg'
fi


## Download Waterfox
echo -e "\n\n\n Waterfox"
if [ -e waterfox-G5.1.3.deb ];then
    echo "O arquivo  waterfox-G5.1.3.deb  ja existe"
else
    megadl 'https://mega.nz/file/KJNzHTBD#UPh8zaXHT3JMXs8e_NXlFLWVawSxe6da2vJ3952_g8c'
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servidores/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
elif [ -d apache-tomcat-9.0.68 ];then
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    echo -e "\n\n O diretorio  apache-tomcat-9.0.68 foi copiado"
else
    megadl 'https://mega.nz/file/fYdGQBQR#gag3cGcqu13CK5ug5vDlR7FtX8K6uM_W_hw6_Mtgye0'
    descompactar-tar-gz apache-tomcat-9.0.68.tar.gz
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    rm apache-tomcat-9.0.68.tar.gz
fi


## Download Wildfly
echo -e "\n\n\n Wildfly"
if [ -d /home/$USER/Servidores/wildfly-26.1.2.Final ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
elif [ -d wildfly-26.1.2.Final ];then
    cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
    echo -e "\n\n O diretorio  wildfly-26.1.2.Final  foi copiado"
else
  megadl 'https://mega.nz/file/7cFFnB4I#z3Nmc05s5hT3uGHPKQyE4HuKs8V9785M-wcgHHW90ts'
  descompactar-tar-gz wildfly-26.1.2.Final.tar.gz
  cp -r wildfly-26.1.2.Final /home/$USER/Servidores/
  rm wildfly-26.1.2.Final.tar.gz
fi


## Download Netbeans plugins
echo -e "\n\n\n Netbeans plugins"
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
elif [ -d netbeans-plugins ];then
    cp -r netbeans-plugins /home/$USER/Instalacao/
    echo -e "\n\n O diretorio  netbeans-plugins  foi copiado"
else
    megadl 'https://mega.nz/file/TB8FXJ6R#fripjkUaezmmy2QB_axhxVYTFmQS6OrFad3vgN9BiwU'
    descompactar-tar-gz netbeans-plugins.tar.gz
    cp -r netbeans-plugins /home/$USER/Instalacao/
    rm netbeans-plugins.tar.gz
fi


#Download Drivers JDBC
echo -e "\n\n\n Drivers JDBC"
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
elif [ -d drivers-JDBC ];then
    cp -r drivers-JDBC /home/$USER/Instalacao/
    echo -e "\n\n O diretorio  drivers-JDBC  foi copiado"
else
    megadl 'https://mega.nz/file/yVVnmC7Q#jv2UV7QEeIC3-veZGzjdMhg10bMkz5RiJHSW5Unnw_g'
    descompactar-tar-gz drivers-JDBC.tar.gz
    cp -r drivers-JDBC /home/$USER/Instalacao/
    rm drivers-JDBC.tar.gz
fi


## Download Wallpapers
echo -e "\n\n\n Wallpapers"
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
elif [ -d wallpaper ];then
    cp -r wallpaper /home/$USER/Imagens/
    echo -e "\n\n O diretorio  wallpaper  foi copiado"
else
    megadl 'https://mega.nz/file/uYVSQCwa#pU-0OIGqjtL1vSgIHPMcZGOMsi6gSZAZnQIWxLitrpE'
    descompactar-tar-gz wallpaper.tar.gz
    cp -r wallpaper /home/$USER/Imagens/
    rm wallpaper.tar.gz
fi


## Download tema WhiteSur Dark solid
echo -e "\n\n\n WhiteSur Dark solid"
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
elif [ -d WhiteSur-dark-solid ];then
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    echo -e "\n\n O diretorio  WhiteSur-dark-solid  foi copiado"
else
    megadl 'https://mega.nz/file/HR8ghJCC#_ANdwAbYHmmYOQamEoHY__vh68vTR2if1UOkj_VW5UQ'
    descompactar-tar-gz WhiteSur-dark-solid.tar.gz
    cp -r WhiteSur-dark-solid /home/$USER/.themes/
    rm WhiteSur-dark-solid.tar.gz
fi


## Download icones Big Sur
echo -e "\n\n\n Big Sur Icons"
if [ -d /home/$USER/.icons/BigSur ];then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
elif [ -d BigSur ];then
    cp -r BigSur /home/$USER/.icons/
    echo -e "\n\n O diretorio  BigSur  foi copiado"
else
    megadl 'https://mega.nz/file/mM01RKoT#n5psA9Kal68DFS6yEHNb7vi3QWgHrlpE-PUEmS1TiuQ'
    descompactar-tar-gz BigSur.tar.gz
    cp -r BigSur /home/$USER/.icons/
    rm BigSur.tar.gz
fi


## Download MacMojave cursores
echo -e "\n\n\n MacMojave cursores"
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
elif [ -d McMojave-cursors ];then
    cp -r McMojave-cursors /home/$USER/.icons/
    echo -e "\n\n O diretorio  McMojave-cursors  foi copiado"
else
    megadl 'https://mega.nz/file/mVkWgawK#jE6MEM3XmUcy1IYO1fZ6KbN6Fd-Gq8_yp9dq9id3nok'
    descompactar-tar-gz McMojave-cursors.tar.gz
    cp -r McMojave-cursors /home/$USER/.icons/
    rm McMojave-cursors.tar.gz
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

## Download JDK-17
echo -e "\n\n\n JDK"
if [ -d jdk-17 ];then
    sudo cp -r jdk-17 /opt/
else
    megadl 'https://mega.nz/file/zRtDxZDJ#T7OmyCqGZk_6uvnnJQnXNg84L9JdcjjF4g8QFLejVSY'
    descompactar-tar-gz openjdk-17_35_linux-x64_bin.tar.gz
    sudo cp -r jdk-17 /opt/
    rm openjdk-17_35_linux-x64_bin.tar.gz
fi


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /opt/jdk-17/bin/java 2
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/opt/jdk-17" /home/$USER/.bashrc; then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "export JAVA_HOME=/opt/jdk-17" >> /home/$USER/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /home/$USER/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
source /home/$USER/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**********************************************INSTALANDO  O  MAVEN *******************************************************************"

## Download do Maven
echo -e "\n\n\n Maven"
if [ -d apache-maven-3.8.6 ];then
    sudo cp -r apache-maven-3.8.6 /opt/
else
    megadl 'https://mega.nz/file/vdVUVRhS#OhkqjE77fK6QmZ-9T9fs8QlGBZkn5o1hH7mBJwEnOpM'
    descompactar-tar-gz apache-maven-3.8.6-bin.tar.gz
    sudo cp -r apache-maven-3.8.6 /opt/
    rm apache-maven-3.8.6-bin.tar.gz
fi



## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.8.6" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    echo "export MAVEN_HOME=/opt/apache-maven-3.8.6" >> /home/$USER/.bashrc
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

sudo chmod +x docker-compose
sudo cp docker-compose /usr/local/bin/

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install -y android-sdk-platform-tools-common

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***************************************************** INSTALANDO  O  PYTHON **********************************************************"

## Prerequisitos
sudo apt install -y build-essential checkinstall \
    libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev


## Instalação do Python
sudo apt install -y software-properties-common
echo "deb https://ppa.launchpadcontent.net/deadsnakes/ppa/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://ppa.launchpadcontent.net/deadsnakes/ppa/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776
sudo apt update -y
sudo apt install -y python3.11


## Instalando o Pip
sudo apt install -y python3-pip

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

cd /home/$USER/Downloads/Programas/docker-compose-main/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd /home/$USER/Downloads/Programas/docker-compose-main/postgres/
sudo docker-compose up -d

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
