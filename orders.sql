-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(30),
    product_price FLOAT,
    quantity INTEGER
);

-- 2. Add 5 orders to the orders table.
--      A. Make orders for at least two different people.
--      B. person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'USB Cable', 4.99, 2),
(2, 'Notepad', 6.99, 2),
(1, 'Computer Mouse', 29.99, 1),
(2, 'Pens 6-Pack', 5.99, 1),
(3, 'Water Bottle', 15.99, 3);

-- 3. Select all the records from the orders table.
SELECT * FROM orders;

-- 4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- 5. Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- 6. Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;