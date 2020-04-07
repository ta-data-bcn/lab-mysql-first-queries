USE appleStore;

SELECT track_name, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC;