![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

Test Sublime Merge

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Health & Fitness'
'Entertainment'
'Photo & Video'
'Navigation'
'Education'
'Lifestyle'


SELECT DISTINCT prime_genre FROM appleStore.data;

**2. Which is the genre with more apps rated?**

GAMES - '52878491', 'Games'

SELECT SUM(rating_count_tot),prime_genre FROM appleStore.data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

**3. Which is the genre with more apps?**

GAMES - 'Games', '3862'

SELECT prime_genre,count(prime_genre) FROM appleStore.data group by prime_genre order by count(prime_genre) DESC LIMIT 1;

**4. Which is the one with less?**

CATALOGS - 'Catalogs', '10'

SELECT prime_genre,count(prime_genre) FROM appleStore.data group by prime_genre order by count(prime_genre) ASC LIMIT 1;

**5. Take the 10 apps most rated.**

'Facebook', '2974676'
'Instagram', '2161558'
'Clash of Clans', '2130805'
'Temple Run', '1724546'
'Pandora - Music & Radio', '1126879'
'Pinterest', '1061624'
'Bible', '985920'
'Candy Crush Saga', '961794'
'Spotify Music', '878563'
'Angry Birds', '824451'

SELECT track_name,user_rating FROM appleStore.data order by rating_count_tot DESC LIMIT 10;

**6. Take the 10 apps best rated by users.**

'Head Soccer', '5', '481564'
'Plants vs. Zombies', '5', '426463'
'Sniper 3D Assassin: Shoot to Kill Gun Game', '5', '386521'
'Geometry Dash Lite', '5', '370370'
'Infinity Blade', '5', '326482'
'Geometry Dash', '5', '266440'
'Domino\'s Pizza USA', '5', '258624'
'CSR Racing 2', '5', '257100'
'Pictoword: Fun 2 Pics Guess What\'s the Word Trivia', '5', '186089'
'Plants vs. Zombies HD', '5', '163598'

SELECT track_name,user_rating,rating_count_tot FROM appleStore.data order by user_rating DESC, rating_count_tot DESC LIMIT 10;

**7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!

The mean of the 10 most rated is almost 4.5

**8. Take the mean rate between the 10 apps best rated.** Don't calculate the mean, just see the data!

The mean of the 10 best rated is 5

**9. What do you see here?**

None of the most rated apps has the best score.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

'Facebook', '3.5', '2974676'
'Instagram', '4.5', '2161558'
'Clash of Clans', '4.5', '2130805'


SELECT track_name, user_rating, rating_count_tot
FROM appleStore.data
ORDER BY rating_count_tot DESC, user_rating DESC
lIMIT 3;

**11. Does people care about the price?**

Yes, sure, most of the ratigs are related to a apps with price equals to zero

SELECT price, SUM(rating_count_tot) as total_ratings, AVG(user_rating)
FROM appleStore.data
GROUP BY price
ORDER BY total_ratings DESC;

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
