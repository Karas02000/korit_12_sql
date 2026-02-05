-- SELECT * FROM orderdetails;
-- SELECT * FROM orders;
-- SELECT * FROM products;
-- SELECT * FROM staff;
-- SELECT * FROM users;

-- SELECT u.username 
-- 	FROM users u
-- 		JOIN staff s ON u.id = s.user_id;

-- SELECT
-- 	'Find' AS 'First',
-- 	'Insight' AS 'Second',
-- 	'with SQL' AS 'Third';
	
-- SELECT 28+891;
-- SELECT 19*27;
-- SELECT 37+ 172 AS 'Plus', 25*78 AS 'Times', 'I Love SQL!' AS 'Result';

-- SELECT *
-- 	FROM users;
-- SELECT id, phone, city
-- 	FROM users
-- 		WHERE is_marketing_agree = 1
-- 			AND country = 'Korea'
-- 				LIMIT 3;

-- SELECT *
-- 	FROM orderdetails;
-- SELECT *
-- 	FROM users
-- 		LIMIT 7;
-- SELECT id, user_id, order_date
-- 	FROM orders;

-- SELECT *
-- 	FROM users
-- 	WHERE country = 'Korea';

-- SELECT *
-- 	FROM users
-- 	WHERE country != 'Korea';
	
-- SELECT *
-- 	FROM users
-- 	WHERE country = 'Korea'
-- 	AND id = 10;

-- SELECT *
-- 	FROM users
-- 	WHERE  created_at >= '2010-12-01'
-- 		AND created_at <= '2011-01-01';

-- SELECT *
-- 	FROM users
-- 	WHERE country IN ('Korea', 'USA', 'UK');

-- SELECT *
-- 	FROM users
-- 	WHERE country NOT IN ('Korea', 'USA', 'UK');

-- SELECT *
-- 	FROM users
-- 	WHERE created_at = '';

-- SELECT *
-- 	FROM users
-- 	WHERE created_at IS NOT NULL;

SELECT created_at, phone, city, country
	FROM users
	WHERE city = 'México D.F.';
	
SELECT *, price-discount_price AS 'discount_amount' 
	FROM products
	WHERE id <= 20
	AND price >= 30;
	
SELECT *
	FROM users
	WHERE country NOT IN('Korea', 'Canada', 'Belgium');
	
SELECT 'id', 'name', 'price'
	FROM products
	WHERE 'name' LIKE 'N%';

SELECT *
	FROM orders
	WHERE order_date
	NOT BETWEEN '2015-07-01' AND '2015-10-31';

