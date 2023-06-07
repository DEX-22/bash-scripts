# !/bin/bash


sudo docker exec -i amg mysql -u root -ppassword "$1" < "$2"


