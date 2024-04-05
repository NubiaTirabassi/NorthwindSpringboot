-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-04-04 21:51:17.94

-- tables
-- Table: addresses
CREATE TABLE addresses (
    id int  NOT NULL,
    contacts_id int  NOT NULL,
    info varchar(250)  NOT NULL,
    city varchar(150)  NOT NULL,
    region varchar(150)  NOT NULL,
    postal_code varchar(20)  NOT NULL,
    country varchar(100)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT addresses_pk PRIMARY KEY (id)
);

-- Table: categories
CREATE TABLE categories (
    id int  NOT NULL,
    name varchar(100)  NOT NULL,
    description text  NOT NULL,
    picture bytea  NOT NULL,
    CONSTRAINT categories_pk PRIMARY KEY (id)
);

-- Table: contacts
CREATE TABLE contacts (
    id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT contacts_pk PRIMARY KEY (id)
);

-- Table: customers
CREATE TABLE customers (
    id int  NOT NULL,
    name varchar(150)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT customers_pk PRIMARY KEY (id)
);

-- Table: customers_contacts
CREATE TABLE customers_contacts (
    id int  NOT NULL,
    customers_id int  NOT NULL,
    contacts_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT customers_contacts_pk PRIMARY KEY (id)
);

-- Table: demograhpics
CREATE TABLE demograhpics (
    id int  NOT NULL,
    long decimal(12,8)  NOT NULL,
    lat decimal(12,8)  NOT NULL,
    description varchar(150)  NULL,
    contacts_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT demograhpics_pk PRIMARY KEY (id)
);

-- Table: emails
CREATE TABLE emails (
    id int  NOT NULL,
    contacts_id int  NOT NULL,
    address varchar(100)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT emails_pk PRIMARY KEY (id)
);

-- Table: employees
CREATE TABLE employees (
    id int  NOT NULL,
    employees_id int  NULL,
    hire_date date  NOT NULL,
    resignation_date date  NOT NULL,
    CONSTRAINT employees_pk PRIMARY KEY (id)
);

-- Table: employees_contacts
CREATE TABLE employees_contacts (
    id int  NOT NULL,
    employees_id int  NOT NULL,
    contacts_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT employees_contacts_pk PRIMARY KEY (id)
);

-- Table: employees_details
CREATE TABLE employees_details (
    id int  NOT NULL,
    first_name varchar(150)  NOT NULL,
    last_name varchar(150)  NULL,
    title varchar(100)  NULL,
    title_of_courtesy varchar(100)  NULL,
    brith_date int  NOT NULL,
    employees_id int  NOT NULL,
    notes text  NULL,
    CONSTRAINT employees_details_pk PRIMARY KEY (id)
);

-- Table: orders
CREATE TABLE orders (
    id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT orders_pk PRIMARY KEY (id)
);

-- Table: orders_contacts
CREATE TABLE orders_contacts (
    id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    orders_id int  NOT NULL,
    contacts_id int  NOT NULL,
    CONSTRAINT orders_contacts_pk PRIMARY KEY (id)
);

-- Table: orders_customers
CREATE TABLE orders_customers (
    id int  NOT NULL,
    customers_id int  NOT NULL,
    orders_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT orders_customers_pk PRIMARY KEY (id)
);

-- Table: orders_details
CREATE TABLE orders_details (
    id int  NOT NULL,
    unit_price decimal(12,2)  NOT NULL,
    quantity int  NOT NULL,
    discount decimal(12,2)  NOT NULL,
    orders_id int  NOT NULL,
    products_id int  NOT NULL,
    CONSTRAINT orders_details_pk PRIMARY KEY (id)
);

-- Table: orders_employees
CREATE TABLE orders_employees (
    id int  NOT NULL,
    orders_id int  NOT NULL,
    employees_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT orders_employees_pk PRIMARY KEY (id)
);

-- Table: orders_shippers
CREATE TABLE orders_shippers (
    id int  NOT NULL,
    shippers_id int  NOT NULL,
    orders_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT orders_shippers_pk PRIMARY KEY (id)
);

-- Table: phones
CREATE TABLE phones (
    id int  NOT NULL,
    contacts_id int  NOT NULL,
    number varchar(20)  NOT NULL,
    date_register date  NOT NULL,
    closer_register date  NULL,
    CONSTRAINT phones_pk PRIMARY KEY (id)
);

