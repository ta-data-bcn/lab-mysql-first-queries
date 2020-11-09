![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Load the *IronHackDB.sql* structure in your local MySQL Workbench database instance. Use the *applestore* (not applestore2) table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

select prime_genre from applestore.data
group by prime_genre;

**2. Which is the genre with more apps rated?**

select prime_genre, rating_count_tot from data
group by prime_genre
order by rating_count_tot DESC;

**3. Which is the genre with more apps?**

select prime_genre, rating_count_tot from data
group by prime_genre
order by rating_count_tot DESC;

**4. Which is the one with less?**

select prime_genre, rating_count_tot from data
group by prime_genre
order by rating_count_tot;

**5. Take the 10 apps most rated.**

select * from data
order by rating_count_tot DESC
limit 10;

**6. Take the 10 apps best rated by users.**

select * from data
order by user_rating DESC
limit 10;

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The data shows the most rated apps, it doesn't mean that they're the best rated apps
but there's probably a relation to their number of downloads, because people rate them
at a higher rate compared to others. Also, they are all free which contributes to the
fact that they've been rated more, as they're available to anyone.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

These apps have a high user score but they aren't necessairly the most downloaded,
this just gives us insight on the rating based on the user score, not on the number
of downloads. As opposed to the most rated, these are paid, and their good rating
shows us the users feel like the apps are worth the money they paid.

**9. Now compare the data from questions 5 and 6. What do you see?**

On the most rated apps, we find a big variety of genres, with social media being 
prominent here because any smartphone user tends to download these.
On the best rated apps we find more games, which makes sense because if the users 
had a good experience playing the game, they are more likely to rate it highly.
There are also apps with very small rating counts, which means that the high rating
comes from a handful of users and the data is not very reliable for these specific
apps, compared to others with thousands of ratings. 

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

where user_rating = 5
order by rating_count_tot DESC
limit 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

- See answer to question 9.

select prime_genre, avg(price) as avg_price, count(prime_genre) as genres from data
where user_rating <= 1
group by prime_genre
order by genres DESC;

-Here we can observe the apps with a rating worse than 1. There's a prominent number of games which
makes sense because it is a genre with an outstanding number of low quality products and scams in 
online app stores. 

select * from data;
select prime_genre, avg(user_rating) as avg_rating, avg(price) as avg_price, rating_count_tot, count(prime_genre) as genres from data
where user_rating >= 4.5
group by prime_genre
order by genres DESC;
select prime_genre, avg(price) as avg_price from data
group by prime_genre
order by avg_price DESC;
- In conclusion, as mentioned when comparing the most rated and the best rated,
the best rated are primarly paid apps, users tend to value more paid apps when
they think they are worth it, but free apps have a higher rating count as it is
obvious. 

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
