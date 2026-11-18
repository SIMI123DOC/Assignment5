
-- ==========================================
-- SET 1: RETAIL INVENTORY MANAGEMENT
-- FILE 1: schema.sql
--TASK 1:create table
-- ==========================================

-- 1. CREATE DATABASE
CREATE DATABASE IF NOT EXISTS retail_inventory;

USE retail_inventory;

-- 2. CATEGORY TABLE
CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL UNIQUE
) ENGINE = InnoDB;

-- 3. SUPPLIER TABLE
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    supplier_phone VARCHAR(15) NOT NULL UNIQUE
) ENGINE = InnoDB;

-- 4. WAREHOUSE TABLE
CREATE TABLE Warehouse (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_name VARCHAR(100) NOT NULL UNIQUE
) ENGINE = InnoDB;

-- 5. PRODUCT TABLE
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    SKU VARCHAR(20) NOT NULL UNIQUE,
    product_name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    supplier_id INT NOT NULL,

    FOREIGN KEY (category_id)
        REFERENCES Category(category_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (supplier_id)
        REFERENCES Supplier(supplier_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- 6. INVENTORY TABLE
CREATE TABLE Inventory (
    product_id INT NOT NULL,
    warehouse_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    reorder_level INT NOT NULL DEFAULT 5,

    PRIMARY KEY (product_id, warehouse_id),

    CONSTRAINT chk_quantity CHECK (quantity >= 0),
    CONSTRAINT chk_reorder CHECK (reorder_level >= 0),

    FOREIGN KEY (product_id)
        REFERENCES Product(product_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    FOREIGN KEY (warehouse_id)
        REFERENCES Warehouse(warehouse_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- 7. VERIFY TABLES
SHOW TABLES;

-- 8. VERIFY TABLE STRUCTURES
DESC Category;
DESC Supplier;
DESC Warehouse;
DESC Product;
DESC Inventory;
