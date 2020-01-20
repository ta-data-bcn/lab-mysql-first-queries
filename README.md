![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

**Query**:
SELECT DISTINCT prime_genre AS Genre
FROM data;

**Answer**:
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

**Query**:
SELECT 
`prime_genre`AS Genre,
Count(rating_count_tot) AS Apps_Rated
FROM data
WHERE `rating_count_tot`>0
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

**Answer**:
Games	3400


**3. Which is the genre with more apps?**

**Query**:
SELECT 
`prime_genre`AS Genre,
Count(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

**Answer**:
Games	3862

**4. Which is the one with less?**

**Query**:
SELECT 
`prime_genre`AS Genre,
Count(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 ASC
LIMIT 1;

**Answer**:
Catalogs	10


**5. Take the 10 apps most rated.**

**Query**:
SELECT 
`track_name`AS Apps,
SUM(`rating_count_tot`) AS Ratings
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

**Answer**:
Facebook	2974676
Instagram	2161558
Clash of Clans	2130805
Temple Run	1724546
Pandora - Music & Radio	1126879
Pinterest	1061624
Bible	985920
Candy Crush Saga	961794
Spotify Music	878563
Angry Birds	824451


**6. Take the 10 apps best rated by users.**

**Query**:
SELECT 
`track_name`AS Apps,
`user_rating`
FROM data
ORDER BY 2 DESC
LIMIT 10;

**Answer**:
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
Flashlight Ⓞ	5
Learn to Speak Spanish Fast With MosaLingua	5
:) Sudoku +	5
The Photographer's Ephemeris	5
King of Dragon Pass	5
Escape the Sweet Shop Series	5
Infinity Blade	5
Plants vs. Zombies HD	5
Plants vs. Zombies	5


**9. Now compare the data from questions 5 and 6. What do you see?**

The highest rated apps seems to be all for free with a very high rating count (minimum of approx. 800K reviews) while the top rated apps all but two are NOT for free with a much lower rating coiunt. This skews the results as an app with a rating of 5/5 and a rating count of 10 could out-perform an app with a 4/5 with a rating count of 100,000.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

**Query**:
SELECT 
`track_name`AS Apps,
`user_rating`,
`rating_count_tot` AS Ratings
FROM data
ORDER BY 2 DESC,3 DESC
LIMIT 3;

**Answer**:
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Yes they do.

**Total number of apps**:
SELECT 
COUNT(`track_name`) AS Apps
FROM data

**Answer**:
7197

**Number of app by price range**:
SELECT 
price AS Price,
COUNT(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

**Answer**:
0	4056
0.99	728
2.99	683
1.99	621
4.99	394
3.99	277
6.99	166
9.99	81
5.99	52
7.99	33

As we can see the % total of free apps is more than 50% indicating a clear preference towards free apps.

Moreover, The % of total apps with an increasing price is inversley proportional is their price.

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
