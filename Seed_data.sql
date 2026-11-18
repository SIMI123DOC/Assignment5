
-- ==========================================
-- SET 1: RETAIL INVENTORY MANAGEMENT
-- TASK 2:SEED DATA
-- ==========================================

USE retail_inventory;

-- 1. CATEGORY DATA
INSERT INTO Category (category_name) VALUES
('Electronics'),
('Accessories'),
('Furniture'),
('Clothing'),
('Groceries'),
('Footwear'),
('Stationery'),
('Home Appliances'),
('Sports'),
('Toys');

-- 2. SUPPLIER DATA
INSERT INTO Supplier (supplier_name, supplier_phone) VALUES
('ABC Traders', '9876543210'),
('XYZ Suppliers', '9876543211'),
('Global Distributors', '9876543212'),
('Tech Solutions', '9876543213'),
('Fresh Products', '9876543214'),
('Fashion Hub', '9876543215'),
('City Wholesale', '9876543216'),
('Smart Supplies', '9876543217'),
('Prime Vendors', '9876543218'),
('Mega Traders', '9876543219');

-- 3. WAREHOUSE DATA
INSERT INTO Warehouse (warehouse_name) VALUES
('Chennai Warehouse'),
('Coimbatore Warehouse'),
('Madurai Warehouse'),
('Trichy Warehouse'),
('Salem Warehouse'),
('Tirunelveli Warehouse'),
('Erode Warehouse'),
('Vellore Warehouse'),
('Thanjavur Warehouse'),
('Kanniyakumari Warehouse');

-- 4. PRODUCT DATA
INSERT INTO Product
(SKU, product_name, category_id, supplier_id)
VALUES
('S101', 'Laptop', 1, 1),
('S102', 'Mouse', 2, 2),
('S103', 'Keyboard', 2, 1),
('S104', 'Office Chair', 3, 3),
('S105', 'T Shirt', 4, 6),
('S106', 'Rice Bag', 5, 5),
('S107', 'Sports Shoes', 6, 7),
('S108', 'Notebook', 7, 8),
('S109', 'Mixer Grinder', 8, 4),
('S110', 'Football', 9, 9);

-- 5. INVENTORY DATA
INSERT INTO Inventory
(product_id, warehouse_id, quantity, reorder_level)
VALUES
(21, 1, 20, 5),
(22, 1, 50, 10),
(23, 2, 30, 8),
(24, 3, 15, 5),
(25, 4, 100, 20),
(26, 5, 200, 50),
(27, 6, 40, 10),
(28, 7, 150, 30),
(29, 8, 25, 5),
(30, 9, 60, 15);

-- 6. VERIFY ALL RECORDS
SELECT * FROM Category;
SELECT * FROM Supplier;
SELECT * FROM Warehouse;
SELECT * FROM Product;
SELECT * FROM Inventory;
