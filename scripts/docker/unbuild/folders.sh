#!/bin/bash
# Удаляем папки для томов

# - tgshop/database
# -- MariaDB
# --- Конфигурация
sudo rm -r ./docker/.volumes/database/conf
# --- Логи
sudo rm -r ./docker/.volumes/database/logs
# --- Данные
sudo rm -r ./docker/.volumes/database/data

# - tgshop/migration
# -- alembic
# --- Миграции
sudo rm -r ./docker/.volumes/migration/data

# - tgshop/reverse-proxy
# -- NGINX
# --- Конфигурация
sudo rm -r ./docker/.volumes/proxy/conf
# --- Логи
sudo rm -r ./docker/.volumes/proxy/logs