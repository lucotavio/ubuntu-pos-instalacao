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
echo -e "\n\n\n Compactador-tar-gz"
if [ -e compactar-tar-gz ];then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    curl -L -o compactar-tar-gz https://www.dropbox.com/s/f12rnz1806rbpoo/compactar-tar-gz?dl=0
    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi


## Download Descompactador
echo -e "\n\n\n Decompactador-tar-gz"
if [ -e descompactar-tar-gz ];then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    curl -L -o descompactar-tar-gz https://www.dropbox.com/s/vytdyan9ec5e7td/descompactar-tar-gz?dl=0
    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi


## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ]
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n4K Video Downloader"
    echo -e "Tamanho do arquivo = 1,77 GB"
    fileId=1Y_M5XaadEMoN5mkwbfHgB3aQIyS08YcK
    fileName=4kvideodownloader_4.21.7-1_amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Android Studio
if [ -e android-studio-2022.2.1.deb ]
then
    echo "O arquivo  android-studio-2022.2.1.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Android Studio"
    echo -e "Tamanho do arquivo = 1,77 GB"
    fileId=1GSQHgLv9rbWZqLeGoKYyCOw7noFd3P_F
    fileName=android-studio-2022.2.1.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi


## Download Atom
if [ -e atom-amd64.deb ]
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Atom"
    echo -e "Tamanho do arquivo = 1,77 GB"
    fileId=1xazxsCtLFbMctp7SgrrWREC-Z8Ky_1u-
    fileName=atom-amd64.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi



## Download Balena Etcher
if [ -e balena-etcher-1.14.3.deb ]
then
    echo "O arquivo  balena-etcher-1.14.3.deb  ja existe"
else
    echo -e "\n\n\n\nDownload Balena Etcher"
    echo -e "Tamanho do arquivo = 1,77 GB"
    fileId=1FBZ1co8BBo_O2bjm9XANJTYW3mbNPv6C
    fileName=balena-etcher-1.14.3.deb
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
    code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}
fi


## Download BleachBit
echo -e "\n\n\n BleachBit"
if [ -e bleachbit_4.4.2-0_all_ubuntu2004.deb ];then
    echo "O arquivo  bleachbit_4.4.2-0_all_ubuntu2004.deb  ja existe"
else
    curl -L -o bleachbit_4.4.2-0_all_ubuntu2004.deb https://www.dropbox.com/s/80zmmptlmo9r1m8/bleachbit_4.4.2-0_all_ubuntu2004.deb?dl=0
fi


## Download Chrome
echo -e "\n\n\n Chrome"
if [ -e google-chrome-stable_current_amd64.deb ];then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    curl -L -o google-chrome-stable_current_amd64.deb https://www.dropbox.com/s/rdkmjimzbpozxbh/google-chrome-stable_current_amd64.deb?dl=0
fi


## Download DBeaver
echo -e "\n\n\n DBeaver"
if [ -e dbeaver-le_22.3.0_amd64.deb ];then
    echo "O arquivo  dbeaver-le_22.3.0_amd64.deb  ja existe"
else
    curl -L -o dbeaver-le_22.3.0_amd64.deb https://www.dropbox.com/s/mrkvm0699h06age/dbeaver-le_22.3.0_amd64.deb?dl=0
fi


## Download Docker Compose
echo -e "\n\n\n Docker Compose"
if [ -e docker-compose ];then
    echo "O arquivo  docker-compose  ja existe"
else
    curl -L -o docker-compose https://www.dropbox.com/s/0g8auqdkmvuyahl/docker-compose?dl=0
fi


## Download Pasta Docker Compose
echo -e "\n\n\n Pasta Docker Compose"
if [ -d docker-compose-main ];then
    echo "O diretorio  docker-compose-main  ja existe"
else
    curl -L -o docker-compose-main.tar.gz https://www.dropbox.com/s/xm5t6568qsjbhey/docker-compose-main.tar.gz?dl=0
    descompactar-tar-gz docker-compose-main.tar.gz
    rm docker-compose-main.tar.gz
fi


## Download DbVisualizer
echo -e "\n\n\n DbVisualizer"
if [ -e dbvis_linux_14_0_1.deb ];then
    echo "O arquivo  dbvis_linux_14_0_1.deb  ja existe"
else
    curl -L -o dbvis_linux_14_0_1.deb https://www.dropbox.com/s/k73l2b40pcbmawf/dbvis_linux_14_0_1.deb?dl=0
fi


