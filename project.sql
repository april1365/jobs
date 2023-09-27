---Q1
SELECT COUNT (*)
FROM data_analyst_jobs;

---Q2
SELECT *
FROM data_analyst_jobs
LIMIT 10;

SELECT company
FROM data_analyst_jobs
LIMIT 10;

---Q3
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';

---Q4
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;

---Q5
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

---Q6
SELECT location AS state, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL 
	AND location != 'USA' 
	AND location != 'DC' 
	AND location != 'REMOTE'
GROUP BY location
ORDER BY avg_rating DESC NULLS LAST;

---Q7
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;

---Q8
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

---Q9
SELECT AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;

---Q10
SELECT company, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_star_rating DESC;

---Q11
SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';

---Q12
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

SELECT DISTINCT (title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

---BONUS WRONG
SELECT domain, COUNT (title) AS hard_to_fill
FROM data_analyst_jobs
WHERE skill ILIKE '%sql%' AND days_since_posting > 21 AND domain IS NOT NULL
GROUP BY domain
ORDER BY hard_to_fill DESC;


