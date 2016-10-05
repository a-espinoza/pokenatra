DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS teams;


CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  poke_type VARCHAR,
  cp INTEGER,
  img_url TEXT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level INTEGER,
  img_url TEXT
);

CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  name VARCHAR
);