## Download Dropbox
echo -e "\n\n\n Dropbox"
if [ -e dropbox_2020.03.04_amd64.deb ];then
    echo "O arquivo  dropbox_2020.03.04_amd64.deb  ja existe"
else
    curl -L -o dropbox_2020.03.04_amd64.deb https://www.dropbox.com/s/iozwc5taa2qax2u/dropbox_2020.03.04_amd64.deb?dl=0
fi


## Download Eclipse
echo -e "\n\n\n Eclipse"
if [ -e eclipse-jee-2023-03.deb ];then
    echo "O arquivo  eclipse-jee-2023-03.deb  ja existe"
else
    curl -L -o eclipse-jee-2023-03.deb https://www.dropbox.com/s/uss2hxwjl9e3rpg/eclipse-jee-2023-03.deb?dl=0
fi


## Download Figma
echo -e "\n\n\n Figma"
if [ -e figma-linux_0.10.0_linux_amd64.deb ];then
    echo "O arquivo  figma-linux_0.10.0_linux_amd64.deb  ja existe"
else
    curl -L -o figma-linux_0.10.0_linux_amd64.deb https://www.dropbox.com/s/wdxg3yaoecubr4o/figma-linux_0.10.0_linux_amd64.deb?dl=0
fi


## Download GitKraken
echo -e "\n\n\n GitKraken"
if [ -e gitkraken-amd64.deb ];then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
    curl -L -o gitkraken-amd64.deb https://www.dropbox.com/s/yre89j7lrh7w407/gitkraken-amd64.deb?dl=0
fi


## Download Insomnia
echo -e "\n\n\n Insomnia"
if [ -e Insomnia.Core-2022.6.0.deb ];then
    echo "O arquivo  Insomnia.Core-2022.6.0.deb  ja existe"
else
    curl -L -o Insomnia.Core-2022.6.0.deb https://www.dropbox.com/s/4ab5ggtrvksbhui/Insomnia.Core-2022.6.0.deb?dl=0
fi


## Download Insync
echo -e "\n\n\n Insync"
if [ -e insync_3.8.4.50481-jammy_amd64.deb ];then
    echo "O arquivo  insync_3.8.4.50481-jammy_amd64.deb ja existe"
else
    curl -L -o insync_3.8.4.50481-jammy_amd64.deb https://www.dropbox.com/s/ybgxyq4qzxn30o8/insync_3.8.4.50481-jammy_amd64.deb?dl=0
fi


## Download Intellij Community
echo -e "\n\n\n Intellij Community"
if [ -e intellij-community.deb ];then
    echo "O arquivo  intellij-community.deb ja existe"
else
    curl -L -o intellij-community.deb https://www.dropbox.com/s/ie2nmxt0ze4q40z/intellij-community.deb?dl=0
fi


## Download Japersoft Studio
echo -e "\n\n\n Japersoft Studio"
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
    curl -L -o jaspersoft-sudio-6.20.0_linux_amd64.deb https://www.dropbox.com/s/auezdqr6puio9we/jaspersoft-sudio-6.20.0_linux_amd64.deb?dl=0
fi


## Download Kdenlive
echo -e "\n\n\n Kdenlive"
if [ -e kdenlive-22.12.1.deb ];then
    echo "O arquivo  kdenlive-22.12.1.deb ja existe"
else
    curl -L -o kdenlive-22.12.1.deb https://www.dropbox.com/s/02q3821cxu7l28x/kdenlive-22.12.1.deb?dl=0
fi


## Download Lombok
echo -e "\n\n\n Lombok"
if [ -e lombok.jar ];then
    echo "O arquivo lombok.jar ja existe"
else
    curl -L -o lombok.jar https://www.dropbox.com/s/sozukz41qxl1tfa/lombok.jar?dl=0
fi


## Download Microsoft Teams
echo -e "\n\n\n Microsoft Teams"
if [ -e teams_1.5.00.23861_amd64.deb ];then
    echo "O arquivo  teams_1.5.00.23861_amd64.deb  ja existe"
else
    curl -L -o teams_1.5.00.23861_amd64.deb https://www.dropbox.com/s/x7kgwrl9ie2y8f2/teams_1.5.00.23861_amd64.deb?dl=0
fi


## Download Microsoft Office
echo -e "\n\n\n Microsoft Office"
if [ -e microsoft_online_apps.deb ];then
    echo "O arquivo  microsoft_online_apps.deb  ja existe"
else
    curl -L -o microsoft_online_apps.deb https://www.dropbox.com/s/97zy70mya58zaif/microsoft_online_apps.deb?dl=0
