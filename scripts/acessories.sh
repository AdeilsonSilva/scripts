#!/bin/bash

# Instalando editores de texto
echo "Instalando editores de texto ..."
echo -e "\tVim"
sudo apt-get install -y vim &> .log
echo -e "\tSublime"
sudo dpkg -i ./sublime_$version.deb &> .log
echo -e "\tAtom"
sudo dpkg -i ./atom_$version.deb &> .log

# Instalando ferramentas para dev
echo "Instalando ferramentas para dev ..."
echo -e "\tGit"
apt-get install -y git &> .log
echo -e "\tFirefox Developer"
tar -xvf firefox.tar.bz2 /opt/firefox_dev
cp Firefox\ Developer.desktop ~/Área\ de\ Trabalho/Firefox\ Developer.desktop
echo  -e "\tChromium"
sudo apt-get install -y chromium-browser &> .log
echo -e "\tFilezilla"
sudo apt-get install -y filezilla &> .log
