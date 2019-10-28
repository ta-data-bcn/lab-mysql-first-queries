![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries - Jaume answered

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
There is a total of 23 genres:
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
The genre with more apps rated is Games	with a total of 3400 apps rated.
**3. Which is the genre with more apps?**
The genre with more apps is Games with a total of 3862 apps.

**4. Which is the one with less?**
The genre with less aps is Catalogs with a total of 10 apps.

**5. Take the 10 apps most rated.**
Top 10 most rated apps:
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
Top 10 best rated apps:
:) Sudoku +	5
King of Dragon Pass	5
TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
Plants vs. Zombies	5
Learn to Speak Spanish Fast With MosaLingua	5
Plants vs. Zombies HD	5
The Photographer's Ephemeris	5
▻Sudoku +	5
Flashlight Ⓞ	5
Infinity Blade	5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
-- Facebook and Instagram are the most rated apps. Followed by Clash of Clans and Temple Run. We can see that Social Media, Games and Music Apps are the ones dominating the most rated apps.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
-- Two Sudoku games are enlisted as best rated with a ratio of 5 out of 5.
-- All apps in the top 10 have a rating of 5.

**9. Now compare the data from questions 5 and 6. What do you see?**
-- There is no app that appears in both top 10 most rated or best rated apps. The more rated it is, the more difficult it is to keep a rating of 5 as the best rated ones, which are very likely to be rated by very little amount of people.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
With the following query:
SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3
;
Which has the following output:
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion? 
-- Checked the 20 most rated apps: # Conclusion 1: 3 out of 20 most rated apps are not free.
-- Checked the 20 best rated apps. # Conclusion 2, 15 out of 20 best rated apps are not free.

-- Checked the 20 most pricey apps, and ordered by most ratings.
#Conclusion 3: The most expensive app (99,99$) has only 71 rated opinions but a good user rating of 4.5
#Conclusion 4: The number of ratings in paid apps is way lower than the main free apps.
#Conclusion 5: The user_rating of the most expensive apps is generally higher than 4.
#Conclusion 6: Price affects in terms of downloads/ratings (more price less amount of rates)
#Conclusion 7: And slightly in ratings (more price better ratings)


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 

