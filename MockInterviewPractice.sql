-- First mock interview

-- Write a query that tells me how many people are in our database.
SELECT COUNT(1) AS people_count
FROM person


-- What are some queries you’d run to sanity check the robustness of this table?
SELECT COUNT(*)
FROM person
WHERE first_name IS NULL OR
		last_name IS NULL OR
		date_of_birth IS NULL

-- This counts the amount of rows in the table that has at least one NULL in a row.
-- That gives me a specific number and following that I could do a query for individual column to see the amount of missing values

-- Make a query that shows a duplicate of rows
SELECT *, 
	COUNT(*) AS duplicate_count
FROM person
GROUP By 1, 2, 3
HAVING duplicate_count > 1

-- you group by all three columns to show how many rows have the EXACT SAME values in all columns
-- to find duplicates accurately, you must group by all columns you want to compare


-- Write a query that tells me how many people have the same first name.
SELECT first_name, 
		COUNT(*) AS first_name_count
FROM person
GROUP BY first_name
HAVING COUNT(*) > 1
ORDER BY first_name_count


-- HARD ONE! Create a histogram which displays the distribution of people’s ages
	-- So write a query that allows me to make a histogram that distributes people ages 
-- my original answer:


SELECT
	CASE
		WHEN age BETWEEN 0 AND 9 THEN '0-9'
		WHEN age BETWEEN 10 AND 19 THEN '0-9'
		WHEN age BETWEEN 20 AND 29 THEN '0-9'
		WHEN age BETWEEN 30 AND 39 THEN '0-9'
		WHEN age BETWEEN 40 AND 49 THEN '0-9'
		WHEN age BETWEEN 50 AND 59 THEN '0-9'
		WHEN age BETWEEN 60 AND 69 THEN '0-9'
		WHEN age BETWEEN 70 AND 79 THEN '0-9'
		WHEN age BETWEEN 80 AND 89 THEN '0-9'
		WHEN age BETWEEN 90 AND 99 THEN '0-9'
		ELSE '100+' END AS age_range,
		COUNT(*) AS count 
FROM (
	SELECT FLOOR(DATEDIFF(CURRENT_DATE, date_of_birth) / 365.25) AS age
	FROM person
	WHERE date_of_birth IS NOT NULL
	)
GROUP BY age_range
ORDER BY age_range

--different way:

SELECT CONCAT(FLOOR(age / 10) * 10, '-', FLOOR(age / 10) * 10 + 9) AS age_bin,
		COUNT(*) AS age_count
FROM (
	SELECT FLOOR(DATEDIFF(CURRENT_DATE, date_of_birth) / 365.25) AS age
	FROM person
	WHERE date_of_birth IS NOT NULL )
GROUP BY 1
ORDER BY 1




























































