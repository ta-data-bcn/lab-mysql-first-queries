## 1. Which are the different genres?

use applestore;

SELECT 
prime_genre
FROM data as d
GROUP BY prime_genre;

## 2. Which is the genre with more apps rated?

SELECT prime_genre, SUM(rating_count_tot)
FROM data as d
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

## 3. Which is the genre with more apps?

SELECT prime_genre, count(track_name)
FROM data as d
GROUP BY prime_genre
ORDER BY count(track_name) DESC
LIMIT 1;

## 4. Which is the one with less?

SELECT prime_genre, count(track_name)
FROM data as d
GROUP BY prime_genre 
ORDER BY count(track_name) ASC
LIMIT 1;

## 5. Take the 10 apps most rated.

SELECT track_name, rating_count_tot
FROM data as d
ORDER BY rating_count_tot DESC
LIMIT 10;

## 6. Take the 10 apps best rated by users.

SELECT track_name, user_rating
FROM data as d
ORDER BY user_rating DESC
LIMIT 10;

## 7. Take a look on the data you retrieved in the question 5. Give some insights.

SELECT *
FROM data as d
ORDER BY rating_count_tot DESC
LIMIT 10;

#All the apps are free
#Games is the most rated genre

SELECT prime_genre, rating_count_tot
FROM data as d
ORDER BY rating_count_tot DESC
LIMIT 10;

# 8. Take a look on the data you retrieved in the question 6. Give some insights.

SELECT *
FROM data as d
ORDER BY user_rating DESC
LIMIT 10;

# some of the apps most rated have just a few ratings so this data does not give us a good insight to really know if the users are happy with these apps or not. 
# games keep being the genre number 1 

# 9. Now compare the data from questions 5 and 6. What do you see?

## The higher the rating_count_total is, the better insight we can take to really know if the users like the app or not
## We can not see in this table how many downloads each app has but we can starting to think that if the app is free, more people is interested in downloading the app because the top 10 apps most rated are all of them free and the number of ratings is so high so it means these people also downloaded the app

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, user_rating, rating_count_tot
FROM data as d
ORDER BY  user_rating DESC, rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

#As we do not have the number of times that each app was downloaded, first I would see if the most rated apps are free or cheap.

SELECT track_name, rating_count_tot, price
FROM data as d
ORDER BY rating_count_tot DESC
LIMIT 30;

#as we see, the first 30 most rated apps are free except for 4. 3 of them are under 1.99 and just one of them costs 6.99€
#Now I want to do the same query but ordering by ASC so I can see the lest rated apps and see if we find any difference in the price.

SELECT track_name, rating_count_tot, price
FROM data as d
ORDER BY rating_count_tot ASC
LIMIT 30;

#as we can see, a lot of the last 30 apps are not free, and a lot of them are also over 1.99€. So my conclusion would be that, yes, people care about the price.