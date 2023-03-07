#!/bin/bash
# Создаем и запускаем контейнеры

# Удаляем контейнеры
source ./scripts/docker/unbuild.sh

# Создаем контейнеры
source ./scripts/docker/build.sh

# Запускаем контейнеры
sudo docker compose -f ./docker/docker-compose.yml --env-file ./docker/envs/general up -d