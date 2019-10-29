1) Which are the different genres?

Code:
use appleStore;

SELECT DISTINCT prime_genre

from data;

Answer:
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

------------------------------------------------------------
2) Which is the genre with more apps rated?

Code:
select prime_genre, count(track_name)

from data

where rating_count_tot != 0

group by prime_genre

order by count(track_name) desc

limit 1;


Answer:
Games	3400


------------------------------------------------------------
3) Which is the genre with more apps?

Code:
select prime_genre, count(track_name)

from data

group by prime_genre

order by count(track_name) desc

limit 1;


Answer:
Games	3862


------------------------------------------------------------
4) Which is the one with less?

Code:
select prime_genre, count(track_name)

from data

group by prime_genre

order by count(track_name) asc

limit 1;


Answer:
Catalogs	10


------------------------------------------------------------
5) Take the 10 apps most rated.

Code:
select track_name, rating_count_tot, user_rating
from data

where rating_count_tot != 0

order by rating_count_tot desc

limit 10;


Answer:

Facebook						2974676		3.5
Instagram						2161558		4.5
Clash of Clans						2130805		4.5
Temple Run						1724546		4.5
Pandora - Music & Radio					1126879		4
Pinterest						1061624		4.5
Bible							985920		4.5
Candy Crush Saga					961794		4.5
Spotify Music						878563		4.5
Angry Birds						824451		4.5


------------------------------------------------------------
6) Take the 10 apps best rated by users.

Code:
select track_name, user_rating, rating_count_tot
from data

where user_rating = 5 and rating_count_tot != 0

order by rating_count_tot desc

limit 10;


Answer:
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


------------------------------------------------------------
7) Take a look on the data you retrieved in the question 5. Give some insights.

Even though these apps are the top 10 regarding rating count that doesn't mean that they have the highest user ratings (They only have from 3.5 to 4.5 user ratings).



------------------------------------------------------------
8) Take a look on the data you retrieved in the question 6. Give some insights.

Even though these apps are the top 10 rated with a rating score of 5, they don't have as many rating counts as the apps in question 5.


------------------------------------------------------------
9) Now compare the data from questions 5 and 6. What do you see?

If an app has user ratings of 5, that doesn't necessarily mean that they have the highest rating counts. And also the fact that an app has the highest rating count doesn't mean that it is a top rated app by users. As you can see, our top rated app with the highest rating count has a user rating of only 3.5. 



------------------------------------------------------------
10) How could you take the top 3 regarding the user ratings but also the number of votes?

Code:
select track_name, user_rating, rating_count_tot
from data

where user_rating = 5 and rating_count_tot != 0

order by rating_count_tot desc

limit 3;


Answer:

Head Soccer						5	481564
Plants vs. Zombies					5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game		5	386521


------------------------------------------------------------
11) Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Code:

select track_name, rating_count_tot, user_rating, price

from data

where rating_count_tot != 0
order by rating_count_tot desc

limit 10;

Answer: This code is to show the top 10 apps from question number 5 but with the price and ratings listed next to them

Facebook						2974676		3.5	0
Instagram						2161558		4.5	0
Clash of Clans						2130805		4.5	0
Temple Run						1724546		4.5	0
Pandora - Music & Radio					1126879		4	0
Pinterest						1061624		4.5	0
Bible							985920		4.5	0
Candy Crush Saga					961794		4.5	0
Spotify Music						878563		4.5	0
Angry Birds						824451		4.5	0

Code:

select track_name, rating_count_tot, user_rating, price

from data

where rating_count_tot != 0 and user_rating = 5

order by rating_count_tot desc

limit 10;

Answer: This code is to show the top 10 apps from question number 6 but with the price and rating_counts listed next to them

Head Soccer						481564		5	0
Plants vs. Zombies					426463		5	0.99
Sniper 3D Assassin: Shoot to Kill Gun Game		386521		5	0
Geometry Dash Lite					370370		5	0
Infinity Blade						326482		5	0.99
Geometry Dash						266440		5	1.99
Domino's Pizza USA					258624		5	0
CSR Racing 2						257100		5	0
Pictoword: Fun 2 Pics Guess What's the Word Trivia	186089		5	0
Plants vs. Zombies HD					163598		5	0.99


Code:

select track_name, rating_count_tot, user_rating, price

from data
where rating_count_tot != 0 and user_rating = 5

order by price desc

limit 10;

Answer: In this code I wanted to have an insight about the apps with the most money, to see if they have high rating counts of not

King of Dragon Pass					882	5	9.99
Patterning : Drum Machine				306	5	9.99
Galileo Organ						135	5	9.99
Sun Surveyor - Sun & Moon Visualization Tool		183	5	9.99
Pythonista 3						180	5	9.99
Chess Pro - with coach					10619	5	9.99
Neon Chrome						439	5	9.99
Endless Alphabet					10534	5	8.99
The Photographer's Ephemeris				663	5	8.99
Shin Megami Tensei (ENG)				147	5	7.99

From the above data, we can see that people do care about the price, all the apps with higher rating counts are for free (From the first code), And only four apps in the top 10 rated apps are paid (From the second code), and the third code proves that people care about the price, because even though they are great apps with 5 stars user rating, but the rating count is very low, which means that people don't tend to buy apps is they are paid for. 
