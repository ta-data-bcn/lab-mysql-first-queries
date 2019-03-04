![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
#Select distinct prime_genre from data;
Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs

**2. Which is the genre with more apps rated?**
#Select prime_genre, sum(rating_count_tot) as total_rates from data group by prime_genre order by total_rates desc limit 1;
Games

**3. Which is the genre with more apps?**
#Select prime_genre, count(*) as total_apps from data group by prime_genre order by total_apps desc limit 1;
Games

**4. Which is the one with less?**
#Select prime_genre, count(*) as total_apps from data group by prime_genre order by total_apps asc limit 1;
Catalogs

**5. Take the 10 apps most rated.**
#Select track_name, rating_count_tot from data order by rating_count_tot desc limit 10;
Facebook
Instagram
Clash of Clans
Temple Run
Pandora - Music & Radio
Pinterest
Bible
Candy Crush Saga
Spotify Music
Angry Birds


**6. Take the 10 apps best rated by users.**
#Select * from data order by user_rating desc, rating_count_tot desc limit 10;
Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game
Geometry Dash Lite
Infinity Blade
Geometry Dash
Domino's Pizza USA
CSR Racing 2
Pictoword: Fun 2 Pics Guess What's the Word Trivia
Plants vs. Zombies HD

**7. Take the mean rate between the 10 apps most rated.**
#Select avg(t.rate) from (Select user_rating as rate from data order by rating_count_tot desc limit 10) t;
4.35

**8. Take the mean rate between the 10 apps best rated.**
#Select avg(t.rate) from (Select user_rating as rate from data order by user_rating desc, rating_count_tot desc limit 10) t;
5

**9. What do you see here?**

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
#Select * from data order by user_rating desc, rating_count_tot desc limit 3;

**11. Does people care about the price?**
