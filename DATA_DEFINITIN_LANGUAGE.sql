CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT PK_Product PRIMARY KEY,
    Product_name VARCHAR2(20) CONSTRAINT NN_Product NOT NULL,
    Price NUMBER CONSTRAINT P_Product CHECK(Price > 0)
);

CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT PK_Customer PRIMARY KEY,
    Customer_name VARCHAR2(20) CONSTRAINT NN_Customer NOT NULL,
    Customer_tel NUMBER
);

CREATE TABLE Orders (
    CONSTRAINT FK_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
    CONSTRAINT FK_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    Quantity NUMBER,
    Total_amount NUMBER
);

ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Customer ADD Order_date DATE DEFAULT SYSDATE;

