![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

* *Beto Sibileau*. Data Barcelona (FT), April 2020.

Answers provided for the following questions:

**1. Which are the different genres?**

The different genres are provided in the table below:

| Genres |
|:-:|
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

Games is the genre with more rated apps (52878491) as noted in the table below (Top 5 rated apps):

| Genres | Total Ratings |
|:-:|:-:|
Games | 52878491
Social Networking | 7598316
Photo & Video  | 5008946
Entertainment  | 4030518
Music       | 3980199

**3. Which is the genre with more apps?**

Games is the genre with more number of apps (3862) as noted below in the table for Top 5 genres with more number of apps:

| Genres | Number of Apps |
|:-:|:-:|
Games|3862
Entertainment|535
Education|453
Photo & Video|349
Utilities|248

**4. Which is the one with less?**

Catalogs is the genre with less number of apps (10) as noted below in the table (Top 5 genres with less number of apps):

| Genres | Number of Apps |
|:-:|:-:|
Catalogs|10
Medical|23
Navigation|46
Business|57
Food & Drink|63

**5. Take the 10 apps most rated.**

The table below shows the top 10 most rated apps:

| App Name | Total Ratings |
|:-:|:-:|
Facebook|2974676
Instagram|2161558
Clash of Clans|2130805
Temple Run|1724546
Pandora - Music & Radio|1126879
Pinterest|1061624
Bible|985920
Candy Crush Saga|961794
Spotify Music|878563
Angry Birds|824451

**6. Take the 10 apps best rated by users.**

This question depends on how do you order the data, given that there are more than 10 apps with the highest user rating of 5. The table below shows the order (user rating descending) provided by MySQL.

| App Name | User Ratings |
|:-:|:-:|
TurboScan™ Pro - document scanner|5
Flashlight ?|5
Learn to Speak Spanish With MosaLingua|5
:) Sudoku +|5
The Photographer's Ephemeris|5
King of Dragon Pass|5
Escape the Sweet Shop Series|5
Infinity Blade|5
Plants vs. Zombies HD|5
Plants vs. Zombies|5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Looking at the top 10 most rated apps it is observed that social networks are probably the most downloaded apps, followed by games and streaming music apps.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

It is observed that looking for the top apps in terms of user rating is not enough to clearly distinguish a trend. This happends because there are too many apps with the highest user rating. Thus, it is nice to provide a complementary analysis in the following question.

**9. Now compare the data from questions 5 and 6. What do you see?**

It is shown below the top 5 user rating average grouped by apps genre in the following table:

| App Genre | Avg User Ratings |
|:-:|:-:|
Productivity|4.00
Music|3.98
Photo & Video|3.80
Business|3.75
Health & Fitness|3.70

It is interesting to observe that even if social networks are the most downloaded apps, they are not in the top 5 rated by users in average.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

In the following table it is shown the top 3 rated apps by users, ordered considering the total number of votes.

| App Name | User Ratings | Total Ratings |
|:-:|:-:|:-:|
Head Soccer|5|481564
Plants vs. Zombies|5|426463
Sniper 3D Assassin: Shoot to Kill Gun Game|5|386521

It is observed that games are the apps that attract the highest user rating scores while the maximum number of votes from the people.

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

To begin with, the following table summarizes the average number of ratings obtained per genre when the Apps are *free of cost* (Top 5).

| Genres | Average Ratings (Free) |
|:-:|:-:|
Reference | 67447.90
Music | 56482.03
Social Networking  | 53078.20
Weather  | 47220.94
Photo & Video       | 27249.89

In addition, the average number of ratings per genre obtained for the *paid Top 5* Apps is reported below:

| Genres | Average Ratings (Paid) |
|:-:|:-:|
Games | 6333.62
Business | 3934.19
Weather  | 3248.41
News  | 3197.18
Music       | 2759.20

With the previous insight we can make a rough estimation that people consume about 10 times more *Free than Paid* Apps, based on the average number of ratings obtained per genre. In addition, we will get a comparison between free and paid Apps based in the average user rating obtained. For the free Apps, the Top 5 based on average user rating per genre is the following:

| App Genre | Avg User Ratings (Free) |
|:-:|:-:|
Productivity|3.96
Music|3.94
Photo & Video|3.79
Health & Fitness|3.58
Shopping|3.53

While the same result repeated for the paid Apps is the following:

| App Genre | Avg User Ratings (Paid) |
|:-:|:-:|
Shopping|4.5
Catalogs|4.5
Productivity|4.03
Music|4.01
Games|3.90

Based on the latter two tables, we can conclude that in general, people tend to appreciate more the products they pay, or at the same time, developers of paid Apps take more into account their costumers user experience.