#Question 1: Which are the different genres?
select prime_genre from data group by prime_genre;
#Question 2: Which is the genre with more apps rated?
select prime_genre, count(*)
from data
where rating_count_tot > 0
group by prime_genre
order by count(*) desc;
#Questions 3 and 4: Which is the genre with more apps and the one with less?
select prime_genre, count(*)
from data
group by prime_genre
order by count(*) desc;
#Question 5: Take the 10 apps most rated:
select track_name, rating_count_tot 
from data 
order by rating_count_tot desc
limit 10;
#Question 6: Takt the 10 apps best rated by users:
select track_name, user_rating
from data 
order by user_rating desc
limit 10;
#Question 10: Top 3 regarding the user ratings but also number of votes:
select track_name, user_rating, rating_count_tot
from data 
order by user_rating desc, rating_count_tot desc
limit 3;
#Question 11: Do people care about the price?
#I will first take a look at the voted apps and take a look at their prices:
select track_name, user_rating, rating_count_tot, price
from data 
order by rating_count_tot desc
limit 10;
#I will now take a look at the most expensive apps and see their ratings:
select track_name, price, user_rating, rating_count_tot
from data 
order by price desc, user_rating desc, rating_count_tot desc
limit 10;
#Response: people care about the price in the sense that the most voted apps are the free ones. However, the most expensive ones, even if they have low user volumes, receive higher ratings than the free ones.