-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-04-04 21:51:17.94

-- foreign keys
ALTER TABLE addresses
    DROP CONSTRAINT addresses_contacts;

ALTER TABLE customers_contacts
    DROP CONSTRAINT customers_contacts_contacts;

ALTER TABLE customers_contacts
    DROP CONSTRAINT customers_contacts_customers;

ALTER TABLE demograhpics
    DROP CONSTRAINT demograhpics_contacts;

ALTER TABLE emails
    DROP CONSTRAINT emails_contacts;

ALTER TABLE employees_contacts
    DROP CONSTRAINT employees_contacts_contacts;

ALTER TABLE employees_contacts
    DROP CONSTRAINT employees_contacts_employees;

ALTER TABLE employees_details
    DROP CONSTRAINT employees_details_employees;

ALTER TABLE employees
    DROP CONSTRAINT employees_employees;

ALTER TABLE orders_contacts
    DROP CONSTRAINT orders_contacts_contacts;

ALTER TABLE orders_contacts
    DROP CONSTRAINT orders_contacts_orders;

ALTER TABLE orders_customers
    DROP CONSTRAINT orders_customers_customers;

ALTER TABLE orders_customers
    DROP CONSTRAINT orders_customers_orders;

ALTER TABLE orders_details
    DROP CONSTRAINT orders_details_orders;

ALTER TABLE orders_details
    DROP CONSTRAINT orders_details_products;

ALTER TABLE orders_employees
    DROP CONSTRAINT orders_employees_employees;

ALTER TABLE orders_employees
    DROP CONSTRAINT orders_employees_orders;

ALTER TABLE orders_shippers
    DROP CONSTRAINT orders_shippers_orders;

ALTER TABLE orders_shippers
    DROP CONSTRAINT orders_shippers_shippers;

ALTER TABLE phones
    DROP CONSTRAINT phones_contacts;

ALTER TABLE pictures_categories
    DROP CONSTRAINT pictures_categories_categories;

ALTER TABLE pictures_categories
    DROP CONSTRAINT pictures_categories_pictures;

ALTER TABLE pictures_employees
    DROP CONSTRAINT pictures_employees_employees;

ALTER TABLE pictures_employees
    DROP CONSTRAINT pictures_employees_pictures;

ALTER TABLE pictures_products
    DROP CONSTRAINT pictures_products_pictures;

ALTER TABLE pictures_products
    DROP CONSTRAINT pictures_products_products;

ALTER TABLE products
    DROP CONSTRAINT products_categories;

ALTER TABLE products
    DROP CONSTRAINT products_suppliers;

ALTER TABLE shippers_contacts
    DROP CONSTRAINT shippers_contacts_contacts;

ALTER TABLE shippers_contacts
    DROP CONSTRAINT shippers_contacts_shippers;

ALTER TABLE stock_details
    DROP CONSTRAINT stock_details_products;

ALTER TABLE stock_details
    DROP CONSTRAINT stock_details_stock;

ALTER TABLE suppliers_contacts
    DROP CONSTRAINT suppliers_contacts_contacts;

ALTER TABLE suppliers_contacts
    DROP CONSTRAINT suppliers_contacts_suppliers;

-- tables
DROP TABLE addresses;

DROP TABLE categories;

DROP TABLE contacts;

DROP TABLE customers;

DROP TABLE customers_contacts;

DROP TABLE demograhpics;

DROP TABLE emails;

DROP TABLE employees;

DROP TABLE employees_contacts;

DROP TABLE employees_details;

DROP TABLE orders;

DROP TABLE orders_contacts;

DROP TABLE orders_customers;

DROP TABLE orders_details;

DROP TABLE orders_employees;

DROP TABLE orders_shippers;

DROP TABLE phones;

DROP TABLE pictures;

DROP TABLE pictures_categories;

DROP TABLE pictures_employees;

DROP TABLE pictures_products;

DROP TABLE products;

DROP TABLE shippers;

DROP TABLE shippers_contacts;

DROP TABLE stock;

DROP TABLE stock_details;

DROP TABLE suppliers;

DROP TABLE suppliers_contacts;

-- End of file.

