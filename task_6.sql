-- task_6.sql
-- Script to insert multiple customer records into alx_book_store database

USE alx_book_store;

INSERT INTO customers (customer_id, first_name, last_name, email, address) 
VALUES 
    (2, 'Blessing', 'Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
    (3, 'Obed', 'Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
    (4, 'Nehemial', 'Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');