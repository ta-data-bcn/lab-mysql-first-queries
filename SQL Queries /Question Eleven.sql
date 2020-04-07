USE appleStore;

SELECT COUNT(DISTINCT price)
FROM data;

SELECT AVG(price)
FROM data;

SELECT COUNT(price)
FROM data
WHERE price = 0;

SELECT COUNT(price)
FROM data
WHERE price != 0;

SELECT track_name, price
FROM data
ORDER BY price DESC;

SELECT COUNT(price), prime_genre
FROM data
WHERE price = 0
group by prime_genre
order by count(price) DESC;

SELECT COUNT(price), prime_genre
FROM data
WHERE price != 0
group by prime_genre
order by count(price) DESC;

SELECT track_name, prime_genre
FROM data
WHERE price != 0 AND prime_genre = 'Catalogs'
order by prime_genre;

SELECT track_name, prime_genre
FROM data
WHERE price != 0 AND prime_genre = 'Shopping'
order by prime_genre;

SELECT DISTINCT(prime_genre), AVG(user_rating), AVG(price)
FROM data
group by prime_genre
order by avg(user_rating) DESC;