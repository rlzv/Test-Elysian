-- Insert initial data into Pharmacy table
INSERT INTO pharmacy (name, address) VALUES ('Dona', '123 Main St');
INSERT INTO pharmacy (name, address) VALUES ('Vlad', '456 Elm St');

-- Insert initial data into Product table
INSERT INTO product (name, price, category) VALUES ('Aspirin', 5.99, 'analgesic');
INSERT INTO product (name, price, category) VALUES ('Amoxicillin', 10.99, 'antibiotic');
INSERT INTO product (name, price, category) VALUES ('Vitamin C', 15.99, 'vitamin');

-- Insert initial data into Order table
INSERT INTO orders (pharmacy_id, order_date) VALUES (1, '2023-08-01');
INSERT INTO orders (pharmacy_id, order_date) VALUES (2, '2023-08-15');

-- Insert initial data into OrderLine table
INSERT INTO order_line (order_id, product_id, quantity) VALUES (1, 1, 10);
INSERT INTO order_line (order_id, product_id, quantity) VALUES (1, 2, 5);
INSERT INTO order_line (order_id, product_id, quantity) VALUES (2, 3, 7);
INSERT INTO order_line (order_id, product_id, quantity) VALUES (2, 1, 3);
