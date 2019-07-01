![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
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
Games with 52878491 counts.

**3. Which is the genre with more apps?**
Games with 3862 apps. 

**4. Which is the one with less?**
Catalogs with 10 apps. 

**5. Take the 10 apps most rated.**
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
Head Soccer	5	481564
Plants vs. Zombies	5	426463
Sniper 3D Assassin: Shoot to Kill Gun Game	5	386521
Geometry Dash Lite	5	370370
Infinity Blade	5	326482
Geometry Dash	5	266440
Domino's Pizza USA	5	258624
CSR Racing 2	5	257100
Pictoword: Fun 2 Pics Guess What's the Word Trivia	5	186089
Plants vs. Zombies HD	5	163598


**7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!

top heavy (skewed to max. value) 
mean  =btw value 5 and 6?  17+11/2 = 1,400,000


**8. Take the mean rate between the 10 apps best rated.** 
mean  = 5 

**9. What do you see here?**
+ rating people may be lower ratings but has more weight/meaning as more ppl have voted for them.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
Look up the top 10 rated applications by users, from there extract the ones with the best user rating:

389801252	Instagram	4.5	2161558
529479190	Clash of Clans	4.5	2130805
420009108	Temple Run	4.5	1724546



**11. Does people care about the price?**
In terms of number of people rating an app (i.e. min number downloads) is clearly higher than the sum of number of people downloading apps that cost money. 
However, when it comes to the avg. rating of the app, there seems to be no relation between those apps that you pay for and those that you don't.






## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
