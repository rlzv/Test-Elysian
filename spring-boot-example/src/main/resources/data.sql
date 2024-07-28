INSERT INTO Pharmacies (name, address) VALUES ('Dona', '123 Street');
INSERT INTO Pharmacies (name, address) VALUES ('Vlad', '456 Avenue');

INSERT INTO Products (name, price) VALUES ('Painkiller', 5.99);
INSERT INTO Products (name, price) VALUES ('Antibiotic', 15.99);
INSERT INTO Products (name, price) VALUES ('Vitamin C', 3.49);

INSERT INTO Categories (name) VALUES ('Analgesic');
INSERT INTO Categories (name) VALUES ('Antibiotic');
INSERT INTO Categories (name) VALUES ('Vitamins');

INSERT INTO ProductCategory (product_id, category_id) VALUES (1, 1);
INSERT INTO ProductCategory (product_id, category_id) VALUES (2, 2);
INSERT INTO ProductCategory (product_id, category_id) VALUES (3, 3);

INSERT INTO Orders (pharmacy_id, order_date, total_amount) VALUES (1, '2023-08-15', 50.00);
INSERT INTO Orders (pharmacy_id, order_date, total_amount) VALUES (2, '2023-08-20', 75.00);

INSERT INTO OrderLines (order_id, product_id, quantity) VALUES (1, 1, 5);
INSERT INTO OrderLines (order_id, product_id, quantity) VALUES (1, 2, 3);
INSERT INTO OrderLines (order_id, product_id, quantity) VALUES (2, 2, 5);
INSERT INTO OrderLines (order_id, product_id, quantity) VALUES (2, 3, 10);
