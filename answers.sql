-- 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM data;

-- 2. Which is the genre with more apps rated?
SELECT `prime_genre`, SUM(`rating_count_tot`) FROM data
GROUP BY `prime_genre`
ORDER BY SUM(`rating_count_tot`) DESC
;

-- 3. Which is the genre with more apps?
SELECT `prime_genre`, count(`prime_genre`) FROM data
GROUP BY `prime_genre`
ORDER BY SUM(`rating_count_tot`) DESC
;

-- 4. Which is the one with less?
SELECT `prime_genre`, count(`prime_genre`) FROM data
GROUP BY `prime_genre`
ORDER BY COUNT(`prime_genre`) ASC
;

-- 5. Take the 10 apps most rated.
SELECT `track_name`, SUM(`rating_count_tot`) FROM data
GROUP BY `track_name`
ORDER BY SUM(`rating_count_tot`) DESC
LIMIT 10
;

-- 6. Take the 10 apps best rated by users.
SELECT `track_name`, `user_rating` FROM data
ORDER BY `user_rating` DESC
LIMIT 10
;
