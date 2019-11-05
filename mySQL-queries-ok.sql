-- 1 Which are the different genres?
select  prime_genre
from data
group by prime_genre;

-- 2 Which is the genre with more apps rated?
select  prime_genre, count(rating_count_tot) as A
from data
where rating_count_tot!=0
group by prime_genre
order by A desc
limit 1
;

-- 3 Which is the genre with more apps?
select  prime_genre, count(prime_genre) as A
from data
group by prime_genre
order by A desc
limit 1;

-- 4 Which is the one with less?
select  prime_genre, count(prime_genre) as A
from data
group by prime_genre
order by A asc
limit 1;

-- 5 Take the 10 apps most rated.
select  track_name, rating_count_tot as A
from data
order by A desc
limit 10;

-- 6 Take the 10 apps best rated by users.
select  track_name, user_rating as A
from data
order by A desc 
limit 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, rating_count_tot as A, user_rating as B
from data
where 500000<rating_count_tot
order by  B desc;

-- 11. Does people care about the price?
select price, sum(rating_count_tot) as "times download"
from data
group by price