-- Table: pictures
CREATE TABLE pictures (
    id int  NOT NULL,
    path text  NOT NULL,
    CONSTRAINT pictures_pk PRIMARY KEY (id)
);

-- Table: pictures_categories
CREATE TABLE pictures_categories (
    id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    categories_id int  NOT NULL,
    pictures_id int  NOT NULL,
    CONSTRAINT pictures_categories_pk PRIMARY KEY (id)
);

-- Table: pictures_employees
CREATE TABLE pictures_employees (
    id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NOT NULL,
    pictures_id int  NOT NULL,
    employees_id int  NOT NULL,
    CONSTRAINT pictures_employees_pk PRIMARY KEY (id)
);

-- Table: pictures_products
CREATE TABLE pictures_products (
    id int  NOT NULL,
    products_id int  NOT NULL,
    pictures_id int  NOT NULL,
    date_regsiter date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT pictures_products_pk PRIMARY KEY (id)
);

-- Table: products
CREATE TABLE products (
    id int  NOT NULL,
    categories_id int  NOT NULL,
    suppliers_id int  NOT NULL,
    name varchar(150)  NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY (id)
);

-- Table: shippers
CREATE TABLE shippers (
    id int  NOT NULL,
    name varchar(150)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT shippers_pk PRIMARY KEY (id)
);

-- Table: shippers_contacts
CREATE TABLE shippers_contacts (
    id int  NOT NULL,
    shippers_id int  NOT NULL,
    contacts_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT shippers_contacts_pk PRIMARY KEY (id)
);

-- Table: stock
CREATE TABLE stock (
    id int  NOT NULL,
    quantity int  NOT NULL,
    quantity_per_unit int  NOT NULL,
    reorder_level smallint  NOT NULL,
    stock_address varchar(150)  NOT NULL,
    CONSTRAINT stock_pk PRIMARY KEY (id)
);

-- Table: stock_details
CREATE TABLE stock_details (
    id int  NOT NULL,
    products_id int  NOT NULL,
    stock_id int  NOT NULL,
    unit_price decimal(12,2)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT stock_details_pk PRIMARY KEY (id)
);

-- Table: suppliers
CREATE TABLE suppliers (
    id int  NOT NULL,
    name varchar(150)  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT suppliers_pk PRIMARY KEY (id)
);

