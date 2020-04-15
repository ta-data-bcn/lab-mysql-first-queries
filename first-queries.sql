SELECT DISTINCT prime_genre AS Genres #First Question 
FROM data;

SELECT prime_genre AS genre, rating_count_ver AS Total_Ratings #Second Question 
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

SELECT prime_genre AS Genre, count(id) as Total_apps #Third Question
FROM data
GROUP BY 1
ORDER BY 2 desc
LIMIT 1;

SELECT prime_genre AS Genre, count(id) as Total_apps #Forth Question
FROM data
GROUP BY 1
ORDER BY 2 asc
LIMIT 1;

SELECT track_name AS App, rating_count_tot AS Total_Ratings #Fifth Question 
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT track_name AS App, user_rating #Sixth Question 
FROM data
ORDER BY 2 DESC
LIMIT 10;

SELECT track_name AS App, user_rating, rating_count_tot, prime_genre, price #Seventh Question 
FROM data
ORDER BY 2 DESC, 3 desc
LIMIT 10; #Most apps are from the games genre and free

SELECT track_name AS App, rating_count_tot AS Total_Ratings, prime_genre as Genre, user_rating, price #Eigth Question 
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10; # All of them are free, none of them have over 4.5 in user rating and most of them are user for ludic purposes

# Ninth Question, There is no coincidence in any of the top 10, The more votes an apps has the harder it is for it to have a top rating

SELECT track_name AS App, user_rating, rating_count_tot, prime_genre, price #Tenth Question 
FROM data
ORDER BY 2 DESC, 3 desc
LIMIT 3;

SELECT ROUND(avg(rating_count_tot),2)  as avg_rating , price #Eleventh Question
FROM data
GROUP BY price
ORDER BY 1 desc;
#HYPOTHESIS: Bearing in mind that we only have the number of ratings. I think we can extrapolate these results to understand the number of downloads.
#Average downloads per app. Checking if the average download depends on the price (not only if it's free, but on how much it costs)
#Clearly the free apps are the most downloaded. But once the users start paying the difference with the number of downloads it is not that big, while the rule the cheaper the more averge downloads doesnn't apply.

SELECT format(sum(rating_count_tot),'#,#') as total_ratings, case 
	when price = 0 then 'Free'
    when price > 0 then 'Not Free'
END as Cost
from data
GROUP BY 2
# Total number of downloads depending on if it's free or not
# It really makes a difference if the app is not free





