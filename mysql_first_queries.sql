-- **1. Which are the different genres?**

select DISTINCT
prime_genre
from data

-- **2. Which is the genre with more apps rated?**

select
prime_genre, count(track_name)
from data
where rating_count_tot!=0
group by prime_genre
order by count(track_name) desc -- I leave just 1 because I want the first one
limit 1
;



-- **3. Which is the genre with more apps?**

select count(track_name), prime_genre
from data
group by  prime_genre
having count(track_name)
order by count(track_name) DESC
limit 1
;

-- **4. Which is the one with less?**

select count(track_name), prime_genre
from data
group by  prime_genre
having count(track_name)
order by count(track_name) 
limit 1
;

-- **5. Take the 10 apps most rated.**

select track_name, rating_count_tot
from data
order by rating_count_tot DESC
limit 10
;

-- **6. Take the 10 apps best rated by users.**

select track_name, sum(user_rating)
from data
group by track_name 
order by sum(user_rating) DESC
limit 10
;

-- **10. How could you take the top 3 regarding the user ratings but also the number of votes?**

select track_name, sum(user_rating), 
from data
group by track_name 
order by sum(user_rating) DESC
limit 3
;

-- **11. Do people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?**

select track_name, sum(user_rating), 
from data
group by track_name 
order by sum(user_rating) DESC
limit 3
;



