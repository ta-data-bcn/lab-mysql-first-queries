![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

SELECT prime_genre FROM data
GROUP BY prime_genre;

Book
Business
Catalogs
Education
Entertainment
Finance
Food & Drink
Games
Health & Fitness
Lifestyle
Medical
Music
Navigation
News
Photo & Video
Productivity
Reference
Shopping
Social Networking
Sports
Travel
Utilities
Weather

**2. Which is the genre with more ratings?**

SELECT prime_genre AS Genre, SUM(rating_count_tot) AS TotalRatings 
FROM data
GROUP BY Genre
ORDER BY TotalRatings DESC
LIMIT 1;


Games	52878491

**3. Which is the genre with more apps?**

SELECT prime_genre as Genre, COUNT(*) as Records FROM data
GROUP BY prime_genre
ORDER BY Records DESC
LIMIT 1;

Games	3862

**4. Which is the one with less?**

SELECT prime_genre as Genre, COUNT(*) as Records FROM data
GROUP BY prime_genre
ORDER BY Records ASC
LIMIT 1;

Catalogs	10


**5. Take the 10 apps with more ratings.**

SELECT track_name AS Name, rating_count_tot AS Ratings
FROM data
ORDER BY Ratings DESC
LIMIT 10;

Facebook			2974676
Instagram			2161558
Clash of Clans			2130805
Temple Run			1724546
Pandora - Music & Radio		1126879
Pinterest			1061624
Bible				985920
Candy Crush Saga		961794
Spotify Music			878563
Angry Birds			824451

**6. Take the 10 apps best rated by users.**

SELECT track_name AS Name, user_rating, rating_count_tot AS RatingCount
FROM data
ORDER BY user_rating DESC, RatingCount DESC
LIMIT 10;

Name						  User Rating  Rating Count

Head Soccer						5	481564
Plants vs. Zombies					5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game		5	386521
Geometry Dash Lite					5	370370
Infinity Blade						5	326482
Geometry Dash						5	266440
Domino's Pizza USA					5	258624
CSR Racing 2						5	257100
Pictoword: Fun 2 Pics Guess What's the Word Trivia	5	186089
Plants vs. Zombies HD					5	163598

**7. Take the mean rate between the 10 apps most rated.**


**8. Take the mean rate between the 10 apps best rated.**

**9. What do you see here?**

The more ratings the lower the mean. 

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

**11. Does people care about the price?**
Lack of data to prove this point. The point of the question is to realise that we can consider different questions depending on the data they provide us.