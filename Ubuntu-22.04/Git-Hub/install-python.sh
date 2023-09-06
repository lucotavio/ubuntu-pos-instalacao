#!/bin/bash


## Entrando na para pasta de programas
cd /home/$USER/Downloads/Softwares/


## Funcao que instala o Python
install_python(){

  cd Python-3.11.5/
  ./configure --enable-optimizations
  make -j $(nproc)
  sudo make altinstall
  rm Python-3.11.5.tar.xz

}


echo "Instalando Pyhton"
python3.11 --version | tee /home/$USER/Downloads/Softwares/python-version.txt

if grep -qi 'Python 3.11.5' /home/$USER/Downloads/Softwares/python-version.txt;
then
    echo "Python ja esta instalado"

    ## Comando para ver versao do Python
    python3.11 --version
else
    wget https://github.com/lucotavio/python/releases/download/Python/Python-3.11.5.tar.xz
    tar -xvf Python-3.11.5.tar.xz
    install_python

    ## Comando para ver versao do Python
    python3.11 --version
fi



## Entrando na para pasta de programas
cd /home/$USER/Downloads/Softwares/



echo "Instalando Pip"
pip3.11 -V | tee /home/$USER/Downloads/Softwares/pip-version.txt

if grep -qi 'pip 23.2.1' /home/$USER/Downloads/Softwares/pip-version.txt; then
    echo "Pip ja esta instalado"

    ## Comando para ver versao do Pip
    pip3.11 -V
else
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11

    ## Comando para ver versao do Pip
    pip3.11 -V
fi
