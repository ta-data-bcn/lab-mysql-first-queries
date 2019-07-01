![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

SELECT prime_genre

FROM data

GROUP BY prime_genre;

**2. Which is the genre with more apps rated?**

SELECT prime_genre, SUM(rating_count_tot) as total_rates

FROM data

GROUP BY prime_genre

ORDER BY SUM(user_rating) DESC

LIMIT 1;

**3. Which is the genre with more apps?**

SELECT prime_genre, COUNT(track_name) as count_apps

FROM data

GROUP BY prime_genre

ORDER BY count_apps DESC

LIMIT 1;

**4. Which is the one with less?**

SELECT prime_genre, COUNT(track_name) as count_apps

FROM data

GROUP BY prime_genre

ORDER BY count_apps

LIMIT 1;

**5. Take the 10 apps most rated.**

SELECT track_name, rating_count_tot as total_rates

FROM data

ORDER BY total_rates DESC

LIMIT 10;

**6. Take the 10 apps best rated by users.**

SELECT track_name, user_rating, rating_count_tot

FROM data

ORDER BY user_rating DESC, rating_count_tot DESC

LIMIT 10;

**7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!

**8. Take the mean rate between the 10 apps best rated.** Don't calculate the mean, just see the data!

**9. What do you see here?**

-- Apps with more ratings counts will have more significant means thans those apps that rating counts are less. In the second case, the user ratings have more weight because less people rate them.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot

FROM data

ORDER BY rating_count_tot DESC, user_rating DESC

lIMIT 10;

**11. Does people care about the price?**

SELECT price, SUM(rating_count_tot) as total_rates, AVG(user_rating)

FROM data

GROUP BY price 

ORDER BY total_rates  DESC;

-- There seem to be no relation between price and rates but, it seems to be a relation between rating_counts_total and price --> the closest is the price to 0, more rating counts it has. 


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
