#!/bin/bash
# Создаем папки для томов

# - tgshop/database
# -- MariaDB
# --- Конфигурация
sudo mkdir -p ./docker/.volumes/database/conf
sudo chown -R 999:docker ./docker/.volumes/database/conf
# --- Логи
sudo mkdir -p ./docker/.volumes/database/logs
sudo chown -R 999:docker ./docker/.volumes/database/logs
# --- Данные
sudo mkdir -p ./docker/.volumes/database/data
sudo chown -R 999:docker ./docker/.volumes/database/data

# - tgshop/migration
# -- alembic
# --- Миграции
sudo mkdir -p ./docker/.volumes/migration/data
sudo chown -R 999:docker ./docker/.volumes/migration/data

# - tgshop/proxy
# -- NGINX
# --- Конфигурация
sudo mkdir -p ./docker/.volumes/proxy/conf
sudo chown -R 999:docker ./docker/.volumes/proxy/conf
# --- Логи
sudo mkdir -p ./docker/.volumes/proxy/logs
sudo chown -R 999:docker ./docker/.volumes/proxy/logs