-- Table: suppliers_contacts
CREATE TABLE suppliers_contacts (
    id int  NOT NULL,
    suppliers_id int  NOT NULL,
    contacts_id int  NOT NULL,
    date_register date  NOT NULL,
    close_register date  NULL,
    CONSTRAINT suppliers_contacts_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: addresses_contacts (table: addresses)
ALTER TABLE addresses ADD CONSTRAINT addresses_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: customers_contacts_contacts (table: customers_contacts)
ALTER TABLE customers_contacts ADD CONSTRAINT customers_contacts_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: customers_contacts_customers (table: customers_contacts)
ALTER TABLE customers_contacts ADD CONSTRAINT customers_contacts_customers
    FOREIGN KEY (customers_id)
    REFERENCES customers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: demograhpics_contacts (table: demograhpics)
ALTER TABLE demograhpics ADD CONSTRAINT demograhpics_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: emails_contacts (table: emails)
ALTER TABLE emails ADD CONSTRAINT emails_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: employees_contacts_contacts (table: employees_contacts)
ALTER TABLE employees_contacts ADD CONSTRAINT employees_contacts_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: employees_contacts_employees (table: employees_contacts)
ALTER TABLE employees_contacts ADD CONSTRAINT employees_contacts_employees
    FOREIGN KEY (employees_id)
    REFERENCES employees (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: employees_details_employees (table: employees_details)
ALTER TABLE employees_details ADD CONSTRAINT employees_details_employees
    FOREIGN KEY (employees_id)
    REFERENCES employees (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: employees_employees (table: employees)
ALTER TABLE employees ADD CONSTRAINT employees_employees
    FOREIGN KEY (employees_id)
    REFERENCES employees (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_contacts_contacts (table: orders_contacts)
ALTER TABLE orders_contacts ADD CONSTRAINT orders_contacts_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_contacts_orders (table: orders_contacts)
ALTER TABLE orders_contacts ADD CONSTRAINT orders_contacts_orders
    FOREIGN KEY (orders_id)
    REFERENCES orders (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_customers_customers (table: orders_customers)
ALTER TABLE orders_customers ADD CONSTRAINT orders_customers_customers
    FOREIGN KEY (customers_id)
    REFERENCES customers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_customers_orders (table: orders_customers)
ALTER TABLE orders_customers ADD CONSTRAINT orders_customers_orders
    FOREIGN KEY (orders_id)
    REFERENCES orders (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_details_orders (table: orders_details)
ALTER TABLE orders_details ADD CONSTRAINT orders_details_orders
    FOREIGN KEY (orders_id)
    REFERENCES orders (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_details_products (table: orders_details)
ALTER TABLE orders_details ADD CONSTRAINT orders_details_products
    FOREIGN KEY (products_id)
    REFERENCES products (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_employees_employees (table: orders_employees)
ALTER TABLE orders_employees ADD CONSTRAINT orders_employees_employees
    FOREIGN KEY (employees_id)
    REFERENCES employees (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_employees_orders (table: orders_employees)
ALTER TABLE orders_employees ADD CONSTRAINT orders_employees_orders
    FOREIGN KEY (orders_id)
    REFERENCES orders (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_shippers_orders (table: orders_shippers)
ALTER TABLE orders_shippers ADD CONSTRAINT orders_shippers_orders
    FOREIGN KEY (orders_id)
    REFERENCES orders (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: orders_shippers_shippers (table: orders_shippers)
ALTER TABLE orders_shippers ADD CONSTRAINT orders_shippers_shippers
    FOREIGN KEY (shippers_id)
    REFERENCES shippers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: phones_contacts (table: phones)
ALTER TABLE phones ADD CONSTRAINT phones_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_categories_categories (table: pictures_categories)
ALTER TABLE pictures_categories ADD CONSTRAINT pictures_categories_categories
    FOREIGN KEY (categories_id)
    REFERENCES categories (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_categories_pictures (table: pictures_categories)
ALTER TABLE pictures_categories ADD CONSTRAINT pictures_categories_pictures
    FOREIGN KEY (pictures_id)
    REFERENCES pictures (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_employees_employees (table: pictures_employees)
ALTER TABLE pictures_employees ADD CONSTRAINT pictures_employees_employees
    FOREIGN KEY (employees_id)
    REFERENCES employees (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_employees_pictures (table: pictures_employees)
ALTER TABLE pictures_employees ADD CONSTRAINT pictures_employees_pictures
    FOREIGN KEY (pictures_id)
    REFERENCES pictures (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_products_pictures (table: pictures_products)
ALTER TABLE pictures_products ADD CONSTRAINT pictures_products_pictures
    FOREIGN KEY (pictures_id)
    REFERENCES pictures (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pictures_products_products (table: pictures_products)
ALTER TABLE pictures_products ADD CONSTRAINT pictures_products_products
    FOREIGN KEY (products_id)
    REFERENCES products (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: products_categories (table: products)
ALTER TABLE products ADD CONSTRAINT products_categories
    FOREIGN KEY (categories_id)
    REFERENCES categories (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: products_suppliers (table: products)
ALTER TABLE products ADD CONSTRAINT products_suppliers
    FOREIGN KEY (suppliers_id)
    REFERENCES suppliers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: shippers_contacts_contacts (table: shippers_contacts)
ALTER TABLE shippers_contacts ADD CONSTRAINT shippers_contacts_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: shippers_contacts_shippers (table: shippers_contacts)
ALTER TABLE shippers_contacts ADD CONSTRAINT shippers_contacts_shippers
    FOREIGN KEY (shippers_id)
    REFERENCES shippers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stock_details_products (table: stock_details)
ALTER TABLE stock_details ADD CONSTRAINT stock_details_products
    FOREIGN KEY (products_id)
    REFERENCES products (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: stock_details_stock (table: stock_details)
ALTER TABLE stock_details ADD CONSTRAINT stock_details_stock
    FOREIGN KEY (stock_id)
    REFERENCES stock (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: suppliers_contacts_contacts (table: suppliers_contacts)
ALTER TABLE suppliers_contacts ADD CONSTRAINT suppliers_contacts_contacts
    FOREIGN KEY (contacts_id)
    REFERENCES contacts (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: suppliers_contacts_suppliers (table: suppliers_contacts)
ALTER TABLE suppliers_contacts ADD CONSTRAINT suppliers_contacts_suppliers
    FOREIGN KEY (suppliers_id)
    REFERENCES suppliers (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

