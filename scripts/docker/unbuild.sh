#!/bin/bash
# Удаление образов, томов и папок для томов

# Останавливаем docker-compose
sudo docker compose -f ./docker/docker-compose.yml down

# Удаляем контейнеры
source ./scripts/docker/unbuild/containers.sh

# Удаляем образы
source ./scripts/docker/unbuild/images.sh

# Удаляем тома
source ./scripts/docker/unbuild/volumes.sh

# Удаляем папки для томов
source ./scripts/docker/unbuild/folders.sh