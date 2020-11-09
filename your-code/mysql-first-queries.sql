USE applestore;
-- 1. Which are the different genres?
SELECT DISTINCT
    d.prime_genre
FROM
    data d;

-- 2. Which is the genre with more apps rated?
SELECT 
    d.prime_genre, SUM(rating_count_tot) AS n_ratings
FROM
    data d
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT 
    d.prime_genre, COUNT(*) AS n_apps
FROM
    DATA d
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 4. Which is the one with less?
SELECT 
    d.prime_genre, COUNT(*) AS n_apps
FROM
    DATA d
GROUP BY 1
ORDER BY 2
LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT 
    d.track_name, d.rating_count_tot
FROM
    DATA d
ORDER BY 2 DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT 
    d.track_name, d.user_rating
FROM
    data d
ORDER BY 2 DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- All the applications are free. Also, those applications are mostly divided in three main groups: Games, Social Networking and Music.

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- All the applications are paid (except for Flashlight). Also, major part of the applications are from Games, but there you can find new genres not find on the question below, like Business or Education.

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- The Games genre can be found both on the top free applications and the paid ones. 

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT 
    d.track_name, d.user_rating, d.rating_count_tot
FROM
    data d
ORDER BY 2 DESC , 3 DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT 
    COUNT(*) AS n_apps_free
FROM
    data d
WHERE
    d.price = '0';


SELECT 
    SUM(rating_count_tot) AS total_rating_free_apps
FROM
    data d
WHERE
    d.price = '0';


SELECT 
    COUNT(*) AS n_apps_paid
FROM
    data d
WHERE
    NOT d.price = '0';


SELECT 
    SUM(rating_count_tot) AS total_rating_paid_apps
FROM
    data d
WHERE
    NOT d.price = '0';


SELECT 
    SUM(rating_count_tot) / COUNT(*) AS avg_ratings_free_app
FROM
    data d
WHERE
    d.price = '0';


SELECT 
    SUM(rating_count_tot) / COUNT(*) AS avg_ratings_paid_app
FROM
    data d
WHERE
    NOT d.price = '0';


SELECT 
    d.price,
    SUM(rating_count_tot) / COUNT(*) AS avg_ratings_paid_app
FROM
    data d
WHERE
    NOT d.price = '0'
GROUP BY 1
ORDER BY 2 DESC;

/* 
What I wanted to check is the average amount of ratings per App, checking the difference between the free and the paid ones.
Although the difference of apps per price doesn't create a big gap - There are +4K free apps and +3.1K paid apps -, the amount of ratings it does.
The total ratings of the free apps surpass the 80M and the paid ones the 12M.
If we check the avg amount of ratings per price, we see that a free app might have almost 20K ratings, meanwhile a paid app will barely surpass the 4K.
Mention that, of course, the difference is bigger as the price increases, but the cheapest paid app (0.99€) has 7.1K ratings, almost three times less than a free app. 
*/ 