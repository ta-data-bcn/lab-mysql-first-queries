use appleStore;

SELECT * FROM appleStore.data;

-- Q1: Which are the different genres?
SELECT 
    prime_genre
FROM
    appleStore.data
GROUP BY prime_genre;

SELECT DISTINCT
    (prime_genre)
FROM
    appleStore.data;

-- Q2:Which is the genre with more apps rated?
SELECT 
    prime_genre, SUM(rating_count_tot) AS sum_rate
FROM
    appleStore.data
GROUP BY prime_genre
ORDER BY sum_rate DESC
LIMIT 1;

-- Q3:Which is the genre with more apps?
SELECT 
    prime_genre, COUNT(track_name) AS n_apps
FROM
    appleStore.data
GROUP BY prime_genre
ORDER BY n_apps DESC
LIMIT 1;

-- Q4:Which is the one with less?
SELECT 
    prime_genre, COUNT(track_name) AS n_apps
FROM
    appleStore.data
GROUP BY prime_genre
ORDER BY n_apps
LIMIT 1;

-- Q5:Take the 10 apps most rated.
SELECT 
    track_name, rating_count_tot, price, rating_count_ver, prime_genre, user_rating
FROM
    appleStore.data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Q7:Take a look on the data you retrieved in the question 5. Give some insights.
-- Fb, Insta and CoC have rated the most. All of them are free. Coming from the tree big genre type: games, social networking and music

-- Q6:Take the 10 apps best rated by users.
SELECT 
    track_name, user_rating, rating_count_tot, price, rating_count_ver, prime_genre
FROM
    appleStore.data
ORDER BY user_rating DESC
LIMIT 10;

-- Q8:Take a look on the data you retrieved in the question 6. Give some insights.
-- these apps are mainly games and not free. 

-- Q9:Now compare the data from questions 5 and 6. What do you see?
-- The most rated apps are not the best rated, however they are above 4. the best rated apps are many times just rated a couple of users. 
-- While most rated apps are well know apps not only from games but social and music genre.



-- Q10:How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT 
    *
FROM
    appleStore.data
ORDER BY user_rating DESC , rating_count_tot DESC
LIMIT 3;

-- Q11:Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT * FROM appleStore.data;

SELECT 
    track_name, rating_count_tot, price, rating_count_ver, prime_genre, user_rating
FROM
    appleStore.data
WHERE user_rating >= 4
ORDER BY rating_count_tot DESC, user_rating desc;
-- the most rated apps with over 4 user rate are mainly free

select price, count(*) n_price from appleStore.data
where user_rating >= 4
group by price
order by n_price desc;

-- the most expensive apps are also rated above 4 and got many rates
select track_name, price, user_rating,rating_count_tot from appleStore.data
order by price desc, rating_count_tot desc;

select price, avg(user_rating), avg(rating_count_tot) from appleStore.data
group by price
order by price;
