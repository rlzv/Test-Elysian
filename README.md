# Test-Elysian

The system involves several key entities: Pharmacy, Product, Order, and OrderLine. The application includes functionalities to record orders from pharmacies, track products, and generate various reports based on the data. The database is set up and initialized using schema.sql and data.sql scripts. These scripts define the database schema and insert data. Most of the logic is done in ReportController and ReportService.

Entities:

Pharmacy: Represents a pharmacy, including details like name and address.
Product: Represents a product sold by the warehouse, including attributes like name, price, and category.
Order: Represents an order placed by a pharmacy. It includes information about the pharmacy and the date of the order.
OrderLine: Represents the details of an order, specifying the product, quantity ordered, and associated order.

Repositories:

PharmacyRepository: Interface for database operations related to the Pharmacy entity.
ProductRepository: Interface for database operations related to the Product entity.
OrderRepository: Interface for database operations related to the Order entity. Includes custom queries for filtering orders by date and pharmacy.
OrderLineRepository: Interface for database operations related to the OrderLine entity.

Service Layer:

ReportService: Contains the business logic for generating reports. This includes:
Fetching orders for a specific pharmacy and month.
Calculating the total amount spent by a pharmacy.
Calculating the average order value.
Counting the number of antibiotic orders.
Determining the pharmacy with the highest total order value in a given year.

Controller Layer:

ReportController: REST controller that exposes endpoints for the report functionalities provided by ReportService. These endpoints handle HTTP GET requests and return the required data, such as orders, total amounts and reports.

Endpoints:

Orders in August by Dona: http://localhost:8080/api/report/orders?pharmacyName=Dona&month=8

Total Amount for Dona in August: http://localhost:8080/api/report/total-amount?pharmacyName=Dona&month=8

Average Order Value for Dona in August: http://localhost:8080/api/report/average-value?pharmacyName=Dona&month=8

Antibiotic Orders for Vlad in 2023: http://localhost:8080/api/report/antibiotic-orders?pharmacyName=Vlad&year=2023

Top Ordering Pharmacy in 2023: http://localhost:8080/api/report/top-pharmacy?year=2023
