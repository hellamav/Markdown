CREATE DATABASE IF NOT exists gamesdb;

Use gamesdb;
drop table if exists orders;
drop table if exists customers;
create table customers (
      id INT PRIMARY KEY AUTO_INCREMENT,
      first_name VARCHAR(20) NOT NULL UNIQUE,
      last_name VARCHAR(20) NOT NULL,
      age INT NOT NULL
      );
      
      DROP TABLE IF EXISTS orders;
      CREATE TABLE IF NOT EXISTS orders (
           id INT PRIMARY KEY AUTO_INCREMENT,
           fk_cust_id INT NOT NULL,
           FOREIGN KEY (fk_cust_id) REFERENCES customers(id)
	  );
