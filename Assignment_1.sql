CREATE DATABASE CharlieCompany;

USE CharlieCompany;
CREATE TABLE Product(
    Product_id INT,
    Product_name VARCHAR(50),
    Quantitiy INT,
    PRIMARY KEY(Product_id)
);

CREATE TABLE Component(
    Component_id INT,
    Component_name VARCHAR(50),
    Description VARCHAR(50),
    PRIMARY KEY(Component_id)

);

CREATE TABLE Supplier(

    Supplier_id INT,
    Supplier_name VARCHAR(50),
    Supplier_location VARCHAR(50),
    Supplier_country VARCHAR(50),
    Is_active BIT
    PRIMARY KEY(Supplier_id)
    
    
);

CREATE TABLE ProductComponent(
    Quantity_component INT,
    Product_id INT,
    Component_id INT, 
    FOREIGN KEY(Product_id) REFERENCES Product (Product_id),
    FOREIGN KEY(Component_id) REFERENCES Component (Component_id),
    PRIMARY KEY (Component_id, Product_id )
);

CREATE TABLE ComponentSupplier(
    Supplier_id INT,
    Component_id INT, 
    OrderDate DATE,
    Quantity INT,
     FOREIGN KEY(Component_id) REFERENCES Component (Component_id),
     FOREIGN KEY(Supplier_id) REFERENCES Supplier (Supplier_id),
     PRIMARY KEY(Component_id, Supplier_id)

);

