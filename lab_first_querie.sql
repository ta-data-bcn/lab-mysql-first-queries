use applestore;

select * from data;

-- 1. Which are the different genres?

SELECT 
    data.prime_genre
FROM
    data
GROUP BY prime_genre;

-- 2. Which is the genre with more apps rated?
select * from data;
SELECT 
    prime_genre, SUM(rating_count_tot) as Totes_les_apps, COUNT(id)
FROM
    data
GROUP BY prime_genre
ORDER BY Totes_les_apps DESC;

-- 3. Which is the genre with more apps?

SELECT 
    prime_genre,count(*) as total
FROM
    data
GROUP BY prime_genre
ORDER BY total DESC;

-- 4. Which is the one with less?

SELECT 
    prime_genre,count(*) as total
FROM
    data
GROUP BY prime_genre
ORDER BY total ASC;

-- 5. Take the 10 apps most rated.

SELECT 
    track_name, rating_count_tot
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.

SELECT 
    track_name, user_rating
FROM
    data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

/* We can observe that the most apps rated are the free apps. We can observe the most rated apps aren't free*/

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

/* This apps are the apps that have the best rated value, but they aren't the ones with the most reviews.
one idea is that we can see the best user_rating of the most downloaded applications */

-- 9. Now compare the data from questions 5 and 6. What do you see?

/* In question 5 we have the apps with the most reviews and in question 6 we have the apps with the best rated reviews */ 

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT 
    track_name, user_rating, rating_count_tot
FROM
    data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT 
    SUM(rating_count_tot)
FROM
    data
WHERE
    price != 0;
    
SELECT 
    SUM(rating_count_tot)
FROM
    data
WHERE
    price = 0;
    
/* 

We can observe that the free apps have more count ratings (80105208) respect with pay apps (12685045).
my conclusion is the following:

- An application with many reviews will not be affected by few reviews (even if it is 5 stars), 
but an application with fewer reviews will be affected more.

- This does not mean that the app is better or not than another, simply that there are more people who 
rate the app for free and even if the app improves it will not be reflected in the review score

*/
