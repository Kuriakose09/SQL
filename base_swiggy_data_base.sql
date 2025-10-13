CREATE TABLE customer (id int PRIMARY key AUTO_INCREMENT,`name` varchar(40),phone_number varchar(15));

CREATE TABLE customer_locations (id int PRIMARY key AUTO_INCREMENT,customer_id int,location varchar(40),FOREIGN KEY (customer_id) REFERENCES customer(id));

CREATE TABLE delivery_boy (id int PRIMARY key AUTO_INCREMENT,`name` varchar(40),phone_number varchar(15));

CREATE TABLE hotel (id int PRIMARY key AUTO_INCREMENT,`name` varchar(40),location varchar(40));

CREATE TABLE items (id int PRIMARY key AUTO_INCREMENT,item_name varchar(40));

CREATE TABLE hotel_item (id int PRIMARY KEY AUTO_INCREMENT,item_id int,hotel_id int,price int,FOREIGN KEY (item_id) REFERENCES items(id),FOREIGN KEY (hotel_id) REFERENCES hotel(id));

CREATE TABLE Orders(id int primary key AUTO_INCREMENT,customer_id int,hotel_item_id int,delivery_boy_id int, FOREIGN KEY(customer_id) REFERENCES customer(id),FOREIGN KEY (hotel_item_id) REFERENCES hotel_item(id),FOREIGN KEY (delivery_boy_id) REFERENCES delivery_boy(id));