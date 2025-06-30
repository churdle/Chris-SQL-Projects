-- Project: Design A Store Database --
-- Skills: CREATE TABLE, INSERT, SELECT, WHERE, ORDER BY --
-- Goal: Store and analyze inventory data for electronics based on attributes like price and refundability --

-- Created a table to store electronics data --
CREATE TABLE electronics (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price INTEGER,
    color TEXT,
    refundable TEXT
);

-- Inserted sample data into the electronics table --
INSERT INTO electronics (id, name, price, color, refundable) VALUES
    (1,  'HP Laptop', 300, 'grey', 'No'),
    (2,  'Flatscreen TV', 500, 'black', 'No'),
    (3,  'RING Doorbell', 90, 'white', 'yes'),
    (4,  'Bose Bluetooth Speaker', 340, 'black', 'yes'),
    (5,  'Macbook Laptop', 1000, 'rose gold', 'no'),
    (6,  'Wireless Mouse', 49, 'pink', 'yes'),
    (7,  'Echo Dot', 75, 'grey', 'yes'),
    (8,  'Nikon Camera', 360, 'black', 'No'),
    (9,  'iPhone', 1000, 'rose gold', 'no'),
    (10, 'Apple Watch', 200, 'black', 'yes'),
    (11, 'HP Printer', 400, 'grey', 'yes'),
    (12, 'GE Refrigerator', 1300, 'silver', 'no'),
    (13, 'PlayStation 4', 200, 'black', 'yes'),
    (14, 'iPad', 500, 'white', 'yes'),
    (15, 'GE Washing Machine', 900, 'white', 'no');

-- Selected all items, ordered by price from lowest to highest --
SELECT *
FROM electronics
ORDER BY price;

-- Selected all refundable electronics --
SELECT *
FROM electronics
WHERE refundable = 'yes';
