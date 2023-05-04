# !/bin/bash


#Abre una terminal y ejecuta el siguiente comando para instalar PHP 7 y PHP 8:

#sudo apt-get install php7.4 php8.0 libapache2-mod-php7.4 libapache2-mod-php8.0 php7.4-cli php8.0-cli php7.4-common php8.0-common php7.4-json php8.0-json php7.4-mysql php8.0-mysql php7.4-mbstring php8.0-mbstring php7.4-zip php8.0-zip php7.4-gd php8.0-gd php7.4-xml php8.0-xml php7.4-curl php8.0-curl

#Crea un archivo llamado phpswitch en la carpeta /usr/local/bin/ 

# sudo nano /usr/local/bin/phpswitch

#Copia y pega el siguiente código en el archivo y guarda los cambios

#!/bin/bash
sudo update-alternatives --config php
sudo update-alternatives --config phar
sudo update-alternatives --config phpize
sudo update-alternatives --config php-config
sudo service apache2 restart

#Ejecuta el siguiente comando para dar permisos de ejecución al script

#sudo chmod +x /usr/local/bin/phpswitch
