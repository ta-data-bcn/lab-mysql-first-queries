# 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM data

# 2. Which is the genre with more apps rated?
SELECT prime_genre, COUNT(prime_genre)
FROM data
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
; #Answer: Games 

# 4. Which is the one with less?
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
; #Answer: Catalogs

#5. Take the 10 apps most rated

SELECT track_name, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
Limit 10
; #Answer: Facebook 

#6. Take the 10 apps best rated by users

SELECT track_name, user_rating
FROM data
ORDER BY user_rating DESC
Limit 10
;

