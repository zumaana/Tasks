WHENEVER SQLERROR EXIT 1;

-- Add a new column to store supplier information
ALTER TABLE xx_inventory_t ADD SUPPLIER_NAME VARCHAR2(255);

-- Increase stock for all products in a specific category
UPDATE xx_inventory_t 
SET AVAILABLE_STOCK = AVAILABLE_STOCK + 20
WHERE CATEGORY_ID = 2; -- Adjust the category ID as needed

-- Apply a 5% discount on all products priced above 100
UPDATE xx_inventory_t 
SET PRICE = PRICE * 0.95
WHERE PRICE > 100;

COMMIT;
