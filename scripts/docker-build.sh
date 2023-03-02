#!/bin/bash

# Делаем образы

# - tgshop/database
docker build -f ./services/database/Dockerfile -t tgshop/database .

# - tgshop/reverse-proxy
docker build -f ./services/reverse-proxy/Dockerfile -t tgshop/reverse-proxy .


# Создаем папки для томов

# - tgshop/database
# -- MariaDB
# --- Конфигурация
sudo mkdir -p ./services/database/.dockervol/mariadb-conf
sudo chown -R 999:docker ./services/database/.dockervol/mariadb-conf
# --- Логи
sudo mkdir -p ./services/database/.dockervol/mariadb-logs
sudo chown -R 999:docker ./services/database/.dockervol/mariadb-logs
# --- Данные
sudo mkdir -p ./services/database/.dockervol/mariadb-data
sudo chown -R 999:docker ./services/database/.dockervol/mariadb-data

# - tgshop/reverse-proxy
# -- NGiNX
# --- Конфигурация
sudo mkdir -p ./services/reverse-proxy/.dockervol/nginx-conf
sudo chown -R 999:docker ./services/reverse-proxy/.dockervol/nginx-conf
# --- Логи
sudo mkdir -p ./services/reverse-proxy/.dockervol/nginx-logs
sudo chown -R 999:docker ./services/reverse-proxy/.dockervol/nginx-logs
