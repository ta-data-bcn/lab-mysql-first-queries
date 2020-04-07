USE appleStore;

SELECT track_name, user_rating, rating_count_tot
FROM data
order by user_rating DESC, rating_count_tot DESC;