#!/bin/bash

# Documentação
#
# 1. Erros
#  Verifique o arquivo `.log`
#  Nele estarão todas as exceções que tenham ocorrido durante a execução do script

TMP_FOLDER="tmp/" && export TMP_FOLDER
SCRIPTS_FOLDER="scripts/" && export SCRIPTS_FOLDER
FILES_FOLDER="files/" && export FILES_FOLDER

firefox="firefox.tar.bz2" && export firefox
atom="atom.deb" && export atom

# Definição da versão do SO
if ((`uname -m` == "x86_64")); then
        ARCHITETURE="64";
else
        ARCHITETURE="32";
fi

export ARCHITETURE

# Habilitação do arquivo log
exec 2> .log

# Atualização do sistema
yes | sudo apt-get update &> .log
yes | sudo apt-get upgrade &> .log

yes | ./scripts/acessories.sh

yes | ./scripts/tools.sh
