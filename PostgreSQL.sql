TABLE-person

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    age INTEGER,
    height INTEGER,
    city VARCHAR(300),
    favorite_color VARCHAN(100)
);

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Bob', 18, 182, 'Salt Lake City', 'Yellow'),
('Dylan', 25, 160, 'Houston', 'Green'),
('Carly', 30, 140, 'San Diego', 'Blue'),
('Tyler', 50. 174, 'Las Vegas', 'Red'),
('Lucy', 22, 133, 'Seattle', 'Purple');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person 
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');



TABLE-orders

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(150),
    product_price NUMERIC,
    quantity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(0, 'Marshmellows', 1.49, 2);
(1, 'Chicken Wings', 4.21, 1);
(2, 'Beef Jerky', 2.99, 3);
(2, 'Rice', 2.00, 5);
(3, 'Fries', 1.79, 2);

SELECT * orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;



TABLE-artist

INSERT INTO artists
(name)
VALUES
('Blink-182')

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';



TABLE-employee

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT MAX(birth_date) fROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'lethbridge';

SELECT COUNT(*) fROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROm invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;

