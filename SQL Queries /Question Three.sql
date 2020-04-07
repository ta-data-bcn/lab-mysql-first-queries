USE appleStore;

SELECT COUNT(*) id, prime_genre
FROM data
group by prime_genre
ORDER by id DESC;