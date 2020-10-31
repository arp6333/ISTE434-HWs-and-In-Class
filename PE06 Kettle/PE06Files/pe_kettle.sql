/* PE_Kettle */
DROP DATABASE IF EXISTS PE_KETTLE;
CREATE DATABASE PE_KETTLE;
USE PE_KETTLE;
DROP TABLE IF EXISTS product;
CREATE TABLE product (
  id char(6) PRIMARY KEY,
  name varchar(30),
  unitPrice int,
  categoryName varchar(20));