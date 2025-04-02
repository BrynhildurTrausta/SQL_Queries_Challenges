-- CASE Queries

SELECT player_name,
		state
	CASE WHEN state = 'Ca' THEN 'Yes'
		ELSE NULL END as from_cal
FROM benn.college_football_players
ORDER BY from_cal


SELECT player_name, height
	CASE WHEN height > 200 THEN 'over 200'
		WHEN height > 190 AND height <= 200 THEN '190-200'
		WHEN height > 180 AND height <= 190 THEN '180-190'
		ELSE '180 or under' END AS height_group
FROM benn.college_football_players


SELECT *
	CASE WHEN class = 'Junior' OR class = 'Senior' Then player_name
		ELSE NULL END AS upperclassmen
FROM benn.college_football_players

SELECT *
	CASE WHEN year IN ('JR', 'SR') THEN player_name
		ELSE NULL END AS upperclass_name
FROM benn.college_football_players



SELECT CASE WHEN state IN ('CA', 'OR', 'WA') THEN 'West Coast'
			WHEN state = 'TX' THEN 'Texas'
			ELSE 'Other' END AS region
			COUNT(1) AS players
FROM benn.college_football_players
WHERE weight >= 300
GROUP BY 1


SELECT CASE WHEN year IN ('FR', 'SO') THEN 'Underclass'
			WHEN year IN ('JR', 'SR') THEN 'Upperclass'
			ELSE 'other' END AS class_group
		SUM(weight) AS combined_weight
FROM benn.college_football_players
WHERE state = 'CA'
GROUP BY 1


SELECT state,
	COUNT(CASE WHEN year = 'FR' THEN 'FR') AS fr_count
	COUNT(CASE WHEN year = 'SO' THEN 'SO') AS so_count
	COUNT(CASE WHEN year = 'JR' THEN 'JR') AS jr_count
	COUNT(CASE WHEN year = 'SR' THEN 'SR') AS sr_count
	COUNT(1) AS total_number_of_Players
FROM benn.college_football_players
GROUP BY state
ORDER BY total_number_of_Players DESC


SELECT CASE WHEN school_name >= 'm' THEN 'A-M' AS 'A-M_count'
			WHEN school_name < 'm' THEN 'N-Z' AS 'N-Z_count'
			ELSE NULL END AS school_name_group
		COUNT(1) AS players 
FROM benn.college_football_players
GROUP BY school_name_group



-- SQL Distinct


-- Write a query that returns the unique values in the year column, in chronological order.
SELECT DISTINCT year
FROM tutorial.aapl_historical_stock_price
ORDER BY year


-- Write a query that counts the number of unique values in the month column for each year.
SELECT year, COUNT(DISTINCT month) AS month_count
FROM tutorial.aapl_historical_stock_price
GROUP BY year
ORDER BY year


-- Write a query that separately counts the number of unique values in the month column 
	-- and the number of unique values in the `year` column.
SELECT COUNT(DISTINCT month) AS month_count,
	COUNT(DISTINCT year) AS year_count
FROM tutorial.aapl_historical_stock_price


-- SQL Joins

-- figure out which conference has the highest average weight
SELECT teams.conference AS conference
	AVG(players.weight) AS average_weight
FROM benn.college_football_players college_football_players
JOIN benn.college_football_teams teams 
ON team.school_name = players.school_name
GROUP by teams.conference
ORDER BY AVG(players.weight) DESC


-- Write a query that selects the school name, player name, position, and weight for every player in Georgia, 
	-- ordered by weight (heaviest to lightest). Be sure to make an alias for the table, and to reference all column names in relation to the alias.
SELECT players.school_name, 
		players.player_name, 
		players.position, 
		players.weight 
FROM benn.college_football_players players
WHERE players.state = 'GA'
ORDER BY players.weight DESC


-- Write a query to see all columns in the joined tables
SELECT *
FROM benn.college_football_players players  
JOIN benn.college_football_teams teams 
	ON players.school_name = teams.school_name


-- Write a query that displays player names, school names and conferences for schools in the "FBS (Division I-A Teams)" division.
SELECT players.player_name,
		players.school_name,
		teams.conference
FROM benn.college_football_players players 
JOIN benn.college_football_teams teams 
ON players.school_name = teams.school_name
WHERE teams.division = 'FBS (Division I-A Teams)'


-- Joining two crunchbase tables
SELECT *
FROM tutorial.crunchbase_companies companies 
JOIN tutorial.crunchbase_acquisitions acq 
ON companies.permalink = acq.company_permalink



-- Write a query that performs an inner join between the tutorial.crunchbase_acquisitions table and the tutorial.crunchbase_companies table, 
	-- but instead of listing individual rows, count the number of non-null rows in each table.
SELECT COUNT(companies.permalink) AS companies_rowcount
		COUNT(acq.company_permalink) AS acq_rowcount
FROM tutorial.crunchbase_companies companies 
JOIN tutorial.crunchbase_acquisitions acq 
ON companies.permalink = acq.company_permalink


-- Modify the query above to be a LEFT JOIN. Note the difference in results.
SELECT COUNT(companies.permalink) AS companies_rowcount
		COUNT(acq.company_permalink) AS acq_rowcount
FROM tutorial.crunchbase_companies companies 
LEFT JOIN tutorial.crunchbase_acquisitions acq
ON company.permalink = acq.company_permalink


-- Count the number of unique companies (don't double-count companies) and unique acquired companies by state. 
 --Do not include results for which there is no state data, and order by the number of acquired companies from highest to lowest.
SELECT company.state_code,
		COUNT(DISTINCT companies.permalink) AS company_count,
		COUNT(DISTINCT acq.company_permalink) AS acq_company_count
FROM tutorial.crunchbase_companies companies 
LEFT JOIN tutorial.crunchbase_acquisitions acq 
ON companies.permalink = acq.company_permalink
WHERE companies.state_code IS NOT NULL
GROUP BY state
ORDER BY acq_company_count DESC

































