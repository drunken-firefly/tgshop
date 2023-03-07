#!/bin/bash
# Удаляем папки для томов

# - tgshop/database - база данных
# -- MariaDB
# --- Конфигурация
sudo rm -r ./docker/.volumes/database/mariadb-conf
# --- Логи
sudo rm -r ./docker/.volumes/database/mariadb-logs
# --- Данные
sudo rm -r ./docker/.volumes/database/mariadb-data

# - tgshop/reverse-proxy - nginx
# -- NGINX
# --- Конфигурация
sudo rm -r ./docker/.volumes/reverse-proxy/nginx-conf
# --- Логи
sudo rm -r ./docker/.volumes/reverse-proxy/nginx-logs