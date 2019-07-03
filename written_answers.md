**7. Take a look on the data you retrieved in the question 5. Give some insights.**

The most rated apps are also the most popular apps, such as Facebook, Instagram, ... 

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Most of the apps appearing here are not really popular and they all have the same ratings, so we could say this is not representative as there should be more apps with the same rating.

**9. Now compare the data from questions 5 and 6. What do you see?**

As we said, the most popular are the most rated but not the best rated.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

We could take, from the 10 most rated, the 3 best rated, for example. If not, we could multiply the user rating for the total rating and take the higher ones.

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion

		SELECT `price`, SUM(`rating_count_tot`) FROM data
		GROUP BY `price`
		ORDER BY SUM(`rating_count_tot`) DESC
		LIMIT 10
		;

We observe that, when cheaper, more total ratings.