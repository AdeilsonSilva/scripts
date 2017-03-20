#!/bin/bash

# Documentação
#
# 1. Erros
#  Verifique o arquivo `.log`
#  Nele estarão todas as exceções que tenham ocorrido durante a execução do script

if ((`uname -m` == "x86_64")); then
        version="64";
else
        version="32";
fi

# Atualização do sistema
sudo apt-get update &> .log
sudo apt-get upgrade -y &> .log

./scripts/acessories.sh
./scripts/tools.sh
