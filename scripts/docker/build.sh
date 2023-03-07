#!/bin/bash
# Cборка образов, создание папок для томов

# Собираем образы
source ./scripts/docker/build/images.sh

# Создаем папки для томов
source ./scripts/docker/build/folders.sh