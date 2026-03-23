-- Drop tables if they exist
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS subscriptions;
DROP TABLE IF EXISTS payments;

-- Customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    signup_date TEXT,
    plan_type TEXT
);

INSERT INTO customers (customer_id, signup_date, plan_type) VALUES
(1, '2025-01-01', 'Basic'),
(2, '2025-01-05', 'Premium'),
(3, '2025-01-10', 'Basic'),
(4, '2025-02-01', 'Premium'),
(5, '2025-02-15', 'Basic'),
(6, '2025-03-01', 'Premium'),
(7, '2025-03-10', 'Basic'),
(8, '2025-03-15', 'Premium'),
(9, '2025-04-01', 'Basic'),
(10, '2025-04-05', 'Premium');

-- Subscriptions table
CREATE TABLE subscriptions (
    subscription_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    start_date TEXT,
    end_date TEXT
);

INSERT INTO subscriptions (customer_id, start_date, end_date) VALUES
(1, '2025-01-01', '2025-03-01'),
(2, '2025-01-05', NULL),
(3, '2025-01-10', '2025-02-15'),
(4, '2025-02-01', NULL),
(5, '2025-02-15', '2025-04-01'),
(6, '2025-03-01', NULL),
(7, '2025-03-10', '2025-03-25'),
(8, '2025-03-15', NULL),
(9, '2025-04-01', NULL),
(10, '2025-04-05', NULL);

-- Payments table
CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    payment_date TEXT,
    amount REAL
);

INSERT INTO payments (customer_id, payment_date, amount) VALUES
(1, '2025-01-01', 10),
(1, '2025-02-01', 10),
(2, '2025-01-05', 20),
(2, '2025-02-05', 20),
(3, '2025-01-10', 10),
(4, '2025-02-01', 20),
(5, '2025-02-15', 10),
(6, '2025-03-01', 20),
(7, '2025-03-10', 10),
(8, '2025-03-15', 20),
(9, '2025-04-01', 10),
(10, '2025-04-05', 20);
