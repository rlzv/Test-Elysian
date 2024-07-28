-- Creating the Pharmacies table
CREATE TABLE Pharmacies (
                            id BIGINT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(255) NOT NULL,
                            address VARCHAR(255)
);

-- Creating the Products table
CREATE TABLE Products (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          price DECIMAL(10, 2) NOT NULL
);

-- Creating the Categories table
CREATE TABLE Categories (
                            id BIGINT AUTO_INCREMENT PRIMARY KEY,
                            name VARCHAR(255) NOT NULL
);

-- Creating the ProductCategory table (many-to-many relationship)
CREATE TABLE ProductCategory (
                                 product_id BIGINT,
                                 category_id BIGINT,
                                 PRIMARY KEY (product_id, category_id),
                                 FOREIGN KEY (product_id) REFERENCES Products(id),
                                 FOREIGN KEY (category_id) REFERENCES Categories(id)
);

-- Creating the Orders table
CREATE TABLE Orders (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        pharmacy_id BIGINT,
                        order_date DATE,
                        total_amount DECIMAL(10, 2),
                        FOREIGN KEY (pharmacy_id) REFERENCES Pharmacies(id)
);

-- Creating the OrderLines table
CREATE TABLE OrderLines (
                            id BIGINT AUTO_INCREMENT PRIMARY KEY,
                            order_id BIGINT,
                            product_id BIGINT,
                            quantity INT,
                            FOREIGN KEY (order_id) REFERENCES Orders(id),
                            FOREIGN KEY (product_id) REFERENCES Products(id)
);
