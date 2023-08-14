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



## Download Compactador
if [ -e compactar-tar-gz ];then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Compactador-tar-gz"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kWXdmTjqzyCpoIFxgB1zctX1msprYEVJ' -O compactar-tar-gz

  chmod +x compactar-tar-gz
  sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
  echo -e "\n\n\n Descompactar-tar-gz"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1h3KbeWkbDyBqZCW69FlQo5l3hp5ISJOf' -O descompactar-tar-gz

  chmod +x descompactar-tar-gz
  sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
        'https://docs.google.com/uc?export=download&id=1Y_M5XaadEMoN5mkwbfHgB3aQIyS08YcK' -O- | \
    sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Y_M5XaadEMoN5mkwbfHgB3aQIyS08YcK" -O 4kvideodownloader_4.21.7-1_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ]
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    echo -e "\n\n\n\n Android Studio"
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
        'https://docs.google.com/uc?export=download&id=1Vzqml8ccrXcSZ-QOFhaZH2TGQnHA7-0C' -O- | \
    sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Vzqml8ccrXcSZ-QOFhaZH2TGQnHA7-0C" -O android-studio-2022.3.1.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Apache Netbeans
if [ -e apache-netbeans_18-1_all.deb ]
then
    echo "O arquivo  apache-netbeans_18-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
        'https://docs.google.com/uc?export=download&id=1la7Y5_GT3vSB8f9dg9EhcPA9VfQ80lv6' -O- | \
    sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1la7Y5_GT3vSB8f9dg9EhcPA9VfQ80lv6" -O apache-netbeans_18-1_all.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
        'https://docs.google.com/uc?export=download&id=1xazxsCtLFbMctp7SgrrWREC-Z8Ky_1u-' -O- | \
    sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1xazxsCtLFbMctp7SgrrWREC-Z8Ky_1u-" -O atom-amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Balena Etcher
if [ -e balena-etcher_1.18.11_amd64.deb ]
then
    echo "O arquivo  balena-etcher_1.18.11_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget --load-cookies /tmp/cookies.txt \
    "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
        'https://docs.google.com/uc?export=download&id=1wTLeIL_PGxMmkukdzGNosQ-vBLhsXuAK' -O- | \
    sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1wTLeIL_PGxMmkukdzGNosQ-vBLhsXuAK" -O balena-etcher_1.18.11_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Chrome
if [ -e chrome-stable_current_amd64.deb ];then
    echo "O arquivo  chrome-stable_current_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Chrome"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=119PJ78GXF5hFl2D0yvrR5WTjYDVjBRbY' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=119PJ78GXF5hFl2D0yvrR5WTjYDVjBRbY" -O chrome-stable_current_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download DBeaver
