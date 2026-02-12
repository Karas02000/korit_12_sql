play_ddlplay_ddl-- SELECT * FROM users u CROSS JOIN orders o ORDER BY u.id;

-- SELECT u.id AS ID, u.username AS Email, u.city AS 거주도시, u.country AS 거주국가, s.first_name AS 이름, s.last_name AS 성
-- 	FROM users u
-- 	JOIN staff s
-- 	ON u.id = s.user_id
-- 	;
-- 
-- SELECT s.id AS 직원ID, s.last_name AS 직원_성, o.id AS 주문ID, o.order_date AS 주문일자
-- 	FROM staff s
-- 	JOIN orders o
-- 	ON s.id = o.staff_id
-- 	WHERE s.id IN(3,5)
-- 	;
-- 
-- SELECT u.country AS 국가, COUNT(DISTINCT o.id) AS 주문수
-- 	FROM users u
-- 	JOIN orders o
-- 	ON u.id = o.user_id
-- 	GROUP BY u.country
-- 	ORDER BY 주문수 DESC
-- 	;
-- 	
-- SELECT o.user_id AS 회원ID, ROUND(SUM(p.price * od.quantity),2) AS 주문가합계, ROUND(SUM(p.discount_price * od.quantity),2) AS 할인가합계
-- 	FROM orders o
-- 	JOIN orderdetails od
-- 	ON o.id = od.order_id
-- 	JOIN products p
-- 	ON od.product_id = p.id
-- 	GROUP BY o.user_id
-- 	ORDER BY 주문가합계 DESC;
-- 	;

-- (SELECT *
-- 		FROM users)
-- UNION ALL
-- (SELECT *
-- 	FROM users);

-- (SELECT id, phone, country, city
-- 		FROM users)
-- UNION ALL
-- (SELECT id, phone, country, city
-- 	FROM users)
-- 	ORDER BY id ASC;
-- 
-- (SELECT * FROM users WHERE country = 'Korea') UNION ALL (SELECT * FROM users WHERE country = 'Mexico');

-- (SELECT * FROM orders WHERE SUBSTR(order_date, 1, 7) = '2015-10')
-- UNION ALL
-- (SELECT * FROM orders WHERE SUBSTR(order_date, 1, 7) = '2015-12');
-- 
-- (SELECT  id, phone AS 연락처, country AS  거주국가, city AS 거주도시, is_marketing_agree AS 마케팅수신_동의여부
-- 	FROM users
-- 	WHERE country = 'USA' AND is_marketing_agree = 1)
-- UNION ALL
-- (SELECT  id, phone AS 연락처, country AS  거주국가, city AS 거주도시, is_marketing_agree AS 마케팅수신_동의여부
-- 	FROM users
-- 	WHERE country = 'France' AND is_marketing_agree = 0)
-- 	ORDER BY 거주국가 ASC;
-- 
-- SELECT  id, phone AS 연락처, country AS  거주국가, city AS 거주도시, is_marketing_agree AS 마케팅수신_동의여부
-- 	FROM users
-- 	WHERE (country = 'USA' AND is_marketing_agree = 1) OR (country = 'France' AND is_marketing_agree = 0)
-- 	ORDER BY 거주국가 ASC;
-- -- UNION을 활용하여 주문 상세 정보 테이블 orderdetails와 제품 정보 테이블 products를 FULL OUTER JOIN 조건으로 결합하여 출력하시오.
-- 
-- (SELECT * FROM orderdetails o LEFT JOIN products p ON o.product_id=p.id)
-- UNION
-- (SELECT * FROM orderdetails o RIGHT JOIN products p ON o.product_id=p.id);

-- SELECT `name`, price, (SELECT ROUND(AVG(price),2) FROM products) AS 평균가격
-- 	FROM products;
	
-- SELECT city, COUNT(city) AS 도시별_회원수
-- 	FROM users
-- 	GROUP BY city
-- 	HAVING COUNT(city) > 2
-- 	ORDER BY 도시별_회원수 DESC;

-- SELECT o.*
-- 	FROM orders o
-- 	JOIN staff s
-- 	ON o.staff_id = s.id
-- 	WHERE s.last_name IN('Kyle','Scott');
-- SELECT *
-- 	FROM orders
-- 	WHERE staff_id IN(SELECT id FROM staff WHERE last_name IN('Kyle','Scott'));
	
-- SELECT *
-- 	FROM products
-- 	WHERE discount_price = (Select MAX(discount_price) FROM products);
-- 	
-- SELECT *
-- 	FROM (SELECT * FROM orders WHERE SUBSTR(order_date, 1,7)='2015-07') o
-- 	INNER JOIN
-- 	(SELECT * FROM orderdetails WHERE quantity >= 50) d
-- 	ON o.id = d.order_id;

SELECT *, ROUND(discount_price/(SELECT MAX(discount_price) FROM products), 3) AS ratioPerMaxPrc
	FROM products;

SELECT u.id, u.phone, u.country, s.user_id, s.last_name, s.first_name
	FROM (SELECT * FROM users WHERE country IN('Korea','Italy')) u
	JOIN (SELECT * FROM staff WHERE birth_date<'1990-01,01') s
	ON u.id = s.user_id;

SELECT country, COUNT(DISTINCT id) AS 고객수
	FROM users
	GROUP BY country
	HAVING 고객수 >= 5
	ORDER BY 고객수 DESC;

SELECT *
	FROM products
	WHERE price = (SELECT MIN(price) FROM products);

SELECT *
	FROM users
	WHERE id IN (SELECT user_id FROM orders WHERE SUBSTR(order_date,1,4) >= '2016');