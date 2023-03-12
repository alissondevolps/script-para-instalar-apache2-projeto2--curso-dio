#!/bin/bash

echo "#################################################"
echo "Atualiza o cache do repositório e o upgrade"
echo "#################################################"

apt-get update
apt-get upgrade -y

# Instala o Apache2
apt-get install apache2 -y

# Instala o Unzip
apt-get install unzip -y

# Instala o Wget
apt-get install wget -y

echo "#################################################"
echo "Baixando e copiando os arquivos da aplicação..."
echo "#################################################"


cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