fi


## Download Netbeans
echo -e "\n\n\n Netbeans"
if [ -e netbeans_16-1_all.deb ];then
    echo "O arquivo  netbeans_16-1_all.deb  ja existe"
else
    curl -L -o netbeans_16-1_all.deb https://www.dropbox.com/s/supmbfo91zc59cr/netbeans_16-1_all.deb?dl=0
fi


## Download One Drive
echo -e "\n\n\n One drive"
if [ -e onedriver_0.13.0-1_amd64.deb ];then
    echo "O arquivo  onedriver_0.13.0-1_amd64.deb  ja existe"
else
    curl -L -o onedriver_0.13.0-1_amd64.deb https://www.dropbox.com/s/7abagzhiuzoz4wk/onedriver_0.13.0-1_amd64.deb?dl=0
fi


## Download Only OFfice
echo -e "\n\n\n Only Office"
if [ -e onlyoffice-desktopeditors_amd64.deb ];then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    curl -L -o onlyoffice-desktopeditors_amd64.deb https://www.dropbox.com/s/k22vzxlcp441af9/onlyoffice-desktopeditors_amd64.deb?dl=0
fi


## Download Postman
echo -e "\n\n\n Postman"
if [ -e postman-10.11.2.deb ];then
    echo "O arquivo  postman-10.11.2.deb  ja existe"
else
    curl -L -o postman-10.11.2.deb https://www.dropbox.com/s/m7xg9t910t1d0w9/postman-10.11.2.deb?dl=0
fi


## Download PyCharm
echo -e "\n\n\n PyCharm"
if [ -e pycharm-community-2022.3.3.deb ];then
    echo "O arquivo  pycharm-community-2022.3.3.deb  ja existe"
else
    curl -L -o pycharm-community-2022.3.3.deb https://www.dropbox.com/s/y3lh6r7700tmbvo/pycharm-community-2022.3.3.deb?dl=0
fi


## Download Scene Scene Builder
echo -e "\n\n\n Scene Builder"
if [ -e SceneBuilder-19.0.0.deb ];then
    echo "O arquivo  SceneBuilder-19.0.0.deb  ja existe"
else
    curl -L -o SceneBuilder-19.0.0.deb https://www.dropbox.com/s/vq6dlsyo1e4jcg0/SceneBuilder-19.0.0.deb?dl=0
fi


## Download Spring Tool Suite
echo -e "\n\n\n Spring Tool Suite"
if [ -e sts-4.17.2.RELEASE.deb ];then
    echo "O arquivo  sts-4.17.2.RELEASE.deb  ja existe"
else
    curl -L -o sts-4.17.2.RELEASE.deb https://www.dropbox.com/s/h4vo6uv6pv9xjan/sts-4.17.2.RELEASE.deb?dl=0
fi


## Download StarUML
echo -e "\n\n\n StarUML"
if [ -e StarUML_5.0.2_amd64.deb ];then
    echo "O arquivo  StarUML_5.0.2_amd64.deb  ja existe"
else
    curl -L -o StarUML_5.0.2_amd64.deb https://www.dropbox.com/s/qps6kw1ozyhm068/StarUML_5.0.2_amd64.deb?dl=0
fi


## Download Visual Studio Code
echo -e "\n\n\n Visual Studio Code"
if [ -e code_1.74.2-1671533413_amd64.deb ];then
    echo "O arquivo  code_1.74.2-1671533413_amd64.deb  ja existe"
else
    curl -L -o code_1.74.2-1671533413_amd64.deb https://www.dropbox.com/s/l38kjj16il3q83o/code_1.74.2-1671533413_amd64.deb?dl=0
fi


## Download VMware player
echo -e "\n\n\n VMware player"
if [ -e VMware-Player-Full-17.0.0-20800274.x86_64.bundle ];then
    echo "O arquivo  code_1.72.2-1665614327_amd64.deb  ja existe"
else
    curl -L -o VMware-Player-Full-17.0.0-20800274.x86_64.bundle https://www.dropbox.com/s/gcisypw88n9iaik/VMware-Player-Full-17.0.0-20800274.x86_64.bundle?dl=0
fi


## Download VMware player icon
echo -e "\n\n\n VMware player icon"
if [ -e vmware.png ];then
    echo "O arquivo  vmware.png  ja existe"
else
    curl -L -o vmware.png https://www.dropbox.com/s/lng1xgmb2e16ctq/vmware.png?dl=0
fi


