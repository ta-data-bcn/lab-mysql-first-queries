1. Which are the different genres?

select distinct prime_genre 
from data

2. Which is the genre with more apps rated?

select prime_genre, sum(rating_count_tot) as most_rated_apps
from data
group by prime_genre
order by most_rated_apps
DESC
limit 1;

3. Which is the genre with more apps?

select prime_genre, count(id)
from data
group by prime_genre
order by count(id)
DESC
limit 1;

4.  Which is the one with less?
select prime_genre, count(id)
from data
group by prime_genre
order by count(id)
ASC
limit 1;

5. Take the 10 apps most rated

select id, track_name, rating_count_tot
from data
group by id, track_name, rating_count_tot
order by rating_count_tot
DESC
limit 10;

6. Take the 10 apps best rated by users

select track_name, user_rating
from data 
order by user_rating
DESC
limit 10;

7. Take a look on the data you retrieved in the question 5. Give some insights

select *
from data
order by rating_count_tot
DESC
limit 10;

select count(distinct(prime_genre))
from data

#It seems all of them are for free and belong to 5 out of 23 existing genres.

8. Take a look on the data you retrieved in the question 6. Give some insights.


select *
from data 
order by user_rating
DESC
limit 10;

#Almost all of them are paid applications and some of them have been rated few times

9. Now compare the data from questions 5 and 6. What do you see?

#The most rated are the free ones. The best rated are the ones that need a payment.

10. How could you take the top 3 regarding the user ratings but also the number of votes?

select track_name, user_rating, rating_count_tot
from data
where user_rating = 5
order by rating_count_tot
desc
limit 3;

11. Does people care about the price?

select track_name, price, rating_count_tot, user_rating
from data
order by rating_count_tot
desc
limit 10;

select track_name, price, rating_count_tot, user_rating
from data
where (rating_count_tot > 1 and rating_count_tot < 100)
;

select track_name, price, rating_count_tot, user_rating
from data
order by price
desc
limit 10;

#Yes, they do care. Among the top 10 rated there are only free apps, while among the least voted most of them are non-free. On the other hand the most expensive are voted much less.

