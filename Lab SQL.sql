select * from data;

select DISTINCT(prime_genre) from data;
SELECT SUM(`rating_count_tot`) as Counter, `prime_genre`from data group by prime_genre order by Counter DESC limit 1;
select count(`prime_genre`) as Counter, `prime_genre`from data group by prime_genre order by Counter DESC limit 1;
select count(`prime_genre`) as Counter, `prime_genre`from data group by prime_genre order by Counter limit 1 ;
SELECT rating_count_tot, track_name from data order by rating_count_tot DESC limit 10;
SELECT `user_rating`, `track_name`, rating_count_tot from data ORDER BY `user_rating` DESC, rating_count_tot DESC  limit 10;
#Q-7: We see that the most rated apps are generally the most used ones or most populars, doesn't mean they are the best rated.
#Q-8: We see that the best apps are not the most voted ones, they have least votes. The app with the highest votes (almost 500k) and with a 5-rating is not close to the 10th most voted app (800k)
#Q-9: We see that the most voted apps are the most used by the public, but the best ones "with 5-rating and highest votes" are apps that people don't use that much.
SELECT `user_rating`, `track_name`, rating_count_tot from data ORDER BY `user_rating` DESC, rating_count_tot DESC  limit 3;
#Q-11
SELECT `user_rating`, `track_name`, rating_count_tot, `price` from data ORDER BY `user_rating` DESC, rating_count_tot DESC;
SELECT rating_count_tot, track_name, `price` from data order by rating_count_tot DESC;
#When using apps, people generally use apps that are free because they are easy to download and try if it works for you, but when we filter the best ones (5-rating with highest votes) people tend to care less when it comes to price because they are using an app that they like.