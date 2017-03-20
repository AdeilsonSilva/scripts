 #!/bin/bash

# Atualização dos pacotes
sudo apt-get update

# Instalação do Apache
echo "Instalando ferramentas ..."
echo -e "\tApache"
sudo apt-get install apache2 &> .log

# Modificação da permissão de uma das pastas
sudo chmod -R 765 /var/www/html

# Configuração do Apache
sudo a2enmod rewrite
cp files/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

# Solicitação de reinício da aplicação do Apache
sudo service apache2 restart

# Instalação do PHP
echo -e "\tPHP"
sudo apt-get install php7.0 php7.0-fpm libapache2-mod-php7.0 php7.0-mysql -y &> .log

# Instalação do MySQL
echo -e "\tMySQL"
sudo apt-get install mysql-client mysql-server &> .log

# Instalação do phpMyAdmin
echo -e "\tphpMyAdmin"
sudo apt-get install phpMyAdmin &> .log

# Configuração do phpMyAdmin
cp files/apache/apache2.conf /etc/apache2/apache2.conf
cp files/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
