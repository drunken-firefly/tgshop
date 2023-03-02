#!/bin/bash

# Останавливаем контейнеры
sudo docker compose -f ./services/docker-compose.yml down

# Удаляем контейнеры
docker rm tgshop_database
docker rm tgshop_reverse-proxy

# Удаляем образы
docker rmi tgshop/database
docker rmi tgshop/reverse-proxy

# Удаляем тома
docker volume rm tgshop_mariadb-conf
docker volume rm tgshop_mariadb-logs
docker volume rm tgshop_mariadb-data

docker volume rm tgshop_nginx-conf
docker volume rm tgshop_nginx-logs

# Удаляем каталоги
sudo rm -r ./services/database/.dockervol
sudo rm -r ./services/reverse-proxy/.dockervol
