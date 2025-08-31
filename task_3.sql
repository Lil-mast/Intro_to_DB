-- List all tables in the specified database
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'alx_book_store' 
AND TABLE_TYPE = 'BASE TABLE';