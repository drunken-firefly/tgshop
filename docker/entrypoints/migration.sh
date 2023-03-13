#!/bin/bash

poetry run python3 init.py

poetry run alembic revision --autogenerate

if [[ "$DB_MIGRATE" == "true" ]]; then
    poetry run alembic upgrade head
fi