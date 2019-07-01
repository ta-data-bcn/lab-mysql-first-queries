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
'Games', '3400'

**3. Which is the genre with more apps?**
'Games', '3862'

**4. Which is the one with less?**
'Catalogs', '10'

**5. Take the 10 apps most rated.**
'Facebook', '2974676'
'Instagram', '2161558'
'Clash of Clans', '2130805'
'Temple Run', '1724546'
'Pandora - Music & Radio', '1126879'
'Pinterest', '1061624'
'Bible', '985920'
'Candy Crush Saga', '961794'
'Spotify Music', '878563'
'Angry Birds', '824451'

**6. Take the 10 apps best rated by users.**
':) Sudoku +', '5'
'King of Dragon Pass', '5'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', '5'
'Plants vs. Zombies', '5'
'Learn to Speak Spanish Fast With MosaLingua', '5'
'Plants vs. Zombies HD', '5'
'The Photographer\'s Ephemeris', '5'
'▻Sudoku +', '5'
'Flashlight Ⓞ', '5'
'Infinity Blade', '5'

**7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!

**8. Take the mean rate between the 10 apps best rated.** Don't calculate the mean, just see the data!

**9. What do you see here?**
What happens in the last 2 queries is that the 10 best rated apps, with 5 as their user rating, usually have a very low number of ratings, while the ones with the most rating usually don't have a 5 rating since there's bound to be user who had issues and rated it low

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
'Facebook', '2974676', '3.5'
'Instagram', '2161558', '4.5'
'Clash of Clans', '2130805', '4.5'

**11. Does people care about the price?**
Checking the number of rating that the most rated apps with the highest price got and the same number from the apps that cost 0 it's clear that a lower (or non-existant) price tag is one of the most important factor in influencing the popularity of an app

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