if [ -e dbeaver-le_23.1.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_23.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n DBeaver"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1rmBnEjP_cxVfuLhNayaWUT1T5zqCBeOP' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1rmBnEjP_cxVfuLhNayaWUT1T5zqCBeOP" -O dbeaver-le_23.1.0_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Docker Compose
if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe"
else
  echo -e "\n\n\n\n Docker Compose"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1q-vqLH0LfMasksSVytw7HfkTrOxJlCyA' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1q-vqLH0LfMasksSVytw7HfkTrOxJlCyA" -O docker-compose && rm -rf /tmp/cookies.txt \;
fi



## Download Docker Compose Files
if [ -d /home/$USER/Instalacao/docker-compose-files ];then
    echo "O diretorio  /home/$USER/Instalacao/docker-compose-files ja existe"
else
  echo -e "\n\n\n\n Docker Compose files"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1wAPMxZdkvdZ4VE5LQe_xRjF2ZF0PDeZw' -O docker-compose-files.tar.gz

  descompactar-tar-gz docker-compose-files.tar.gz
  cp -r docker-compose-files /home/$USER/Instalacao/
  rm docker-compose-files.tar.gz
fi



## Download Dropbox
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Dropbox"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=12CO9lVV40Zmqx7cFb5Lmo3F_-lURqFjF' -O dropbox_2020.03.04_amd64.deb
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
  echo -e "\n\n\n\n GitKraken"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1i47sx1P0cdtykTXw3aFrZY9t1XMJ2yAC' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1i47sx1P0cdtykTXw3aFrZY9t1XMJ2yAC" -O gitkraken-amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Insomnia
if [ -e Insomnia.Core-2023.4.0.deb ];then
    echo "O arquivo  Insomnia.Core-2023.4.0.deb  ja existe"
else
  echo -e "\n\n\n\n Insomnia"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1M-6axTc8LNI_66iLwvvY-SyyNTmZ77Ic' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1M-6axTc8LNI_66iLwvvY-SyyNTmZ77Ic" -O Insomnia.Core-2023.4.0.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
  echo -e "\n\n\n\n Insync"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=15Y8zCGHiXsEntMqTme_0pILFLlRv063Z' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=15Y8zCGHiXsEntMqTme_0pILFLlRv063Z" -O insync_3.8.6.50504-jammy_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Intellij Community
if [ -e intellij-community-2023.2.deb ];then
    echo "O arquivo  intellij-community-2023.2.deb ja existe"
else
  echo -e "\n\n\n\n Intellij Community"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1_GvKUI8e7Htttu0LxJgSl2SdpGCWV-9X' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_GvKUI8e7Htttu0LxJgSl2SdpGCWV-9X" -O intellij-community-2023.2.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Lombok
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
  echo -e "\n\n\n\n Lombok"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ZD-QAd5aky-DzDxYUrs9JEsAZS9gul5k-' -O lombok.jar
fi



## Download MegaSync
if [ -e megasync-xUbuntu_22.04_amd64.deb ];then
    echo "O arquivo megasync-xUbuntu_22.04_amd64.deb ja existe"
else
  echo -e "\n\n\n\n MegaSync"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1Cru0mzT1V5l-p_IRHsKCxt1Eh42-fwcV' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Cru0mzT1V5l-p_IRHsKCxt1Eh42-fwcV" -O megasync-xUbuntu_22.04_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Only Office"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=11Stf18xGX31jm5inMxStUvk0g6VpwuNl' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=11Stf18xGX31jm5inMxStUvk0g6VpwuNl" -O onlyoffice-desktopeditors_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Postman
if [ -e postman-10.17.1.deb ];then
    echo "O arquivo  postman-10.17.1.deb  ja existe"
else
  echo -e "\n\n\n\n Postman"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1_3P-NmeAH-9F35voO1__Niz4lhr_eSx1' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_3P-NmeAH-9F35voO1__Niz4lhr_eSx1" -O postman-10.17.1.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Spring tool Suite
if [ -e spring-tool-suite-4.19.1.RELEASE.deb ];then
    echo "O arquivo  spring-tool-suite-4.19.1.RELEASE.deb  ja existe"
else
  echo -e "\n\n\n\n Spring Tool Suite"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1enbYDfIX9MXXKdKR8g-zm5Gx0uAcCfPL' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1enbYDfIX9MXXKdKR8g-zm5Gx0uAcCfPL" -O spring-tool-suite-4.19.1.RELEASE.deb && rm -rf /tmp/cookies.txt \;
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ];then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n StarUML"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1LH-IOmVRljnv-J35qQkWQnCwPI2t5r-a' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1LH-IOmVRljnv-J35qQkWQnCwPI2t5r-a" -O StarUML_5.1.0_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Visual Studio Code
if [ -e visual_code_1.81.1-1691620686_amd64.deb ];then
    echo "O arquivo  visual_code_1.81.1-1691620686_amd64.deb  ja existe"
else
  echo -e "\n\n\n\n Visual Studio Code"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=15W3wFK2uVHSeUHW4V3HUC2PKS2KrLJUu' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=15W3wFK2uVHSeUHW4V3HUC2PKS2KrLJUu" -O visual_code_1.81.1-1691620686_amd64.deb && rm -rf /tmp/cookies.txt \;
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ];then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
  echo -e "\n\n\n\n VMware Workstation"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1M1h1hN4nIG-OqAXoPePEneM-H17yCfIv' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1M1h1hN4nIG-OqAXoPePEneM-H17yCfIv" -O VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle && rm -rf /tmp/cookies.txt \;
fi



## Download Waterfox
if [ -e waterfox-G5.1.10.deb ];then
    echo "O arquivo  waterfox-G5.1.10.deb  ja existe"
else
  echo -e "\n\n\n\n Waterfox"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1dgHPXFJjTo8WkWIzsez5PljYAwD6S5ix' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1dgHPXFJjTo8WkWIzsez5PljYAwD6S5ix" -O waterfox-G5.1.10.deb && rm -rf /tmp/cookies.txt \;
fi



