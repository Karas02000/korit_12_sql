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

-- SELECT created_at, phone, city, country
-- 	FROM users
-- 	WHERE city = 'México D.F.';
-- 	
-- SELECT *, price-discount_price AS 'discount_amount' 
-- 	FROM products
-- 	WHERE id <= 20
-- 	AND price >= 30;
-- 	
-- SELECT *
-- 	FROM users
-- 	WHERE country NOT IN('Korea', 'Canada', 'Belgium');
-- 	
-- SELECT 'id', 'name', 'price'
-- 	FROM products
-- 	WHERE 'name' LIKE 'N%';
-- 
-- SELECT *
-- 	FROM orders
-- 	WHERE order_date
-- 	NOT BETWEEN '2015-07-01' AND '2015-10-31';


-- SELECT *
-- 	FROM users
-- 	ORDER BY id ASC;
-- 
-- SELECT *
-- 	FROM users
-- 	ORDER BY id DESC;
-- 	
-- 
-- SELECT *
-- 	FROM users
-- 	ORDER BY city ASC;
-- 		
-- 
-- SELECT *
-- 	FROM users
-- 	ORDER BY city DESC;
-- 	
-- 	
-- SELECT *
-- 	FROM users
-- 	ORDER BY created_at DESC;
	
-- SELECT *
-- 	FROM users
-- 	ORDER BY 1 DESC;
-- 	
-- SELECT username, phone, city, country, id
-- 	FROM users
-- 	ORDER BY 1 ASC;
-- 	
-- SELECT username, phone, city, country, id
-- 	FROM users
-- 	ORDER BY id ASC;	
	
-- SELECT city, id
-- 	FROM users
-- 	ORDER BY
-- 		city	DESC,
-- 		id		ASC;

-- SELECT *
-- 	FROM products
-- 	ORDER BY price ASC;
-- 
-- SELECT *
-- 	FROM orders
-- 	ORDER BY order_date DESC;
-- 	
-- SELECT *
-- 	FROM orderdetails
-- 	ORDER BY product_id DESC,
-- 		quantity ASC;

-- SELECT COUNT(*) FROM users;

-- SELECT COUNT(DISTINCT country) AS countries FROM users;

-- SELECT ROUND(AVG(price),2) AS avgPrice FROM products;

-- SELECT SUBSTR(created_at, 1, 10) AS 'day', SUBSTR(created_at, 1, 7) AS 'month', created_at
-- 	FROM users;
-- 
-- SELECT LENGTH(username) AS len, username FROM users ORDER BY len ASC;

-- SELECT ROUND(SUM(price),2) AS '합계' FROM products;
-- SELECT ROUND(SUM(price),2) AS '합계' FROM products WHERE id <= 30;
-- SELECT COUNT(DISTINCT id) AS '유저수' FROM users WHERE SUBSTR(created_at, 1, 7) BETWEEN '2010-10' AND '2010-12';
-- SELECT COUNT(DISTINCT id) AS '유저수' FROM users WHERE LENGTH(username) <= 17;

-- SELECT COUNT(DISTINCT id) FROM users WHERE country = 'Korea';
-- SELECT COUNT(DISTINCT id) FROM users WHERE country = 'USA';
-- SELECT COUNT(DISTINCT id) FROM users WHERE country IN ('Korea','USA');


-- SELECT country, COUNT(DISTINCT id) AS '나라별 유저 수' FROM users GROUP BY country;
-- 
-- SELECT COUNT(DISTINCT country) FROM users;

SELECT COUNT(DISTINCT id) FROM users WHERE country = 'Korea' AND is_marketing_agree = 1;

SELECT COUNT(DISTINCT id) FROM users WHERE country = 'UK' AND is_marketing_agree = 1;

SELECT country, is_marketing_agree, COUNT(DISTINCT id) AS '동의 사용자'
	FROM users
	GROUP BY country, is_marketing_agree
	ORDER BY country ASC, is_marketing_agree DESC;