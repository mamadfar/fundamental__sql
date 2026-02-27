CREATE DATABASE mydb1;

CREATE SCHEMA mydb2;
-- DB names are case-sensetive in Linux

CREATE DATABASE mydb1; -- Error: Database exists

CREATE DATABASE IF NOT EXISTS mydb1; -- ✅ It will show a warning and the other lines will be excuted

DROP DATABASE mydb1;

DROP DATABASE mydb2;

DROP DATABASE mydb1; -- Error: Database doesn't exists

DROP DATABASE IF EXISTS mydb1; -- ✅

CREATE DATABASE `my-db`;