## Download Waterfox
echo -e "\n\n\n Waterfox"
if [ -e waterfox-G5.1.3.deb ];then
    echo "O arquivo  waterfox-G5.1.3.deb  ja existe"
else
    curl -L -o waterfox-G5.1.3.deb https://www.dropbox.com/s/l849gpprp8yjory/waterfox-G5.1.3.deb?dl=0
fi


## WPS Office
echo -e "\n\n\n WPS Office"
if [ -e wps-office_11.1.0.11664.XA_amd64.deb ];then
    echo "O arquivo  wwps-office_11.1.0.11664.XA_amd64.deb  ja existe"
else
    curl -L -o wps-office_11.1.0.11664.XA_amd64.deb https://www.dropbox.com/s/6bxe3qvlk5xpo0x/wps-office_11.1.0.11664.XA_amd64.deb?dl=0
fi


## Download Tomcat
echo -e "\n\n\n Tomcat"
if [ -d /home/$USER/Servidores/apache-tomcat-9.0.68 ];then
    echo "O diretorio  /home/$USER/Servidores/apache-tomcat-9.0.68  ja existe"
elif [ -d apache-tomcat-9.0.68 ];then
    cp -r apache-tomcat-9.0.68 /home/$USER/Servidores/
    echo -e "\n\n O diretorio  apache-tomcat-9.0.68 foi copiado"
else
    curl -L -o apache-tomcat-9.0.68.tar.gz https://www.dropbox.com/s/nsn2et4pg73ie5h/apache-tomcat-9.0.68.tar.gz?dl=0
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
  curl -L -o wildfly-26.1.2.Final.tar.gz https://www.dropbox.com/s/u8211vat0fcetg8/wildfly-26.1.2.Final.tar.gz?dl=0
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
    curl -L -o netbeans-plugins.tar.gz https://www.dropbox.com/s/gc1h7pum5oa776i/netbeans-plugins.tar.gz?dl=0
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
    curl -L -o drivers-JDBC.tar.gz https://www.dropbox.com/s/h6htbjk1ryrhgmm/drivers-JDBC.tar.gz?dl=0
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
    curl -L -o wallpaper.tar.gz https://www.dropbox.com/s/6g7x59anuyo9bdy/wallpaper.tar.gz?dl=0
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
    curl -L -o WhiteSur-dark-solid.tar.gz https://www.dropbox.com/s/5har6w13jeb5834/WhiteSur-dark-solid.tar.gz?dl=0
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
    curl -L -o BigSur.tar.gz https://www.dropbox.com/s/vzbqwtz48r5u7lx/BigSur.tar.gz?dl=0
    descompactar-tar-gz BigSur.tar.gz
    cp -r BigSur /home/$USER/.icons/
    rm BigSur.tar.gz
fi


## Download icones Big Sur Dark
echo -e "\n\n\n Big Sur Dark Icons"
if [ -d /home/$USER/.icons/BigSur-dark ];then
    echo "O diretorio  /home/$USER/.icons/BigSur-dark  ja existe"
elif [ -d BigSur-dark ];then
    cp -r BigSur-dark /home/$USER/.icons/
    echo -e "\n\n O diretorio  BigSur-dark  foi copiado"
else
    curl -L -o BigSur-dark.tar.gz https://www.dropbox.com/s/1dw2bq6h3ja2uz1/BigSur-dark.tar.gz?dl=0
    descompactar-tar-gz BigSur-dark.tar.gz
    cp -r BigSur-dark /home/$USER/.icons/
    rm BigSur-dark.tar.gz
fi


## Download MacMojave cursores
echo -e "\n\n\n MacMojave cursores"
if [ -d /home/$USER/.icons/McMojave-cursors ];then
    echo "O diretorio  /home/$USER/.icons/McMojave-cursors  ja existe"
elif [ -d McMojave-cursors ];then
    cp -r McMojave-cursors /home/$USER/.icons/
    echo -e "\n\n O diretorio  McMojave-cursors  foi copiado"
else
    curl -L -o McMojave-cursors.tar.gz https://www.dropbox.com/s/2pa43hb00yqt0io/McMojave-cursors.tar.gz?dl=0
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
    curl -L -o openjdk-17_35_linux-x64_bin.tar.gz https://www.dropbox.com/s/ch9h9fni6co9lkn/openjdk-17_35_linux-x64_bin.tar.gz?dl=0
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
    curl -L -o apache-maven-3.8.6-bin.tar.gz https://www.dropbox.com/s/vej28bg0b1uhxp7/apache-maven-3.8.6-bin.tar.gz?dl=0
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
