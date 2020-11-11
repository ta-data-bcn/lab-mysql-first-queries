use applestore;
select * from data;

#1st done
select distinct prime_genre from data;

#2nd done
select count(*), prime_genre, rating_count_tot from data
where rating_count_tot > 0
group by prime_genre
order by count(*) DESC;

#3rd done
select count(*) as n_number, prime_genre
from data
group by prime_genre
order by n_number DESC;

#4th done
select count(*) as n_number, prime_genre
from data
group by prime_genre
order by n_number
limit 1;

#5th to do
select track_name, user_rating, sum(rating_count_tot)
FROM data
GROUP BY track_name
ORDER BY sum(rating_count_tot) DESC
limit 10;

#6th to do
select track_name, rating_count_tot, avg(user_rating)
FROM data
GROUP BY track_name
ORDER BY avg(user_rating) DESC
limit 10;

#7th to do - 7. Take a look on the data you retrieved in the question 5. Give some insights
#It makes sense that the most famous Apps are the most rated ones, but it does not mean that they are the best rated.

#8th to do - 8. Take a look on the data you retrieved in the question 6. Give some insights
#If some Apps have less number of rates in total, it has more possibilities to get the maximum punctuation. 
 
#9th to do
#As said before, the user rating does not mean that the App is more famous than others. And more public, more user rating in the middle, but not in the high and low peaks.

#10th to do
select track_name,  avg(user_rating), sum(rating_count_tot), prime_genre
from data
group by prime_genre
order by avg(user_rating) desc, sum(rating_count_tot) 
limit 3;

#11th to do
select track_name, price, user_rating, rating_count_tot, prime_genre
from data
group by prime_genre
order by rating_count_tot DESC;
#As seen, the lowest price or even free Apps, they are the most rated Apps
