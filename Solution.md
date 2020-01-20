
**1. Which are the different genres?**
Code:
SELECT prime_genre
FROM data
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

**2. Which is the genre with more apps rated?**
code
SELECT prime_genre, SUM(rating_count_tot) AS TotalRatings
FROM `data`
GROUP BY prime_genre;

Games	52878491
Social Networking	7598316
Photo & Video	5008946
Entertainment	4030518
Music	3980199
Shopping	2271070
Health & Fitness	1784371
Utilities	1702228
Sports	1599070
Weather	1597034
Reference	1434294
Productivity	1433136
Finance	1148956
Travel	1144485
Education	1014371
News	976130
Lifestyle	887294
Food & Drink	878133
Book	574049
Navigation	545282
Business	272921
Catalogs	17325
Medical	13634

**3. Which is the genre with more apps?**
code
SELECT prime_genre, COUNT(*) AS Records
FROM `data`
GROUP BY prime_genre;


Games	3862
Entertainment	535
Education	453
Photo & Video	349
Utilities	248
Health & Fitness	180
Productivity	178
Social Networking	167
Lifestyle	144
Music	138
Shopping	122
Sports	114
Book	112
Finance	104
Travel	81
News	75
Weather	72
Reference	64
Food & Drink	63
Business	57
Navigation	46
Medical	23
Catalogs	10

**4. Which is the one with less?**
SELECT prime_genre, COUNT(*) AS Records
FROM `data`
GROUP BY prime_genre
ORDER BY Records ASC;

Catalogs	10
Medical	23
Navigation	46
Business	57
Food & Drink	63
Reference	64
Weather	72
News	75
Travel	81
Finance	104
Book	112
Sports	114
Shopping	122
Music	138
Lifestyle	144
Social Networking	167
Productivity	178
Health & Fitness	180
Utilities	248
Photo & Video	349
Education	453
Entertainment	535
Games	3862



**5. Take the 10 apps most rated.**

code
SELECT track_name, rating_count_tot AS Rating
FROM `data`
ORDER BY Rating DESC
LIMIT 10;

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
code
SELECT track_name, user_rating AS UserRating
FROM `data`
ORDER BY UserRating DESC
LIMIT 10;

more than 10 are rated with 5
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

More of the free apps were rated with a 5. So this is a factor to the user's rating

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
the most rated ones with still a 5/5

code

SELECT track_name, user_rating AS UserRating, price AS price, rating_count_tot AS Rating
FROM `data`
WHERE user_rating=5
ORDER BY Rating DESC;

Head Soccer	5	0	481564
Plants vs. Zombies	5	0.99	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	0	386521

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

When you look at the top 30 apps (rated 5/5 and most rated), then you can see that only a few do cost money. So this shows that people also look at the price as a factor. 

name, rating, price, rates
Head Soccer	5	0	481564
Plants vs. Zombies	5	0.99	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	0	386521
Geometry Dash Lite	5	0	370370
Infinity Blade	5	0.99	326482
Geometry Dash	5	1.99	266440
Domino's Pizza USA	5	0	258624
CSR Racing 2	5	0	257100
Pictoword: Fun 2 Pics Guess What's the Word Trivia	5	0	186089
Plants vs. Zombies HD	5	0.99	163598
The Room	5	0.99	143908
Iron Force	5	0	141634
Sniper Shooter: Gun Shooting Games	5	0	134080
Flashlight Ⓞ	5	0	130450
Pic Collage - Picture Editor & Photo Collage Maker	5	0	123433
Zappos: shop shoes & clothes, fast free shipping	5	0	103655
Credit Karma: Free Credit Scores, Reports & Alerts	5	0	101679
PewDiePie's Tuber Simulator	5	0	90851
We Heart It - Fashion, wallpapers, quotes, tattoos	5	0	90414
Google Photos - unlimited photo and video storage	5	0	88742
Color Therapy Adult Coloring Book for Adults	5	0	84062
Blackbox - think outside the box	5	0	80058
Egg, Inc.	5	0	79074
Flight Pilot Simulator 3D: Flying Game For Free	5	0	60360
Logos Quiz -Guess the most famous brands, new fun!	5	0	58640
Elevate - Brain Training and Games	5	0	58092
HB2 PLUS	5	0.99	54073
Tricky Test 2™: Genius Brain?	5	0	45578
Ski Safari	5	0.99	45121
The Room Two	5	1.99	36809


