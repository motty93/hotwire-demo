-- must change your name and databasename, passward.
CREATE ROLE hotwire_demo LOGIN PASSWORD 'hotwire_demo';
CREATE DATABASE hotwire_demo;
GRANT ALL PRIVILEGES ON DATABASE hotwire_demo TO hotwire_demo;
ALTER ROLE hotwire_demo WITH CREATEROLE CREATEDB;
