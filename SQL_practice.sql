-- Creating the table
CREATE TABLE person (
	person_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	date_of_birth DATE);

INSERT INTO Person (person_id, First_name, Last_name, Date_of_birth) VALUES
(1, 'Zara', 'The Princess', '1980-05-25'),
(2, 'Pepper', 'The Dog', '2010-08-15'),
(3, 'Jess', NULL, '1993-03-06'),
(4, 'Will', 'Brazil', '1992-09-18'),
(5, 'Anna', 'Smith', '1985-10-12'),
(6, 'Chris', 'Johnson', '1979-04-22'),
(7, 'Jess', 'Doe', '1995-07-01'),
(8, 'Zara', 'Brown', '2000-11-30'),
(9, 'Pepper', 'Smith', '2010-08-15'),
(10, 'Liam', 'Jones', '1983-02-28'),

-- Second Set
(11, 'Ella', 'White', '1982-06-15'),
(12, 'Oscar', 'Green', '1990-03-22'),
(13, 'Luna', 'Black', '2001-12-02'),
(14, 'Will', 'Knight', '1990-09-18'),
(15, 'Sophia', 'Smith', '1985-10-12'),
(16, 'Chris', 'Johnson', '1981-04-22'),
(17, 'Lara', 'Doe', '1994-08-07'),
(18, 'Zara', 'Brown', '1999-11-30'),
(19, 'Pepper', 'Brown', '2011-08-15'),
(20, 'Liam', 'Lewis', '1984-02-28'),

-- Third Set
(21, 'Ethan', 'King', '1980-11-25'),
(22, 'Amelia', 'Queen', '2000-05-30'),
(23, 'Mason', NULL, '1995-06-03'),
(24, 'Lucas', 'Fox', '1992-09-18'),
(25, 'Grace', 'Smith', '1987-12-12'),
(26, 'Chris', 'Taylor', '1980-04-22'),
(27, 'Hanna', 'Doe', '1993-07-14'),
(28, 'Zara', 'Brown', '2002-11-30'),
(29, 'Pepper', 'Clark', '2010-08-15'),
(30, 'Oliver', 'Hughes', '1985-02-28');

INSERT INTO Person (person_id, First_name, Last_name, Date_of_birth) VALUES
-- Duplicates of existing rows
(31, 'Zara', 'The Princess', '1980-05-25'),
(32, 'Pepper', 'The Dog', '2010-08-15'),
(33, 'Jess', NULL, '1993-03-06'),
(34, 'Will', 'Brazil', '1992-09-18'),
(35, 'Anna', 'Smith', '1985-10-12'),
(36, 'Chris', 'Johnson', '1979-04-22'),
(37, 'Jess', 'Doe', '1995-07-01'),
(38, 'Zara', 'Brown', '2000-11-30'),
(39, 'Pepper', 'Smith', '2010-08-15'),
(40, 'Liam', 'Jones', '1983-02-28'),
(41, 'Ella', 'White', '1982-06-15'),
(42, 'Oscar', 'Green', '1990-03-22'),
(43, 'Luna', 'Black', '2001-12-02'),
(44, 'Will', 'Knight', '1990-09-18'),
(45, 'Sophia', 'Smith', '1985-10-12'),
(46, 'Chris', 'Johnson', '1981-04-22'),
(47, 'Lara', 'Doe', '1994-08-07'),
(48, 'Zara', 'Brown', '1999-11-30'),
(49, 'Pepper', 'Brown', '2011-08-15'),
(50, 'Liam', 'Lewis', '1984-02-28'),

-- Variations of existing data
(51, 'Ella', 'Brown', '1982-06-15'),
(52, 'Oscar', 'Jones', '1990-03-22'),
(53, 'Luna', 'Smith', '2001-12-02'),
(54, 'Will', 'Green', '1990-09-18'),
(55, 'Sophia', 'Johnson', '1985-10-12'),
(56, 'Chris', 'Doe', '1981-04-22'),
(57, 'Lara', 'Brown', '1994-08-07'),
(58, 'Zara', 'White', '1999-11-30'),
(59, 'Pepper', 'King', '2011-08-15'),
(60, 'Liam', 'Taylor', '1984-02-28'),
(61, 'Ethan', 'Smith', '1980-11-25'),
(62, 'Amelia', 'Johnson', '2000-05-30'),
(63, 'Mason', 'Clark', '1995-06-03'),
(64, 'Lucas', 'Fox', '1992-09-18'),
(65, 'Grace', 'Smith', '1987-12-12'),
(66, 'Chris', 'Taylor', '1980-04-22'),
(67, 'Hanna', 'Doe', '1993-07-14'),
(68, 'Zara', 'Brown', '2002-11-30'),
(69, 'Pepper', 'Clark', '2010-08-15'),
(70, 'Oliver', 'Hughes', '1985-02-28'),

-- Completely new data entries
(71, 'Ava', 'Miller', '1988-04-10'),
(72, 'Ethan', 'Wilson', '1975-02-15'),
(73, 'Liam', 'Thomas', '1993-11-22'),
(74, 'Sophia', 'Harris', '1999-07-09'),
(75, 'Mason', 'Roberts', '2003-05-05'),
(76, 'Lucas', 'Lewis', '1980-12-25'),
(77, 'Emma', 'Walker', '1995-03-30'),
(78, 'Lily', 'King', '1987-06-17'),
(79, 'James', 'Scott', '1982-10-29'),
(80, 'Charlotte', 'Adams', '1990-01-01'),
(81, 'Henry', 'Turner', '1983-08-23'),
(82, 'Jack', 'Mitchell', '1989-05-12'),
(83, 'Avery', 'Baker', '1996-02-20'),
(84, 'Lillian', 'Gonzalez', '1978-07-14'),
(85, 'Ella', 'Brown', '1982-06-15'),
(86, 'Oscar', 'Jones', '1990-03-22'),
(87, 'Luna', 'Smith', '2001-12-02'),
(88, 'Will', 'Green', '1990-09-18'),
(89, 'Sophia', 'Johnson', '1985-10-12'),
(90, 'Chris', 'Doe', '1981-04-22');


-- 1 Data Retrieval & Aggregation
-- a) Write a query to retrieve the top 10 most common last names from the Person table, along with their frequencies.
SELECT last_name AS 'Last Name',
		COUNT(*) AS count
FROM person
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- b) Retrieve the average age of individuals grouped by first name.
SELECT first_name,
		AVG(age) AS average_age
FROM (	SELECT first_name,
				FLOOR(DATEDIFF(CURRENT_DATE(), date_of_birth) / 365.25) AS age
		FROM person  
		WHERE date_of_birth IS NOT NULL) AS derived_table
GROUP BY 1
LIMIT 20;

-- c) Write a query that calculates the median age of all individuals in the database.




-- 2 Data Cleaning & Manipulation
-- a) Find all entries with null or missing last_name values and replace them with 'Unknown'.
UPDATE person
SET last_name = 'Unknown'
WHERE last_name IS NULL or last_name = '';

-- b) Identify and remove duplicate rows based on first_name and last_name.
-- first I see how many rows are duplicate based on first and last name
SELECT first_name,
		last_name,
		COUNT(*) AS count_of_duplicates
FROM person  
GROUP BY 1, 2
ORDER BY 3 DESC;


























-- Make sure to commit and push the file:
-- git status
-- git add SQL_practice.sql
-- git commit -m "Updated SQL practice file"
-- git push
