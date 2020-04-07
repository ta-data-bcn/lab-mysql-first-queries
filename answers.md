Answers to MySQL first queries:

use appleStore;
select * from data;

#question 1
SELECT DISTINCT prime_genre from data;

#question 2
select prime_genre, count(track_name)
from data where rating_count_tot != 0
group by prime_genre
order by count(track_name) desc
limit 1;

#question 3
select prime_genre, count(track_name)
from data 
group by prime_genre
order by count(track_name) desc
limit 1;

#question 4
select prime_genre, count(track_name)
from data 
group by prime_genre
order by count(track_name) asc
limit 1;

#question 5
select track_name, rating_count_tot
from data
where rating_count_tot != 0
order by rating_count_tot desc
limit 10;

#question 6
select track_name, user_rating, rating_count_tot
from data
where user_rating = 5 and rating_count_tot != 0
order by rating_count_tot desc
limit 10;

#question 7
#My insights taking a look at the results from question 5 are that theres a correlation beteween the 
most used apps and the most rated apps, therefore, the most posuplar apps are in the top 10 most rated apps.

#question 8
#My insights taking a look at the results from question 5 are on one hand (taking into consideration the output of question 5 as well),
the best rated apps are not even close in the rating count to the most rated, telling us that above certain amounts of ratings,
it's neraly imposible to have a 5 start rating. On the other hand we can also see that most of the best rated apps are games. 
This can bring us to think that people tend to rate games higher because they're trivial, not needed in a specific moment when 
if there's a bug it affects your "real" live.

#question 9
#oh I actually answered this on the question 8 (next time I'll read all the questions first xD
it's basically the correlation between the most rated and the best rated its negative
meaning the the more rating you have the less likely you are to be one of the best rated apps.

#question 10
select track_name, rating_count_tot, user_rating
from data
where user_rating = 5
order by rating_count_tot desc
limit 3;

#question 11
#1
select track_name, rating_count_tot, user_rating, price
from data
where rating_count_tot != 0
order by rating_count_tot desc
limit 10;
#from this query we can see that all top 10 of most rated apps are free. (this only tells us that free apps are usually 
more commonly dowloaded than paid app) we don't have enough info to answer the question yet.
#2
select track_name, rating_count_tot, user_rating, price
from data
where price != 0 and user_rating = 5
order by rating_count_tot desc
limit 10;
#here we can see that some of the best rated app (from question 6) are paid apps and this hasn't influenced in they rating score
although we see again that a lot of them are games. people are used to paying for games, 
we don't have enough info to answer the question yet.
#3
select track_name, rating_count_tot, user_rating, price
from data
where price != 0 
order by rating_count_tot desc
limit 10;
#here we see that out of the 10 best rated paid apps, only 3 have got a 5 rating score, this might be a hint that price influences 
the rating we are seeing a tendency to not rate 5 starts to paid apps (might be 0,5 stars the prize you need to pay to make your app paid?)
we don't have enough info to answer the question yet.
#4
select track_name, rating_count_tot, user_rating, price
from data
where price != 0 
order by user_rating desc
limit 10;
#here first of all thwe have two insignificant entries in "learn englis..." and " learn to speak spanish.." not enough ratings.
other than that we might se an indicator that people might care about the price more if it's like 1 or 2 $  than if it's 5 or more
this might be because 5$ apps are already much more specific and have smaller niche market and they're les penalized by puting 
a price on their app.
#Final
#After running some queries (Would need many more and more data to have definite conclusions)
I think we can say that price can influence on and app's rating
Although we have seen a stronge correlation between number of ratings and ratings score than
we have seen between rating score and it being a paid app.