## Download Tomcat
if [ -d /home/$USER/Servidores/tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/tomcat-9.0.68  ja existe"
else
  echo -e "\n\n\n\n Tomcat"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1EqMonKmeOMh3r0eP1c_2UStAN6JWrM49' -O tomcat-9.0.68.tar.gz

  descompactar-tar-gz tomcat-9.0.68.tar.gz
  cp -r tomcat-9.0.68 /home/$USER/Servidores/
  rm tomcat-9.0.68.tar.gz
fi



## Download Wildfly
if [ -d /home/$USER/Servidores/wildfly-29.0.0.Final ];then
    echo "O diretorio  /home/$USER/Servidores/wildfly-29.0.0.Final  ja existe"
else
  echo -e "\n\n\n\n Wildfly"
  wget --load-cookies /tmp/cookies.txt \
  "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      'https://docs.google.com/uc?export=download&id=1q8-3vFReU_t6ZZcnvwSPrYNLUUx906BY' -O- | \
  sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1q8-3vFReU_t6ZZcnvwSPrYNLUUx906BY" -O wildfly-29.0.0.Final.tar.gz && rm -rf /tmp/cookies.txt \;

  descompactar-tar-gz wildfly-29.0.0.Final.tar.gz
  cp -r wildfly-29.0.0.Final /home/$USER/Servidores/
  rm wildfly-29.0.0.Final.tar.gz
fi



## Download Netbeans plugins
if [ -d /home/$USER/Instalacao/netbeans-plugins ];then
      echo "O diretorio  /home/$USER/Instalacao/netbeans-plugins  ja existe"
else
  echo -e "\n\n\n\n Netbeans Plugins"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1jl-Dl6DnzUDEDq-XBnfT8MDZRL2vKJJk' -O netbeans-plugins.tar.gz

  descompactar-tar-gz netbeans-plugins.tar.gz
  cp -r netbeans-plugins /home/$USER/Instalacao/
  rm netbeans-plugins.tar.gz
fi



#Download Drivers JDBC
if [ -d /home/$USER/Instalacao/drivers-JDBC ];then
    echo "O diretorio  /home/$USER/Instalacao/drivers-JDBC  ja existe"
else
  echo -e "\n\n\n\n Drivers JDBC"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FP1TVh-xppkiwjvQkwMEf5SyY4e6JwJ4' -O drivers-JDBC.tar.gz

  descompactar-tar-gz drivers-JDBC.tar.gz
  cp -r drivers-JDBC /home/$USER/Instalacao/
  rm drivers-JDBC.tar.gz
fi




## Download Wallpapers
if [ -d /home/$USER/Imagens/wallpaper ];then
    echo "O diretorio  /home/$USER/Imagens/wallpaper  ja existe"
else
  echo -e "\n\n\n\n Wallpapers"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Lg97MHyo-Nt1katamB7rbLHJGmQw29AT' -O wallpaper.tar.gz

  descompactar-tar-gz wallpaper.tar.gz
  cp -r wallpaper /home/$USER/Imagens/
  rm wallpaper.tar.gz
fi



## Download tema WhiteSur Dark solid
if [ -d /home/$USER/.themes/WhiteSur-dark-solid ];then
    echo "O diretorio  /home/$USER/.themes/WhiteSur-dark-solid  ja existe"
else
  echo -e "\n\n\n\n WhiteSur Dark solid"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1P5kHLIcFWJHFmvQXhC8aB32SQAYOAOor' -O WhiteSur-dark-solid.tar.gz

  descompactar-tar-gz WhiteSur-dark-solid.tar.gz
  cp -r WhiteSur-dark-solid /home/$USER/.themes/
  rm WhiteSur-dark-solid.tar.gz
fi



## Download icones Big Sur
if [ -d /home/$USER/.icons/BigSur ];then
    echo "O diretorio  /home/$USER/.icons/BigSur  ja existe"
else
  echo -e "\n\n\n\n BigSur"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Xi3d9-NlDfBGA1kUA2_KK_dijD3w0fuS' -O BigSur.tar.gz

  descompactar-tar-gz BigSur.tar.gz
  cp -r BigSur /home/$USER/.icons/
  rm BigSur.tar.gz
fi



## Download icones Deepin
if [ -d /home/$USER/.icons/Deepin ];then
    echo "O diretorio  /home/$USER/.icons/Deepin  ja existe"
else
  echo -e "\n\n\n\n Deepin"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1K8XnVwkVgPGKEsYjt-Vd5HCYOk0cRALs' -O Deepin.tar.gz

  descompactar-tar-gz Deepin.tar.gz
  cp -r Deepin /home/$USER/.icons/
  rm Deepin.tar.gz
fi



## Download MacMojave cursores
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
else
  echo -e "\n\n\n\n MacMojave cursores"
  wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1x9KWvR9GudSrvBD6XRex5yfiioGZOn_f' -O McMojave-cursors.tar.gz

  descompactar-tar-gz McMojave-cursors.tar.gz
  cp -r McMojave-cursors /home/$USER/.icons/
  rm McMojave-cursors.tar.gz
fi




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-17 **************************************************************"

## Download JDK-17
if [ -d jdk-17 ];then
    sudo cp -r jdk-17 /opt/
else
  echo -e "\n\n\n\n JDK 17"
  fileId=12d4lxclo-rWu8_1JFR2Rr33gkaR3FPqC
  fileName=openjdk-17_35_linux-x64_bin.tar.gz
  curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
  code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
  curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

  descompactar-tar-gz openjdk-17_35_linux-x64_bin.tar.gz
  sudo cp -r jdk-17/ /opt/
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
if [ -d apache-maven-3.9.4 ];then
    sudo cp -r apache-maven-3.9.4 /opt/
else
  echo -e "\n\n\n\n Maven"
  echo -e "Tamanho do arquivo = 1,77 GB"
  fileId=1ZmmMGjgyMTjblN8Dsj3Raq0rJhF9uiu_
  fileName=apache-maven-3.9.4-bin.tar.gz
  curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
  code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
  curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}

  descompactar-tar-gz apache-maven-3.9.4-bin.tar.gz
  sudo cp -r apache-maven-3.9.4/ /opt/
  rm apache-maven-3.9.4-bin.tar.gz
fi


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/opt/apache-maven-3.9.4" /home/$USER/.bashrc ;then
    echo "Variaveis de Ambiente do Maven configurados"
else
    ## Espaco em branco
    echo "" >> /home/$USER/.bashrc
    echo "export MAVEN_HOME=/opt/apache-maven-3.9.4" >> /home/$USER/.bashrc
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
