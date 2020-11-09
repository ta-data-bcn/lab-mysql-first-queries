use appleStore;

select * from data;


-- 1. Which are the different genres?
select prime_genre, count(*) as n_genres
from data
group by prime_genre;

-- 2. Which is the genre with more apps rated?
select prime_genre, count(*) as n_genres
from data
where rating_count_tot !=0
group by prime_genre
order by n_genres DESC
limit 1;

-- 3. Which is the genre with more apps?
select prime_genre, count(*) as n_genres
from data
group by prime_genre
order by n_genres DESC
limit 1;

-- 4. Which is the one with less?
select prime_genre, count(*) as n_genres
from data
group by prime_genre
order by n_genres 
limit 1;

-- 5. Take the 10 apps most rated.
select * from data
order by rating_count_tot DESC
limit 10;

-- 6. Take the 10 apps best rated by users.
select * from data
order by user_rating DESC
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
/* At first look, we can say that the apps with more ratings, seems to correspond to those which are the the most downloaded ones. 
Also, a remarkable fact is that all the apps are free and at least 9 out of 10 have a user rating higher than 4.*/

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
/* By the other hand, almost each song in this list are paid apps. 
It stands out too that 2 apps have less than 10 ratings which probably would not have a 5 star of user-rating. */

-- 9. Now compare the data from questions 5 and 6. What do you see?
/* As it has been said, the main difference between the 2 lists is that one is dominated by free and top downloaded apps and the other one mainly correspond to paid-apps. 
In some apps seems that a paid version translates on higher ratings.*/

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select * from data
order by user_rating DESC, rating_count_tot DESC
limit 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

select * from data
order by price DESC, rating_count_tot DESC;

select prime_genre, count(*) as n_genres
from data
where price >0
group by prime_genre
order by n_genres DESC;

/* I sorted out apps with the higher prices and most ratings and later a group by of genres within paid apps. Seems that people who are willing to pay, mostly go for games and education or entertainment to a lesser extent. */

select * from data
where price = 0
order by rating_count_tot DESC;

select prime_genre, count(*) as n_genres
from data
where price = 0
group by prime_genre
order by n_genres DESC;

/* Here I went to get most rated free apps and later to see their main genres. As for the paid ones, user that goes for free apps download mainly games and entertainment. A fact though, is that social networking is one of the main genres for free apps.

We can then indeed assume that people care about whether to pay or not for an app since the relationship between number of ratings and free apps is quite high. But those who pay for apps, reading out their high rates, probably found what they were looking for when they download the app. */

