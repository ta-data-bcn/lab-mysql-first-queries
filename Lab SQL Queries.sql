use appleStore;
##1. Which are the different genres? DONE
select distinct prime_genre-- , count(*) 
from data 
-- group by prime_genre
-- order by count(*)  desc; 

#2. Which is the genre with more apps rated? DONE
select prime_genre, sum(rating_count_tot)
from data 
group by prime_genre
order by sum(rating_count_tot) desc;

#3. Which is the genre with more apps? DONE
select distinct prime_genre, count(id)
from data
group by prime_genre
order by count(id) desc
limit 1;

#4. Which is the one with less? DONE
select distinct prime_genre, count(id)
from data
group by prime_genre
order by count(id)
limit 1;

#5. Take the 10 apps most rated. DONE
select track_name, rating_count_tot
from data
order by rating_count_tot desc
limit 10;


#6. Take the 10 apps best rated by users. DONE
select track_name, prime_genre, (rating_count_tot * user_rating)  ext_rating_tot
from data
order by ext_rating_tot desc
limit 10;


#7. Take a look on the data you retrieved in the question 5. Give some insights.
select track_name, rating_count_tot
from data
order by rating_count_tot desc
limit 10;
#The app that received the most feedback (Facebook) doesn't have the highest overall user rating score.

#8. Take a look on the data you retrieved in the question 6. Give some insights.
select track_name, prime_genre, (rating_count_tot * user_rating)  ext_rating_tot
from data
order by ext_rating_tot desc
limit 10;
#When an app is updated, the number of incidneces of feedback are reset to 0 and all feedback from all prior versions are added together


#9. Now compare the data from questions 5 and 6. What do you see?





#10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, prime_genre, (rating_count_tot * user_rating)  ext_rating_tot
from data
order by ext_rating_tot desc
limit 10;



#11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
use appleStore;
select * from data limit 10;
select track_name, rating_count_tot, price  from data order by price desc;
select distinct (price), sum(rating_count_tot), count(id), min(user_rating), max(user_rating),
((user_rating*rating_count_ver)) groupaveragerating
 from data group by price, groupaveragerating ;
 -- order by count(id) desc;

