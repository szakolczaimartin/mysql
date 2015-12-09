

CREATE TABLE pizza_db.Customer (
	Id INTEGER NOT NULL AUTO_INCREMENT,
	Full_name VARCHAR(100) NOT NULL,
    Address VARCHAR(500) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    Mobile VARCHAR(50) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE pizza_db.Pizza (
Id INTEGER NOT NULL AUTO_INCREMENT,
    Pizza_name VARCHAR(100) NOT NULL,
    Price_ft INTEGER NOT NULL,
	PRIMARY KEY(Id)
);


CREATE TABLE pizza_db.Orders (
Id INTEGER NOT NULL AUTO_INCREMENT,
    Pizza_Id INTEGER NOT NULL,
    CustomerId INTEGER NOT NULL,
	FOREIGN KEY (Pizza_id) REFERENCES Pizza(Id),
	FOREIGN KEY(Customer_Id) REFERENCES Customer(Id),
	PRIMARY KEY(Id)
);