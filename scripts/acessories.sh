#!/bin/bash

# Instalando editores de texto
echo "Instalando editores de texto ..."
echo -e "\tVim"
sudo apt-get install vim &>> .log

echo -e "\tSublime"
# TO DO:
#   descobrir como baixar pacote sublime com wget
# sudo dpkg -i ./sublime_$ARCHITETURE.deb &>> .log

echo -e "\tAtom"
wget -nv https://atom.io/download/deb -O $TMP_FOLDER$atom &>> .log
sudo dpkg -i $TMP_FOLDER$atom &>> .log

# Instalando ferramentas para dev
echo "Instalando ferramentas para dev ..."
echo -e "\tGit"
sudo apt-get install git &>> .log

echo -e "\tFirefox Developer"
wget -nv "https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=linux$ARCHITETURE" -O $TMP_FOLDER$firefox &>> .log
sudo tar -xjf $TMP_FOLDER$firefox -C $TMP_FOLDER && sudo mv $TMP_FOLDER/firefox /opt/firefox_dev &>> .log
# TO DO:
#   descobrir como copiar o ícone para pasta correta
# cp Firefox\ Developer.desktop ~/Área\ de\ Trabalho/Firefox\ Developer.desktop &>> .log

echo  -e "\tChromium"
sudo apt-get install -y chromium-browser &>> .log

echo -e "\tFilezilla"
sudo apt-get install -y filezilla &>> .log
