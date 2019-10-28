use appleStore;


select *
from data
limit 10
;

-- **1. Which are the different genres?**
select count(prime_genre)
from data
;


-- **2. Which is the genre with more apps rated?**
select count(rating_count_tot) as contar, prime_genre
from data
where rating_count_tot != 0
group by prime_genre
order by contar desc
;


-- **3. Which is the genre with more apps?**
select prime_genre, count(prime_genre) as counter
from data
group by prime_genre
order by counter DESC
;

-- **4. Which is the one with less?**
select prime_genre, count(prime_genre) as counter
from data
group by prime_genre
order by counter asc
;

-- **5. Take the 10 apps most rated.**
select rating_count_tot, prime_genre
from data
group by rating_count_tot, prime_genre
order by rating_count_tot desc
limit 10 
;

-- **6. Take the 10 apps best rated by users.**
select user_rating, prime_genre, count(user_rating) as count_user_rating
from data
group by user_rating, prime_genre
order by user_rating desc, count_user_rating desc
limit 10
;


--  **7. Take a look on the data you retrieved in the question 5. Give some insights.**

**5. Take the 10 apps most rated.**
2974676	Social Networking
2161558	Photo & Video
2130805	Games
1724546	Games
1126879	Music
1061624	Social Networking
985920	Reference
961794	Games
878563	Music
824451	Games

We can see the genres and the total number of rate that users give them 

-- **8. Take a look on the data you retrieved in the question 6. Give some insights.**

**6. Take the 10 apps best rated by users.**
5	Games	277
5	Photo & Video	30
5	Entertainment	26
5	Education	24
5	Health & Fitness	24
5	Book	14
5	Productivity	13
5	Utilities	12
5	Shopping	12
5	Reference	8

The keypoint of this search, is order first the 10 apps best rated, as all of them as 5/5 points, we order by the number of ratio given by users (count_user_rating)

-- **9. Now compare the data from questions 5 and 6. What do you see?**
-- In question 5 we can't count or show any other count because in each row show there is a branch of multiple values hidden (MANY items related with MANY other items) 

-- In question 6, we can show the number of rate given by users because is related with another number (ONE item related with MANY items)

-- **10. How could you take the top 3 regarding the user ratings but also the number of votes?**
select user_rating, prime_genre, count(user_rating) as count_user_rating
from data
group by user_rating, prime_genre
order by user_rating desc, count_user_rating desc
limit 3
;

-- **11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

select price, user_rating, prime_genre, count(user_rating) as votes
from data
group by user_rating, prime_genre, price
order by price desc, user_rating desc, votes desc
limit 20
;
