#!/bin/bash
# Удаляем тома

# - tgshop/database - база данных
# -- MariaDB
# --- Конфигурация
sudo docker volume rm tgshop_mariadb-conf
# --- Логи
sudo docker volume rm tgshop_mariadb-logs
# --- Данные
sudo docker volume rm tgshop_mariadb-data

# - tgshop/reverse-proxy - nginx
# -- NGINX
# --- Конфигурация
sudo docker volume rm tgshop_nginx-conf
# --- Логи
sudo docker volume rm tgshop_nginx-logs