#!/bin/bash
# Удаляем тома

# - tgshop/database
# -- MariaDB
# --- Конфигурация
sudo docker volume rm tgshop_database-conf
# --- Логи
sudo docker volume rm tgshop_database-logs
# --- Данные
sudo docker volume rm tgshop_database-data

# - tgshop/migration
# -- alembic
# --- Миграции
sudo docker volume rm tgshop_migration-data

# - tgshop/proxy
# -- NGINX
# --- Конфигурация
sudo docker volume rm tgshop_proxy-conf
# --- Логи
sudo docker volume rm tgshop_proxy-logs