#!/bin/bash

echo "¿Qué versión de MySQL deseas utilizar? (5.7 / 8.0)"
read mysql_version

if [ "$mysql_version" == "5.7" ]; then
  sudo service mysql stop
  sudo service mysql@5.7 start
  echo "MySQL 5.7 se ha iniciado"
elif [ "$mysql_version" == "8.0" ]; then
  sudo service mysql@5.7 stop
  sudo service mysql start
  echo "MySQL 8.0 se ha iniciado"
else
  echo "Error: Versión de MySQL no válida. Por favor ingrese '5.7' o '8.0'"
fi
