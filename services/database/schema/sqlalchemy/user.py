"""_"""

from sqlalchemy import Column, BigInteger

from schema.base import _Base


class _User(_Base):
    """_"""

    __tablename__ = "users"

    id = Column(BigInteger, primary_key=True)