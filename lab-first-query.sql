SELECT `prime_genre` FROM data; # to see the different genres

#genre with more apps rated
SELECT `prime_genre`, count(`track_name`) as count_t
from data
where rating_count_tot != 0
group by `prime_genre`
order by count_t desc
limit 10;

#genre with more apps
SELECT `prime_genre`, count(`track_name`) as count_t
from data
group by `prime_genre`
order by count_t desc
limit 10;

#genre with less apps
SELECT `prime_genre`, count(`track_name`) as count_t
from data
group by `prime_genre`
order by count_t ASC
limit 10;

# 10 apps more rated
SELECT `track_name`, `rating_count_tot`
from data
order by `rating_count_tot`desc
limit 10;

# 10 apps best rated
SELECT `track_name`, `user_rating`
from data
order by `user_rating`desc
limit 10;

# The most rated apps are used by millions / thousands of people
# The best rated apps might not be particularly well known
# The most rated apps are not the best rated apps. We could infer that the more ratings, the more difficult it is to have a perfect rating.

# Top 3 regarding the user ratings but also the number of votes

SELECT `track_name`, `user_rating`, `rating_count_tot`
from data
order by `user_rating`desc, `rating_count_tot`desc
limit 3;


# Do people care about the price

SELECT `price`, round(AVG(`user_rating`),2) as rating_avg, SUM(`rating_count_tot`) as tot_votes
from data
group by `price`
order by rating_avg DESC, tot_votes DESC;

# The higher the price, the less number of votes, since the users are probably more specific.
# It is true that the most expensive apps (+99 eur) have ratings >=4, which is consistent with the fact that these users probably knew what they were getting when they spent that amount of money. Below that price, there doesn't seem to be a clear relation between price and average rating, since the results are more mixed up.The rating here probably depends on the actual quality of the app and the fact that the end user is maybe less targeted.

# HOW DO I SORT BY PRICE? IT DOESN'T LET ME

SELECT `price`, round(AVG(`user_rating`),2) as rating_avg, SUM(`rating_count_tot`) as tot_votes
from data
where price >= 99
group by `price`
order by rating_avg DESC, tot_votes DESC;


SELECT `price`, round(AVG(`user_rating`),2) as rating_avg, SUM(`rating_count_tot`) as tot_votes
from data
where price < 99
group by `price`
order by rating_avg DESC, tot_votes DESC;