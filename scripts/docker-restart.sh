#!/bin/bash

# Останавливаем сервисы
sudo docker compose -f ./services/docker-compose.yml down

# Запускаем сервисы
sudo docker compose -f ./services/docker-compose.yml up