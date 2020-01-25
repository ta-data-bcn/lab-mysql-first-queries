1. Which are the different genres?
SEE lab_mysql_first_queries.sql

2. Which is the genre with more apps rated?
SEE lab_mysql_first_queries.sql

3. Which is the genre with more apps?
SEE lab_mysql_first_queries.sql

4. Which is the one with less?
SEE lab_mysql_first_queries.sql

5. Take the 10 apps most rated.
SEE lab_mysql_first_queries.sql

6. Take the 10 apps best rated by users.
SEE lab_mysql_first_queries.sql

7. Take a look on the data you retrieved in the question 5. Give some insights.
SEE question 9

8. Take a look on the data you retrieved in the question 6. Give some insights.
SEE question 9

9. Now compare the data from questions 5 and 6. What do you see?
Price wise, best rated apps are most likely to have an associated prize (8 out of 10) while all most rated apps are free.
The number of overall ratings for the best rated apps is relatively low. The one with a higher number of rates has 326482 rates, which accounts for less than 0.1% of the Facebook, the app with more ratings in the list. And 3 of the best rated apps have less than 10 ratings. 
On the other hand, for apps with the most ratings the user rating is not the highest, ranging from 4.5 to 3.5. A possible conclusion may be that the bigger the amount of opinions, the more diverse they may be (also, the more used an app is, the more likely some bugs may be found?).
In terms of app genre, there does not seem to be a pattern for the best rated apps, we find a mix of leisure (games) and utilities / work related apps. There is sligthtly more consistency in the type of app genre for the most rated apps, since most of them are related to leisure activities.

10. How could you take the top 3 regarding the user ratings but also the number of votes?

11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
When we compare % of free apps vs paid apps in the market, we can see that though the amount of free apps is higher, there are nevertheless quite 
a big proportion of paid apps (43.69%), meaning there is  a target for them (SEE lab_mysql_first_queries.sql >> Q11.1)

If we compare the max, min and avg price, we see that the highest price of a paid app is 99.99 while the lowest is 0.99. The average price paid for an app 
is less than 4 (3.95). That may be a signal that, though people may be willing to pay for an app, the price they are willing to pay is quite low in the range 
of possible prices (therefore, they are price sensitive)(SEE lab_mysql_first_queries.sql >> Q11.2)

Finally, on question 9 we already stablished that apps that are top rated tend to be paid apps. A possible conclusion of this will be that people seems 
willing to pay for apps if the quality is high enough. In question 10 we re-ordered on the top rated apps to get the most popular (most rated) of them: 
(SEE lab_mysql_first_queries.sql >> Q11.3)

We can see that, though some of the most popular / best rated apps listed are paid, it's not a majority. In order to dig deeper into this hypothesis we 
should probably get information on the actual amount of downloads per app to prove a relationship among price - rating - number of downloads.

