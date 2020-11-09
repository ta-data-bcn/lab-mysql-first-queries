1.  *Which are the different genres?*: Games Productivity Weather
    Shopping Reference Finance Music Utilities Travel Social Networking
    Sports Business Health & Fitness Entertainment Photo & Video
    Navigation Education Lifestyle Food & Drink News Book Medical
    Catalogs

*2. Which is the genre with more apps rated?* Social Networking

*3. Which is the genre with more apps?* Games

*4. Which is the one with less?* Catalogs

*5. Take the 10 apps most rated.* PAC-MAN Premium Election 2016 Map Star
Walk - Find Stars And Planets in Sky Above Juxtaposer PCalc - The Best
Calculator Lifesum – Inspiring healthy lifestyle app Evernote - stay
organized Facebook Big Day - Event Countdown Pandora - Music & Radio

*6. Take the 10 apps best rated by users.* Head Soccer Plants vs.
Zombies Sniper 3D Assassin: Shoot to Kill Gun Game Geometry Dash Lite
Infinity Blade Geometry Dash Domino's Pizza USA CSR Racing 2 Pictoword:
Fun 2 Pics Guess What's the Word Trivia Plants vs. Zombies HD

*7. Take a look on the data you retrieved in the question 5. Give some
insights.* Games is by far the app genre with the most ratings

*8. Take a look on the data you retrieved in the question 6. Give some
insights.* Since all apps with the maximum rating did not fit in the top
10 list, I took those rated 5 sorted by most ratings.

*9. Now compare the data from questions 5 and 6. What do you see?* The
list of best rated apps differes considerably from the list with the
most ratings.

*10. How could you take the top 3 regarding the user ratings but also
the number of votes?* You would filter for the maximum rating and then
order by the number of votes, setting a limit of 3. The lines of code
below achieve said result.

select distinct track\_name, avg(user\_rating) as rating,
sum(rating\_count\_tot) as sum from data group by track\_name having
rating=5 order by sum desc limit 3

*11. Does people care about the price? Do some queries, comment why are
you doing them and the results you retrieve. What is your conclusion?*
It doesn't seem as though price is a good indication of average rating.
Though free apps have the lowest average rating, apps in the \$5.99
price range had the second lowest ratings. Moreover, apps in the \$6.99
group had the highest rating. The most expensive ones exceeding 25
instances, those in the \$9.99 group, had a rating just below the
average. This tells me that, though free apps get the lowest rating,
once apps must be purchased, price is not a good indication of rating.
