-- Table 'user'
DROP TABLE IF EXISTS "user";

CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR NOT NULL,
  password VARCHAR NOT NULL,
  role VARCHAR(50) NOT NULL
);

-- Table 'manual'
DROP TABLE IF EXISTS "manual";

CREATE TABLE "manual" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  file VARCHAR NOT NULL,
  timestamp DATE NOT NULL
);

-- Table 'notification'
DROP TABLE IF EXISTS "notification";

CREATE TABLE "notification" (
  id SERIAL PRIMARY KEY,
  datetime TIMESTAMP NOT NULL,
  id_user INTEGER NOT NULL REFERENCES "user" (id)
);

-- Table 'assignment'
DROP TABLE IF EXISTS "assignment";

CREATE TABLE "assignment" (
  id SERIAL PRIMARY KEY,
  id_manual INTEGER NOT NULL REFERENCES "manual" (id),
  id_user INTEGER NOT NULL REFERENCES "user" (id),
  status VARCHAR NOT NULL
);

-- Foreign Keys 
-- No need to re-add foreign keys in PostgreSQL, they are defined during table creation.

-- Table Properties
-- No need to set table properties, PostgreSQL handles these differently.

-- Test Data
-- You can insert test data manually.
