![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Load the *IronHackDB.sql* structure in your local MySQL Workbench database instance. Use the *applestore* (not applestore2) table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

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

Social Networking

**3. Which is the genre with more apps?**

Games has 3862 apps

**4. Which is the one with less?**

Catalogs with 10 apps

**5. Take the 10 apps most rated.**

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

There are 492 apps rated with 5 stars, so the first 10 don't give a very precise insight.

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

- Huge amount of ratings
- mediocre to good ratings
- all for free
- varied genres


**8. Take a look on the data you retrieved in the question 6. Give some insights.**

- genre half games, half "useful" apps
- tendency: not for free
- from a handful ratings to 420,000


**9. Now compare the data from questions 5 and 6. What do you see?**

- see question 7 and 8

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

- combining 2 order by desc, first user_rating, then number of ratings

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

a) rating vs. price
- People are willing to pay higher prices for apps with rating from 4-5 stars
2.209864698646936	4
1.802110401802427	4.5
1.6455894308943124	5


rating 0-2 stars and prices

1.9265909090909084	1
1.2089285714285716	1.5
1.155754716981131	2
1.0801291711517784	0


b) genre vs. price
the highest paid apps are by genre:
Reference 10.08
Medical
Education
Music
Utilities 2.21

the cheapest apps are
Weather 0.33€
Finance
News
Social Networking
Shopping 0€
Catalogs 0€

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
