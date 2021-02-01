![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries - Responses

**1. Which are the different genres?**
- Games
- Productivity
- Weather
- Shopping
- Reference
- Finance
- Music
- Utilities
- Travel
- Social Networking
- Sports
- Business
- Health & Fitness
- Entertainment
- Photo & Video
- Navigation
- Education
- Lifestyle
- Food & Drink
- News
- Book
- Medical
- Catalogs

**2. Which is the genre with more apps rated?**
Games

**3. Which is the genre with more apps?**
Games

**4. Which is the one with less?**
Catalogs

**5. Take the 10 apps most rated.**
- Facebook
- Instagram
- Clash of Clans
- Temple Run
- Pandora
- Pinterest
- Bible
- Candy Crush Saga
- Spotify Music
- Angry Birds

**6. Take the 10 apps best rated by users.**
- Turbo Scan Pro
- Flashlight
- Learn to Speak Spanish Fast With MosaLingua
- :) Sudoku +
- The Photographer's Ephemeris
- King of Dragon Pass
- Escape the Sweet Shop Series
- Infinity Blade
- Plants vs. Zombies HD
- Plants vs. Zombies

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
From the 10 apps most rated we could see that most probably are also the most downloaded ones. We could find a relation between downloads and number of rates. We can also see that all the apps are free ones, what could explain the number of downloads.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
From the 10 apps best rated, we can see that majority doesn't have a lot of rates (so not a lot of downloads). We could also see that the majority are pay apps. We could also see that at least 100 apps have also the top rating, so we should look for a 2nd criteria in order to compare them.

**9. Now compare the data from questions 5 and 6. What do you see?**
Apps that has more rates tend to don't be one of the top rated. And apps with fewer rates has more posibilities to be between the top rated.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
We have ordered first by user_rate and then by rating_count_tot.

Top 3:
- Head Soccer
- Plants vs. Zombies
- Sniper 3D Assassin: Shoot to Kill Gun Game

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
If we consider that rates is proportional to the number of downloads, we can see that free apps are downloaded 5 times more (19750 vs. 4039) than paided apps. So we could say that people download more often free apps than paided apps.
Number of free apps: 4056
Number of paid apps: 3141
