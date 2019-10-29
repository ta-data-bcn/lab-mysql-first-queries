use appleStore;
-- SELECT DISTINCT prime_genre from data; #Fist Question

-- select prime_genre, count(track_name)  #Second Question
-- from data
-- where rating_count_tot != 0
-- group by prime_genre
-- order by count(track_name) desc
-- limit 1;

-- select prime_genre, count(track_name) #Third Question
-- from data
-- group by prime_genre
-- order by count(track_name) desc
-- limit 1;

-- select prime_genre, count(track_name) #Fourth Question
-- from data
-- group by prime_genre
-- order by count(track_name) asc
-- limit 1;

-- select track_name, rating_count_tot  #Fifth Question
-- from data
-- where rating_count_tot != 0
-- order by rating_count_tot desc
-- limit 10;

-- select track_name, user_rating, rating_count_tot  #Sixth Question
-- from data
-- where user_rating = 5 and rating_count_tot != 0
-- order by rating_count_tot desc
-- limit 10;


-- select track_name, user_rating, rating_count_tot  #tenth Question
-- from data
-- where user_rating = 5 and rating_count_tot != 0
-- order by rating_count_tot desc
-- limit 3;

-- select track_name, rating_count_tot, user_rating, price #Eleventh question - First code
-- from data
-- where rating_count_tot != 0
-- order by rating_count_tot desc
-- limit 10;

-- select track_name, rating_count_tot, user_rating, price #Eleventh question - Second code
-- from data
-- where rating_count_tot != 0 and user_rating = 5
-- order by rating_count_tot desc
-- limit 10;

-- select track_name, rating_count_tot, user_rating, price #Eleventh question - Third code
-- from data
-- where rating_count_tot != 0 and user_rating = 5
-- order by price desc
-- limit 10;