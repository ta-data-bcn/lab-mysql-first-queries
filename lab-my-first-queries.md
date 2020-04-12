
# Lab | My first queries

Please find the answers to the questions in the Lab below.

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
'Food & Drink'
'News'
'Book'
'Medical'
'Catalogs'


**2. Which is the genre with more apps rated?**

'52878491','Games'
'7598316','Social Networking'
'5008946','Photo & Video'


**3. Which is the genre with more apps? (the most)**

'3862','Games'
'535','Entertainment'
'453','Education'


**4. Which is the one with less? (the least)**

'10','Catalogs'
'23','Medical'
'46','Navigation'


**5. Take the 10 apps most rated.**

'Facebook','2974676'
'Instagram','2161558'
'Clash of Clans','2130805'
'Temple Run','1724546'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Candy Crush Saga','961794'
'Spotify Music','878563'
'Angry Birds','824451'


**6. Take the 10 apps best rated by users.**

'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF','5'
'Flashlight Ⓞ','5'
'Learn to Speak Spanish Fast With MosaLingua','5'
':) Sudoku +','5'
'The Photographer\'s Ephemeris','5'
'King of Dragon Pass','5'
'Escape the Sweet Shop Series','5'
'Infinity Blade','5'
'Plants vs. Zombies HD','5'
'Plants vs. Zombies','5'



**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The amount of ratings per App differ, therefore the list of the top ten most rated apps is a reliable result.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Because there are many more apps rated with 5 and the order of those is random,  this result is not satisfying.

**9. Now compare the data from questions 5 and 6. What do you see?**

The most rated apps - the apps that are most probably have the most users - are not the best apps.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot FROM data WHERE user_rating = "5" ORDER BY rating_count_tot DESC LIMIT 3;

'Head Soccer','5','481564'
'Plants vs. Zombies','5','426463'
'Sniper 3D Assassin: Shoot to Kill Gun Game','5','386521'


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT track_name, price, rating_count_tot from data ORDER BY price DESC LIMIT 20;
SELECT track_name, price, rating_count_tot from data ORDER BY price ASC LIMIT 20;

SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY rating_count_tot DESC LIMIT 20;
--> among the top 20 most rated (= most used) apps, the ones that are not free, have very good/decent rating.
SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY rating_count_tot ASC LIMIT 20;
--> people are not at all willing to pay for pricy apps with no (positive) ratings.

SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY price DESC LIMIT 20;
--> less people use (= rate) very expensive apps, ratings are more critical, but still very good, which allows the assumption, that people with specific interests are willing to pay for good (according to user ratings) apps.
SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY price ASC LIMIT 20;

Assuming that a higher amount of ratings represents a higher number of users, one can draw the conclusion that people tend to use and rate free apps more, but people are willing to pay for apps with good rating / that are worth the price.

