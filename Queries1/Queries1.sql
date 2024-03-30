SELECT * FROM users LIMIT 20;

----
SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' and '1989-12-21';
---
SELECT email, created_at FROM users
WHERE created_at < '2017-05-01';
------
SELECT email from users
WHERE campaign LIKE 'BBB%';
-----
SELECT email
FROM users
WHERE campaign LIKE '%-2';
------
SELECT campaign, test
FROM users
WHERE campaign IS NOT null AND test IS NOT null;
----
SELECT campaign, test
FROM users
WHERE campaign IS NOT null AND test IS NOT null;

-----
id	user_id	order_date	restaurant_id	item_name	special_instructions
----
-- 1
-- What are the column names?
SELECT * 
FROM orders
LIMIT 10;


-- 2 
-- How recent is this data?
SELECT DISTINCT order_date
FROM orders;


-- 3
-- Instead of selecting all the columns using *, 
-- write a query that selects only the special_instructions column.

-- Limit the result to 20 rows.
SELECT special_instructions 
FROM orders
LIMIT 20;


-- 4 
-- Can you edit the query so that we are only 
-- returning the special instructions that are not empty?
SELECT special_instructions
FROM orders 
WHERE special_instructions IS NOT NULL;

-- 5
-- Let’s go even further and sort the instructions 
-- in alphabetical order (A-Z).
SELECT special_instructions 
FROM orders
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions ASC;

-- 6
-- Let’s search for special instructions that have the word ‘sauce’.

-- Are there any funny or interesting ones? 
SELECT special_instructions 
FROM orders
WHERE special_instructions LIKE '%sauce%';

-- 7
-- Let’s search for special instructions that have the word ‘door’.
-- Any funny or interesting ones?
SELECT special_instructions 
FROM orders
WHERE special_instructions LIKE '%door%';

-- 8
-- Let’s search for special instructions that have the word ‘box’.
-- Any funny or interesting ones?
SELECT special_instructions 
FROM orders
WHERE special_instructions LIKE '%box%';


-- Instead of just returning the special instructions, also return their order ids.

-- For more readability:
-- Rename id as ‘#’
-- Rename special_instructions as ‘Notes’
SELECT id AS '#',special_instructions AS 'Notes'
FROM orders
WHERE special_instructions IS NOT NULL;


-------
SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads>'20000'
GROUP BY price;