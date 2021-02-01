![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Load the *IronHackDB.sql* structure in your local MySQL Workbench database instance. Use the *applestore* (not applestore2) table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**


'Games'
'Productivity'
'Weather'
'Shopping'
'Reference'
'Finance'
'Music'
'Utilities'
'Travel'
'Social Networking'
'Sports'
'Business'
'Health & Fitness'
'Entertainment'
'Photo & Video'
'Navigation'
'Education'
'Lifestyle'
'Food & Drink'
'News'
'Book'
'Medical'
'Catalogs'


**2. Which is the genre with more apps rated?**

'Games', '52878491'


**3. Which is the genre with more apps?**

'Games', '3611702938489'


**4. Which is the one with less?**

'Catalogs', '9521080671'


**5. Take the 10 apps most rated.**

'284882215', 'Facebook', '389879808', '0', '2974676', '212', '3.5', 'Social Networking'
'389801252', 'Instagram', '113954816', '0', '2161558', '1289', '4.5', 'Photo & Video'
'529479190', 'Clash of Clans', '116476928', '0', '2130805', '579', '4.5', 'Games'
'420009108', 'Temple Run', '65921024', '0', '1724546', '3842', '4.5', 'Games'
'284035177', 'Pandora - Music & Radio', '130242560', '0', '1126879', '3594', '4', 'Music'
'429047995', 'Pinterest', '74778624', '0', '1061624', '1814', '4.5', 'Social Networking'
'282935706', 'Bible', '92774400', '0', '985920', '5320', '4.5', 'Reference'
'553834731', 'Candy Crush Saga', '222846976', '0', '961794', '2453', '4.5', 'Games'
'324684580', 'Spotify Music', '132510720', '0', '878563', '8253', '4.5', 'Music'
'343200656', 'Angry Birds', '175966208', '0', '824451', '107', '4.5', 'Games'


**6. Take the 10 apps best rated by users.**

'342548956', 'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', '8821760', '4.99', '28388', '7009', '5', 'Business'
'381471023', 'Flashlight Ⓞ', '42027008', '0', '130450', '1010', '5', 'Utilities'
'353372460', 'Learn to Speak Spanish Fast With MosaLingua', '48819200', '4.99', '9', '1', '5', 'Education'
'285994151', ':) Sudoku +', '6169600', '2.99', '11447', '781', '5', 'Games'
'366195670', 'The Photographer\'s Ephemeris', '58463232', '8.99', '663', '5', '5', 'Photo & Video'
'335545504', 'King of Dragon Pass', '364490752', '9.99', '882', '85', '5', 'Games'
'1188375727', 'Escape the Sweet Shop Series', '90898432', '0', '3', '3', '5', 'Games'
'387428400', 'Infinity Blade', '624107810', '0.99', '326482', '177050', '5', 'Games'
'363282253', 'Plants vs. Zombies HD', '225859584', '0.99', '163598', '503', '5', 'Games'
'350642635', 'Plants vs. Zombies', '105379840', '0.99', '426463', '680', '5', 'Games'


**7. Take a look on the data you retrieved in the question 5. Give some insights.**

Games is the most represented genre in the list, with social networking and music tight in a second place. Although we could consider if Instagram is really only a Photo and Video app, or Social Networking should be the prime genre.
All of them are free apps, and for this reason they may be amonsgt the most installed, and therefore, rated.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

Games is again the most represented genre, followed by single occurrencies of different genres (Business, utilities, Education,  and Photo & Video). Eight of od ten have a price differnet to zero. In two cases the "rating count total" is bellow 10, and in two other bellow 1000. 

**9. Now compare the data from questions 5 and 6. What do you see?**
None of the most rated apps appear in the most rated apps by user, as all 10 have user rating values at 4.5 or bellow.
The free apps are the most rated, but do not have unnanimous 5-star rates.
Apps with less number of total ratings, can achieve this unnanimity easily.
It could be interesting to have a column with information of ratings per download.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
'487119327', 'Head Soccer', '121319424', '0', '481564', '8518', '5', 'Games'
'350642635', 'Plants vs. Zombies', '105379840', '0.99', '426463', '680', '5', 'Games'
'930574573', 'Sniper 3D Assassin: Shoot to Kill Gun Game', '157851648', '0', '386521', '10332', '5', 'Games'



**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

Comparing the apps that cost $9.99 and the free apps, and grouping by average ratings, shows us a similar pattern with most raitngs around 4 and 4.5. 0-star rating is the third, and co-third categories (in apps costing 0 and 9.9 respectively.) The pattern does not seem to differ between $9.99 and $0 apps. There are more tests in the sql file.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
