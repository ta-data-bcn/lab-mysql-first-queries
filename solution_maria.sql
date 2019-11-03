
#1. 
#use appleStore 
#select distinct prime_genre from data;
#2. 
#select prime_genre, sum(rating_count_tot) from data group by prime_genre order by sum(rating_count_tot) DESC limit 10;
#3. 
#select prime_genre, count(track_name) from data group by prime_genre order by count(track_name) DESC limit 1
#4. 
#select prime_genre, count(track_name) from data group by prime_genre order by count(track_name) ASC limit 1
#5.
#select track_name, `rating_count_tot` from data order by `rating_count_tot` DESC limit 10
#6. 
#select track_name, user_rating, rating_count_tot from data order by user_rating DESC, rating_count_tot DESC limit 10

#7, 8, 9. 
#select track_name, user_rating, `rating_count_tot`from data order by `rating_count_tot` DESC limit 10
#select track_name, user_rating, rating_count_tot from data order by user_rating DESC, rating_count_tot DESC limit 10
# Facebook, Instagram and  Clash of Clans are the apps with highest quantity of ratings, and their mean rating = 4.2 average score.
#On the other hand, the top 10 with highest score and also with highest count(rating) are Head Soccer, Plants vs. Zombies and Sniper 3D Assassin: Shoot to Kill Gun Game with a score of 5 and 400k ratings each.
#Facebook is the most rated app, but has higher quantities of rating than top 5 most rated apps.

#10. select apps, user ratings, number of votes order by user ratings and number of votes DESC
#select track_name, user_rating, rating_count_tot from data order by user_rating DESC, rating_count_tot DESC limit 3

#11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#In order to check whether people care for the price or not, I am going to check the score of the paid apps and compare it with free apps. In addition to that, I am going to check the number of total votes the paid app has received vs the ones of the free app.

#select avg(user_rating) from data where price != 0 #It is the average rating of paid apps: 3.7209
#select avg(user_rating) from data where price = 0 # The average score of free apps: 3.37672
#select sum(`rating_count_tot`) from data where price != 0 #quantity of ratings in total of paid apps: 12.685.045 
#select sum(`rating_count_tot`) from data where price = 0 # quantity of ratings in total of free apps: 80.105.208

#Having carried this preliminar analysis we see that people care about price, less people are willing to pay for an app, but the ones who pay, are more satisfied with the app and hence, higher score.