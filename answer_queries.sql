-- Different genres:
SELECT prime_genre FROM data
group by prime_genre
order by PRIME_GENRE;

-- Genre with more apps rated:
select count(track_name), prime_genre from data WHERE rating_count_tot > 0
group by prime_genre
order by count(track_name) desc;

-- Genre with more apps:
select count(track_name), prime_genre from data
group by prime_genre
order by count(track_name) desc;

-- Genre with less apps:
select count(track_name), prime_genre from data
group by prime_genre
order by count(track_name);

-- Most rated apps:
select * from data
order by rating_count_tot desc 
limit 10;

-- Best rated apps:
select * from data
order by user_rating DESC, rating_count_tot DESC
limit 10;

-- Average where price is 0
select count(id), avg(size_bytes), avg(rating_count_tot), avg(user_rating), std(user_rating)
from data
where price = 0;

-- Average where price is greater 0
select count(id), avg(size_bytes), avg(rating_count_tot), avg(user_rating),  std(user_rating)
from data
where price > 0;