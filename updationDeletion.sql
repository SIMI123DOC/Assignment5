
-- =================================
-- TASK-4: UPDATE SUPPLIER PHONE
-- =================================

-- BEFORE UPDATE
SELECT *
FROM Supplier
WHERE supplier_id = 1;

-- UPDATE PHONE NUMBER
UPDATE Supplier
SET supplier_phone = '9998887770'
WHERE supplier_id = 1;

-- AFTER UPDATE
SELECT *
FROM Supplier
WHERE supplier_id = 1;


-- =================================
-- TASK-4: DELETE DISCONTINUED SKU
-- =================================

-- BEFORE DELETE
SELECT *
FROM Product
WHERE SKU = 'S110';

-- CHECK INVENTORY
SELECT *
FROM Inventory
WHERE product_id = 30;

-- DELETE INVENTORY FIRST
DELETE FROM Inventory
WHERE product_id = 30;

-- DELETE PRODUCT
DELETE FROM Product
WHERE SKU = 'S110';

-- AFTER DELETE
SELECT *
FROM Product
WHERE SKU = 'S110';

SELECT *
FROM Inventory
WHERE product_id = 30;
