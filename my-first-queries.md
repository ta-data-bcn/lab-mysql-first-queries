1. Which are the different genres?

    SELECT prime_genre as genre
    FROM data
    GROUP BY genre;

2. Which is the genre with more apps rated?

    SELECT prime_genre, SUM(rating_count_tot)
    FROM data
    GROUP BY prime_genre;
    
3. Which is the genre with more apps?

    SELECT prime_genre, COUNT(prime_genre) 
    FROM data
    GROUP BY prime_genre;

4. Which is the one with less?

    SELECT prime_genre, COUNT(prime_genre) 
    FROM data
    GROUP BY prime_genre
    ORDER BY COUNT(prime_genre) ASC;

5. Take the 10 apps most rated.
    
    SELECT track_name, rating_count_tot
    FROM data
    ORDER BY rating_count_tot DESC
    LIMIT 10;
    
    Solution:
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
    

6. Take the 10 apps best rated by users.

    SELECT track_name, user_rating 
    FROM data
    ORDER BY user_rating DESC
    LIMIT 10;

    Solution:
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

7. Take a look on the data you retrieved in the question 5. Give some insights.

    The top apps most rated are the first three with a lot of difference. In the top ten there are 5 apps that could be considered social media apps, 4 games and one utility, which is the Bible. It would be interested to compare it with the number of downloads they have to see what percentage of people downloading the app has left a request. 

8. Take a look on the data you retrieved in the question 6. Give some insights.

    On question 6 however we see that the top 10 rated by users do not match with the list of top rated apps. Again, there are 6 games, one educational app and two utility app. 
    Among the best top rated we have in the top three two utility apps and a educational one, plus 6 games. 

9. Now compare the data from questions 5 and 6. What do you see?

    The most rated apps are not necesarely the ones with best rating. Actually, by looking at both questions we can see that the most rated apps are not among the best rated apps. Also there are 0 social media apps in the best rated apps, and the top rated ones are utilities, followed then by games.

10. How could you take the top 3 regarding the user ratings but also the number of votes?

    SELECT track_name, user_rating, rating_count_tot
    FROM data
    ORDER BY user_rating DESC, rating_count_tot DESC
    LIMIT 10;


11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

    SELECT track_name, user_rating, rating_count_tot, price 
    FROM data
    ORDER BY user_rating DESC, price DESC
    LIMIT 10;
    
    Now we are adding the price to our query and telling it to grab the 10 top rated apps and tell us their price. If we look at it, we can see that only two of the best rated apps are free. Also, the top rated app costs 5 dollars, and on average, each app costs at least 3 dollars. 
    
    This means that people doesn't rate good or bad based on price only, but also on quality and utility.