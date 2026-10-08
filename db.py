import os
from sqlalchemy import create_engine, text


class Database:
    def __init__(self):
        self.engine = create_engine(os.environ["DATABASE_URL"], pool_pre_ping=True)

    def get_all(self, table):
        with self.engine.connect() as conn:
            result = conn.execute(text(f"SELECT nombre, especie, color FROM {table}"))
            return [dict(row._mapping) for row in result]