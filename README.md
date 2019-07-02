![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, connect to the Data Bootcamp Google Database using the credentials provided in class. Choose the database called *appleStore* (NOT *appleStore2*!). Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

'Book'
'Business'
'Catalogs'
'Education'
'Entertainment'
'Finance'
'Food & Drink'
'Games'
'Health & Fitness'
'Lifestyle'
'Medical'
'Music'
'Navigation'
'News'
'Photo & Video'
'Productivity'
'Reference'
'Shopping'
'Social Networking'
'Sports'
'Travel'
'Utilities'
'Weather'


**2. Which is the genre with more apps rated?**

'Games', '52878491'
'Social Networking', '7598316'
'Photo & Video', '5008946'
'Entertainment', '4030518'
'Music', '3980199'
'Shopping', '2271070'
'Health & Fitness', '1784371'
'Utilities', '1702228'
'Sports', '1599070'
'Weather', '1597034'



**3. Which is the genre with more apps?**

'Games', '3862'

**4. Which is the one with less?**

'Catalogs', '10'

**5. Take the 10 apps most rated.**

'Facebook', 'Social Networking', '2974676'
'Instagram', 'Photo & Video', '2161558'
'Clash of Clans', 'Games', '2130805'
'Temple Run', 'Games', '1724546'
'Pandora - Music & Radio', 'Music', '1126879'
'Pinterest', 'Social Networking', '1061624'
'Bible', 'Reference', '985920'
'Candy Crush Saga', 'Games', '961794'
'Spotify Music', 'Music', '878563'
'Angry Birds', 'Games', '824451'


**6. Take the 10 apps best rated by users.**

':) Sudoku +', 'Games', '5'
'King of Dragon Pass', 'Games', '5'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', 'Business', '5'
'Plants vs. Zombies', 'Games', '5'
'Learn to Speak Spanish Fast With MosaLingua', 'Education', '5'
'Plants vs. Zombies HD', 'Games', '5'
'The Photographer\'s Ephemeris', 'Photo & Video', '5'
'▻Sudoku +', 'Games', '5'
'Flashlight Ⓞ', 'Utilities', '5'
'Infinity Blade', 'Games', '5'


**7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!

'3.526955675976101'


**8. Take the mean rate between the 10 apps best rated.** Don't calculate the mean, just see the data!

It is 5. Just mind that those 10 apps are not exactly the best rated. That is, they are among the best rated, but they are tied in having the best rating with 490 more apps that also have the top rating. By limiting to 10 records, we just get a slice of 10 of them.

**9. What do you see here?**

The query for the 10 most rated ones gives us the top 10 of most rated apps. But the query for the 10 best rated ones, does not exactly gives us the 10 best rated ones but a sample of them.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

They are different variables. We cant sort by them at once. It is either one or the other. If we include both columns to sort from, what we actually have is a tie-break 2nd criteria. That is, when the sorting using the 1st column gives us a tie, then we move on to the 2nd one used in the query to sort from.

**11. Does people care about the price?**
In general they do, cause the most downloaded ones are for free. If they hadn't been for free, maybe they wouldn't have become so famous and used. Nevertheless, we won't really know this for sure.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
