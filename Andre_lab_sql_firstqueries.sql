-- Load the IronHackDB.sql structure in your local MySQL Workbench database instance. 
-- Use the applestore (not applestore2) table to query the data about Apple Store Apps 
-- and answer the following questions:

use appleStore;

-- 1. Which are the different genres?
select * from data;

select prime_genre
FROM data
group by prime_genre;

-- 2. Which is the genre with more apps rated?
select * from data;

select prime_genre, sum(rating_count_tot) as genre_most_rated
FROM data
group by prime_genre
order by genre_most_rated DESC;

-- 3. Which is the genre with more apps?

select * from data;

select prime_genre, count(id) as most_apps
FROM data
group by prime_genre
order by most_apps DESC;


-- 4. Which is the one with less?

select * from data;

select prime_genre, count(id) as most_apps
FROM data
group by prime_genre
order by most_apps ASC;

-- 5. Take the 10 apps most rated.

select * from data;

select track_name, sum(rating_count_tot) as most_apps_rated
FROM data
group by track_name
order by most_apps_rated desc
limit 10;

-- 6. Take the 10 apps best rated by users.

select * from data;

select track_name, avg(user_rating) as best_rated
FROM data
group by track_name
order by best_rated desc
limit 10;


-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

select * from data;

select track_name, sum(rating_count_tot) as ratings, avg(price), avg(size_bytes), avg(user_rating)
FROM data
group by track_name
order by ratings desc
limit 10;

		-- we can see as an insight that the top ten all share the commonality 
		-- of having price avg of zero. in addition we do not see any user_rating
		-- lower than 3.5


-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

select * from data;

select track_name, avg(user_rating) as best_rated, avg(price), avg(size_bytes),sum(rating_count_tot),sum(rating_count_ver)
FROM data
group by track_name
order by best_rated desc
limit 10;

		-- from this data we can see that the best_rated isnt realiable. This is because
		-- there are appls with very few ratings, example "Learn to speak spanish". 



-- 9. Now compare the data from questions 5 and 6. What do you see?

select track_name, avg(user_rating) as best_rated, sum(rating_count_tot) as ratings 
FROM data
group by track_name
order by ratings desc, best_rated desc
limit 10;

			-- worst apps dont have any ratings
			-- should order by ratings count as this is more reliable. 
			-- Top apps have an average of 4.5 rating



-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

select track_name, avg(user_rating) as best_rated, sum(rating_count_tot) as ratings 
FROM data
group by track_name
order by best_rated desc, ratings desc
limit 3;



-- 11. Does people care about the price? Do some queries, 
-- comment why are you doing them and the results you retrieve. 
-- What is your conclusion?

select track_name, avg(user_rating) as best_rated, sum(rating_count_tot) as ratings, avg(price) as p 
FROM data
group by track_name
order by p asc, best_rated desc, ratings desc
limit 100;

			-- Yes people care about prices. When i play around with the order asc or desc by price I can see that
			-- those with high prices do not have almost any rating count. And vise versa


-- You need to submit a .sql file that includes the queries used to answer the questions above, 
-- as well as an .md file including your answers.
