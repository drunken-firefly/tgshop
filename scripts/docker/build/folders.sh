#!/bin/bash
# Создаем папки для томов

# - tgshop/database - база данных
# -- MariaDB
# --- Конфигурация
sudo mkdir -p ./docker/.volumes/database/mariadb-conf
sudo chown -R 999:docker ./docker/.volumes/database/mariadb-conf
# --- Логи
sudo mkdir -p ./docker/.volumes/database/mariadb-logs
sudo chown -R 999:docker ./docker/.volumes/database/mariadb-logs
# --- Данные
sudo mkdir -p ./docker/.volumes/database/mariadb-data
sudo chown -R 999:docker ./docker/.volumes/database/mariadb-data

# - tgshop/reverse-proxy - nginx
# -- NGINX
# --- Конфигурация
sudo mkdir -p ./docker/.volumes/reverse-proxy/nginx-conf
sudo chown -R 999:docker ./docker/.volumes/reverse-proxy/nginx-conf
# --- Логи
sudo mkdir -p ./docker/.volumes/reverse-proxy/nginx-logs
sudo chown -R 999:docker ./docker/.volumes/reverse-proxy/nginx-logs