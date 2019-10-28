<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>database</key>
			<string>appleStore</string>
			<key>host</key>
			<string>127.0.0.1</string>
			<key>name</key>
			<string>Alex Navarro - My SQL queries</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>root</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8</string>
			<key>contentFilterV2</key>
			<dict>
				<key>children</key>
				<array/>
				<key>filterClass</key>
				<string>groupNode</string>
				<key>isConjunction</key>
				<true/>
			</dict>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGJCVYJHZlcnNpb25YJG9iamVjdHNZJGFy
			Y2hpdmVyVCR0b3ASAAGGoKgHCBMUFRYaIVUkbnVsbNMJCgsMDxJX
			TlMua2V5c1pOUy5vYmplY3RzViRjbGFzc6INDoACgAOiEBGABIAF
			gAdUdHlwZVRyb3dzXxAdU2VsZWN0aW9uRGV0YWlsVHlwZU5TSW5k
			ZXhTZXTSFwsYGVxOU1JhbmdlQ291bnQQAIAG0hscHR5aJGNsYXNz
			bmFtZVgkY2xhc3Nlc1pOU0luZGV4U2V0oh8gWk5TSW5kZXhTZXRY
			TlNPYmplY3TSGxwiI1xOU0RpY3Rpb25hcnmiIiBfEA9OU0tleWVk
			QXJjaGl2ZXLRJidUZGF0YYABAAgAEQAaACMALQAyADcAQABGAE0A
			VQBgAGcAagBsAG4AcQBzAHUAdwB8AIEAoQCmALMAtQC3ALwAxwDQ
			ANsA3gDpAPIA9wEEAQcBGQEcASEAAAAAAAACAQAAAAAAAAAoAAAA
			AAAAAAAAAAAAAAABIw==
			</data>
			<key>contentSortCol</key>
			<string>id</string>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {993, 606}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string>-- 1 Which are the different genres?
select  prime_genre
from data
group by prime_genre;

-- 2 Which is the genre with more apps rated?
select  prime_genre, count(rating_count_tot) as A
from data
where rating_count_tot!=0
group by prime_genre
order by A desc
limit 1
;

-- 3 Which is the genre with more apps?
select  prime_genre, count(prime_genre) as A
from data
group by prime_genre
order by A desc
limit 1;

-- 4 Which is the one with less?
select  prime_genre, count(prime_genre) as A
from data
group by prime_genre
order by A asc
limit 1;

-- 5 Take the 10 apps most rated.
select  track_name, rating_count_tot as A
from data
order by A desc
limit 10;

-- 6 Take the 10 apps best rated by users.
select  track_name, user_rating as A
from data
order by A desc 
limit 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, rating_count_tot as A, user_rating as B
from data
where 500000&lt;rating_count_tot
order by  B desc;

-- 11. Does people care about the price?
select price, sum(rating_count_tot) as "times download"
from data
group by price


</string>
			<key>table</key>
			<string>data</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>214</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>queryHistory</key>
	<array>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot) as "times download"
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot) as time download
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot) as A
from data
group by A asc</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot) as A
from data
group by ça asc</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot)
from data
group by price ASC</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot)
from data
group by price asc</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot)
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select price, count(rating_count_tot)
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select price, count(rating_count_tot)
from data
group by price desc</string>
		<string>-- 11. Does people care about the price?
select price, count(rating_count_tot)
from data
group by price asc</string>
		<string>-- 11. Does people care about the price?
select price, count(rating_count_tot)
from data
group by rating_count_tot</string>
		<string>-- 11. Does people care about the price?
select price, sum(rating_count_tot)
from data
group by rating_count_tot</string>
		<string>-- 11. Does people care about the price?
select price, rating_count_tot
from data
group by rating_count_tot</string>
		<string>-- 11. Does people care about the price?
select price, rating_count_tot
from data
group by ratin_count_tot</string>
		<string>-- 11. Does people care about the price?
select price, rating_count_tot
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select rating_count_tot, price
from data
group by price</string>
		<string>-- 11. Does people care about the price?
select rating_count_tot, price
from data
group by price
order by rating_count_tot</string>
		<string>-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, rating_count_tot as A, user_rating as B
from data
where 500000&lt;rating_count_tot
order by  B desc</string>
		<string>-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, rating_count_tot as A, user_rating as B
from data
where A&gt;rating_count_tot
order by  B desc</string>
		<string>-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, rating_count_tot as A, user_rating as B
from data
where A&gt;500000
order by  B desc</string>
	</array>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>8.0.17</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
