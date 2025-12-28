CREATE ROLE appuser LOGIN PASSWORD 'appsecret';
CREATE DATABASE salesdb OWNER appuser;

\connect salesdb

CREATE TABLE IF NOT EXISTS product (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(255),
  brand VARCHAR(255),
  madein VARCHAR(255),
  price REAL
);

GRANT ALL PRIVILEGES ON TABLE product TO appuser;
