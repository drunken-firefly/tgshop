#!/bin/bash

# Cбрасываем образы, тома и каталоги
source ./scripts/docker-reset.sh

# Создаем образы и каталоги
source ./scripts/docker-build.sh

# Запускаем сервисы
sudo docker compose -f ./services/docker-compose.yml up -d

# Меняем права доступа на mariadb-logs
((cnt = 0))
while [ ! -f ./services/database/.dockervol/mariadb-logs/error.log ] && [ $cnt -le 30 ]
do
    sleep 1s
    ((cnt++))
done
sudo chmod -R 777 ./services/database/.dockervol/mariadb-logs

# Перезапускаем
sudo docker compose -f ./services/docker-compose.yml down

# Запускаем сервисы
sudo docker compose -f ./services/docker-compose.yml up