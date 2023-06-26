CREATE DATABASE IF NOT EXISTS gamesdb;

USE gamesdb;
CREATE TABLE IF NOT EXISTS customers(
    customer_id INT NOT NULL AUTO_INCREMENT,
    name varchar(40) NOT NULL,
    email varchar(60) NOT NULL,
    house_number int NOT NULL,
    post_code varchar(8) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS products(
    product_id INT NOT NULL AUTO_INCREMENT,
    title varchar(40) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL,
    PRIMARY KEY (product_id)
    );
    
CREATE TABLE IF NOT EXISTS orders(
   order_id INT NOT NULL AUTO_INCREMENT,
   customer_id INT NOT NULL,
   product_id INT NOT NULL,
   date_placed DATE NOT NULL,
   PRIMARY KEY (order_id),
   FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
    );

INSERT INTO customers(name, email, house_number, post_code)
VALUES ('Hella', 'ogobenehella@gmail.com', '757', 'B16 8FT');

INSERT INTO products(title, price, stock)
VALUES('sistar Hero', 42.99, 35);

INSERT INTO orders(customer_id, product_id, date_placed)
VALUES(1, 1, '2023-06-26');



