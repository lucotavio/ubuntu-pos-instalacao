#!/bin/bash


#################################################################### INSTALANDO  RIDER ##############################################################

## Atualizando lista de pacotes nos repositorios instalados
sudo apt update -y

## Instalando dpendencias
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y

## Adicionando repositorio do Removendo
echo "deb [arch=amd64] https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list

## Atualizando lista de pacotes nos repositorios instalados
sudo apt update -y

## Instalando o Mono
sudo apt install mono-devel -y
