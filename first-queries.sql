USE applestore;
-- Q1 > Different genres:
SELECT DISTINCT
    prime_genre
FROM
    data;
    
-- Q2 > Genre with more apps rated:
SELECT 
    prime_genre, COUNT(track_name) AS n_apps_rated
FROM
    data
WHERE
    rating_count_tot > 0
GROUP BY prime_genre
ORDER BY n_apps_rated DESC;

-- Q3 > Genre with more apps:
SELECT 
    prime_genre, COUNT(track_name) AS n_apps
FROM
    data
GROUP BY prime_genre
ORDER BY n_apps DESC;

-- Q4 > Genre with less apps:
SELECT 
    prime_genre, COUNT(track_name) AS n_apps
FROM
    data
GROUP BY prime_genre
ORDER BY n_apps;

-- Q5 > Top 10 most rated apps:
SELECT 
    track_name, rating_count_tot
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Q6 > Top 10 best rated apps by users:
SELECT 
    track_name, user_rating
FROM
    data
ORDER BY user_rating DESC
LIMIT 10;

-- Q7 > Q5 data insights:
-- 