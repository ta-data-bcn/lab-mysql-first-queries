![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Load the *IronHackDB.sql* structure in your local MySQL Workbench database instance. Use the *applestore* (not applestore2) table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

    - Games , Productivity , Weather , Shopping , Reference , Finance , Music , Utilities , Travel , Social Networking , Sports
    - Business , Health & Fitness , Entertainment , Photo & Video , Navigation , Education , Lifestyle , Food & Drink , News
    - Book , Medical , Catalogs

**2. Which is the genre with more apps rated?**

    - Games

**3. Which is the genre with more apps?**

    - Games

**4. Which is the one with less?**

    - Catalogs

**5. Take the 10 apps most rated.**

    - Facebook , Instagram , Clash of Clans , Temple Run , Pandora - Music & Radio , Pinterest , Bible , Candy Crush Saga
    - Spotify Music , Angry Birds

**6. Take the 10 apps best rated by users.**

    - TurboScan™ Pro , Flashlight Ⓞ  , Learn to Speak Spanish Fast With MosaLingua , :) Sudoku + , The Photographer's Ephemeris
    - King of Dragon Pass , Escape the Sweet Shop Series , Infinity Blade , Plants vs. Zombies HD , Plants vs. Zombies

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

     - We can observe that the most apps rated are the free apps. We can observe the most rated apps aren't free

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

    - This apps are the apps that have the best rated value, but they aren't the ones with the most reviews.
    - one idea is that we can see the best user_rating of the most downloaded applications 

**9. Now compare the data from questions 5 and 6. What do you see?**

    - In question 5 we have the apps with the most reviews and in question 6 we have the apps with the best rated reviews

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

    - Head Soccer , Plants vs. Zombies , Sniper 3D Assassin: Shoot to Kill Gun Game

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

    - We can observe that the free apps have more count ratings (80105208) respect with pay apps (12685045).
    my conclusion is the following:

    - An application with many reviews will not be affected by few reviews (even if it is 5 stars), 
    but an application with fewer reviews will be affected more.

    - This does not mean that the app is better or not than another, simply that there are more people who 
    rate the app for free and even if the app improves it will not be reflected in the review score


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
