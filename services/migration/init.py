"""_"""

import os
from sqlalchemy_utils import database_exists, create_database


DB_CONNECTOR = os.getenv("DB_CONNECTOR")
DB_USER = os.getenv("DB_USER")
DB_PASS = os.getenv("DB_PASS")
DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_NAME = os.getenv("DB_NAME")
DB_URL = DB_CONNECTOR + "://" + \
    DB_USER + ":" + DB_PASS + "@" + \
    DB_HOST + ":" + DB_PORT + "/" + DB_NAME

if not database_exists(DB_URL):
    create_database(DB_URL)
