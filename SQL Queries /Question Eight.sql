USE appleStore;

SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC;