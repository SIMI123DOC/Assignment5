--TASK:3
USE retail_inventory;

-- 1. DUPLICATE KEY
INSERT INTO Product
(SKU, product_name, category_id, supplier_id)
VALUES
('S101', 'Gaming Laptop', 1, 1);


-- 2. MISSING PARENT RECORD
INSERT INTO Product
(SKU, product_name, category_id, supplier_id)
VALUES
('S111', 'Smart Watch', 99, 1);


-- 3. NEGATIVE QUANTITY
INSERT INTO Inventory
(product_id, warehouse_id, quantity, reorder_level)
VALUES
(21, 2, -50, 5);


-- 4. NULL IN MANDATORY COLUMN
INSERT INTO Product
(SKU, product_name, category_id, supplier_id)
VALUES
('S112', NULL, 1, 1);

