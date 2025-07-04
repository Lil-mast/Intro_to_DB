import mysql.connector
from mysql.connector import Error

def create_database():
    """Create the alx_book_store database if it doesn't exist"""
    connection = None
    try:
        # Establish connection to MySQL server without specifying a database
        connection = mysql.connector.connect(
            host='localhost',
            user='root',  # Replace with your MySQL username
            password=''    # Replace with your MySQL password
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Create database if not exists (avoids error if DB already exists)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Check if the database was created by attempting to use it
            try:
                cursor.execute("USE alx_book_store")
                print("Database 'alx_book_store' created successfully!")
            except Error as e:
                print(f"Error: {e}")
                
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
    finally:
        # Close connection in a way that won't fail if connection failed
        if connection and connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    create_database()