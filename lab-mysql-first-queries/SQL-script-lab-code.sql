use applestore;
SELECT * FROM data;
select * from data;

-- Different genres
select prime_genre from applestore.data
group by prime_genre;

-- Genre with more apps rated
select prime_genre, rating_count_tot from data
group by prime_genre
order by rating_count_tot DESC;

-- Genre with less apps rated
select prime_genre, rating_count_tot from data
group by prime_genre
order by rating_count_tot;

-- Ten apps most rated:
select * from data
order by rating_count_tot DESC
limit 10;

-- Ten apps best rated
select * from data
order by user_rating DESC
limit 10;

-- Insights on data from question 5:
/* The data shows the most rated apps, it doesn't mean that they're the best rated apps
but there's probably a relation to their number of downloads, because people rate them
at a higher rate compared to others. Also, they are all free which contributes to the
fact that they've been rated more, as they're available to anyone.
*/

-- Insights on data from question 6:
/*These apps have a high user score but they aren't necessairly the most downloaded,
this just gives us insight on the rating based on the user score, not on the number
of downloads. As opposed to the most rated, these are paid, and their good rating
shows us the users feel like the apps are worth the money they paid.
*/

-- Data comparison between 5 & 6:
/* On the most rated apps, we find a big variety of genres, with social media being 
prominent here because any smartphone user tends to download these.
On the best rated apps we find more games, which makes sense because if the users 
had a good experience playing the game, they are more likely to rate it highly.
There are also apps with very small rating counts, which means that the high rating
comes from a handful of users and the data is not very reliable for these specific
apps, compared to others with thousands of ratings. 
*/

-- Top 3 apps regarding the number of votes. 
select * from data
where user_rating = 5
order by rating_count_tot DESC
limit 3;

-- Does people care about the price. 
select prime_genre, avg(price) as avg_price, count(prime_genre) as genres from data
where user_rating <= 1
group by prime_genre
order by genres DESC;
/* Here we can observe the apps with a rating worse than 1. There's a prominent number of games which
makes sense because it is a genre with an outstanding number of low quality products and scams in 
online app stores. 
*/
select * from data;
select prime_genre, avg(user_rating) as avg_rating, avg(price) as avg_price, rating_count_tot, count(prime_genre) as genres from data
where user_rating >= 4.5
group by prime_genre
order by genres DESC;
select prime_genre, avg(price) as avg_price from data
group by prime_genre
order by avg_price DESC;
/* In conclusion, as mentioned when comparing the most rated and the best rated,
the best rated are primarly paid apps, users tend to value more paid apps when
they think they are worth it, but free apps have a higher rating count as it is
obvious. 
*/
