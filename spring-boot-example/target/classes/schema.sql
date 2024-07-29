-- Create Pharmacy table
CREATE TABLE IF NOT EXISTS pharmacy (
                                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                        name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
    );

-- Create Product table
CREATE TABLE IF NOT EXISTS product (
                                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                       name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(255)
    );

-- Create Order table
CREATE TABLE IF NOT EXISTS orders (
                                      id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                      pharmacy_id BIGINT NOT NULL,
                                      order_date DATE NOT NULL,
                                      FOREIGN KEY (pharmacy_id) REFERENCES pharmacy(id)
    );

-- Create OrderLine table
CREATE TABLE IF NOT EXISTS order_line (
                                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                          order_id BIGINT NOT NULL,
                                          product_id BIGINT NOT NULL,
                                          quantity INT NOT NULL,
                                          FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
    );
