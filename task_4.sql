-- task_4.sql
-- Script to show the full description of the books table without using DESCRIBE/EXPLAIN

SELECT 
    COLUMN_NAME AS 'Field',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Null',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'books'
ORDER BY 
    ORDINAL_POSITION;