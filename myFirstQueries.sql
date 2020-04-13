
# Lab on My first Queries

use appleStore;

# Q1: different genres

select prime_genre from data
group by prime_genre
order by prime_genre;

# Q2: different genres Top Rated

select prime_genre, sum(rating_count_tot) as TotalRatings from data
group by prime_genre
order by TotalRatings desc;

# Q3: different genres number of Apps (order descending)

select prime_genre, count(*) as Records from data
group by prime_genre
order by Records desc;

# Q4: different genres number of Apps (order ascending)

select prime_genre, count(*) as Records from data
group by prime_genre
order by Records;

# Q5: Top 10 most rated Apps (order descending)

select track_name,rating_count_tot from data
order by rating_count_tot desc
limit 10;

# Q6: Top 10 best rated by users Apps (order descending)

select track_name,user_rating from data
order by user_rating desc
limit 10;

# Q9: Top 5 user rated average grouped by Apps genre (order descending)

select prime_genre,avg(user_rating) as AvgRating from data
group by prime_genre
order by AvgRating desc
limit 5;

# Q10: Top 3 best rated by users Apps (counting total number of ratings)

select track_name,user_rating,rating_count_tot from data
order by user_rating desc,rating_count_tot desc
limit 10;

# Q11: Ask about the average number of ratings (free) and (noFree)

select prime_genre, avg(rating_count_tot) as AvgRatings from data
where price = 0
group by prime_genre
order by AvgRatings desc
limit 5;

select prime_genre, avg(rating_count_tot) as AvgRatings from data
where price != 0
group by prime_genre
order by AvgRatings desc
limit 5;

# Q11: Ask about the average user ratings (free) and (noFree)

select prime_genre,avg(user_rating) as AvgRating from data
where price = 0
group by prime_genre
order by AvgRating desc
limit 5;

select prime_genre,avg(user_rating) as AvgRating from data
where price != 0
group by prime_genre
order by AvgRating desc
limit 5;