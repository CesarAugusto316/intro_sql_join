-- New script in postgres.
-- Date: Sep 11, 2022
-- Time: 3:09:34 PM

CREATE DATABASE test-1;

CREATE TABLE basket_a (
	id int PRIMARY KEY,
	fruit_a varchar(100) NOT NULL	
);

CREATE TABLE basket_b (
	id int PRIMARY KEY,
	fruit_b varchar(100) NOT NULL	
);

INSERT INTO basket_a (id, fruit_a)
	VALUES
		(1, 'apple'),
		(2, 'orange'),
		(3, 'bannana'),
		(4, 'cucumber');
		
INSERT INTO basket_b (id, fruit_b)
	VALUES
		(1, 'orange'),
		(2, 'apple'),
		(3, 'watermelow'),
		(4, 'pear');

-- Inner Join
SELECT * FROM basket_a 
	INNER JOIN basket_b ON fruit_a = fruit_b;

-- Left Join
SELECT
    *
FROM
    basket_a
LEFT JOIN basket_b 
   ON fruit_a = fruit_b;

