use applestore;

# Data visualization
SELECT 
    *
FROM
    data;

# 1. Which are the different genres?
SELECT DISTINCT
    prime_genre
FROM
    data;

# 2. Which is the genre with more apps rated?

SELECT 
    MAX(ratings_by_genre) AS ratings, prime_genre
FROM
    (SELECT 
        SUM(rating_count_tot) AS ratings_by_genre, prime_genre
    FROM
        data
    GROUP BY prime_genre) AS genreRatings
;

# 3. Which is the genre with more apps?
SELECT 
    MAX(prime_genre) AS more_rated_genre
FROM
    data;

# 4. Which is the one with less?
SELECT 
    MIN(prime_genre) AS more_rated_genre
FROM
    data;

# 5. Take the 10 apps most rated.
SELECT 
    *
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 10;


# 6. Take the 10 apps best rated by users.
SELECT 
    *
FROM
    data
ORDER BY user_rating DESC
LIMIT 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
# All of the most rated apps are free and have a very big size. 
# Also, none of them have a 5 star rating, in fact most of them are 4.5
# Genres vary among them. 


# 8. Take a look on the data you retrieved in the question 6. Give some insights.
# Most of them are not free, and their genre are Game. 
# Also, two of them have very few ratings so they must be new


# 9. Now compare the data from questions 5 and 6. What do you see?
# Genres vary, higher ratings go to payed apps.


# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT 
    track_name, user_rating, rating_count_tot
FROM
    data
ORDER BY user_rating DESC
LIMIT 3;

# 11. Does people care about the price? 
# Do some queries, comment why are you doing them and the results you retrieve. 
# What is your conclusion?

SELECT 
    *
FROM
    (SELECT 
        AVG(user_rating) AS averageFreeAppRated
    FROM
        data
    WHERE
        price = 0) AS freeAppRaings
        JOIN
    (SELECT 
        AVG(user_rating) AS averagePayedAppScore
    FROM
        data
    WHERE
        price != 0) AS payedAppRatings;
        
# Free apps are worse rated from users
 
SELECT 
    *
FROM
    (SELECT 
        AVG(rating_count_tot) AS averageFreeAppScore
    FROM
        data
    WHERE
        price = 0) AS freeAppRaings
        JOIN
    (SELECT 
        AVG(rating_count_tot) AS averagePayedAppRating
    FROM
        data
    WHERE
        price != 0) AS payedAppRatings;
        
# Free apps also have more ratings, so they have more downloads
