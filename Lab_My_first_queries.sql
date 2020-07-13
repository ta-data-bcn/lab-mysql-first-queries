select * from data;

#1.Which are the different genres?
SELECT `prime_genre` FROM `data`;

#2. Which is the genre with more apps rated?
SELECT `prime_genre`, count(`track_name`) as count_t
from data
where rating_count_tot != 0
group by `prime_genre`
order by count_t desc
limit 10;

#3.Which is the genre with more apps?
SELECT `prime_genre`, count(`track_name`) as count_t
from data
group by `prime_genre`
order by count_t desc
limit 1;

#4.Which is the one with less?
SELECT `prime_genre`, count(`track_name`) as count_t
from data
group by `prime_genre`
order by count_t ASC
limit 1;

#5.Take the 10 apps most rated.
SELECT `track_name`, `rating_count_tot`
FROM `data`
order by `rating_count_tot` DESC
limit 10; 

#6.Take the 10 apps best rated by users.
SELECT `track_name`, `user_rating`
FROM `data`
order by `user_rating` DESC
limit 10;

#7.Take a look on the data you retrieved in the question 5. Give some insights.
#The apps that are best rated are the most popular ones.

#8.Take a look on the data you retrieved in the question 6. Give some insights.
#The 10 apps best rated by users have the highest rating but they are not rated by many people.

#9.Now compare the data from questions 5 and 6. What do you see?
The apps that are best rated by users are not the ones that have more quantity of ratings.

#10.How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT `track_name`, `user_rating`, `rating_count_tot`
FROM `data`
order by `user_rating` DESC,
`rating_count_tot` DESC
limit 3;

#11.Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

#Checking the relation between the price and the most rated apps
SELECT `track_name`, `price`, `rating_count_tot`
FROM `data`
order by 
`rating_count_tot` DESC,
`price` DESC
limit 10;

#Cheking the relation between the user rating and the price
SELECT `track_name`, `price`, `user_rating`
FROM `data`
order by 
`user_rating` DESC,
`price` DESC
limit 10;

#The most rated apps are the popular ones and they are free.

