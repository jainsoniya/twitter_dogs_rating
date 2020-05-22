-- create table

CREATE TABLE tweet
(
tweet_id BIGINT NOT NULL PRIMARY KEY,
timestamp TIMESTAMP,
source VARCHAR,
text VARCHAR,
expanded_urls VARCHAR,
rating_numerator INTEGER,
rating_denominator INTEGER,
name VARCHAR,
doggo VARCHAR,
floofer VARCHAR,
pupper VARCHAR,
puppo VARCHAR
)

--import data from csv file

COPY  tweet (
			 tweet_id,
			 timestamp, 
			 source, 
			 text, 
			 expanded_urls, 
			 rating_numerator, 
			 rating_denominator, 
			 name, 
			 doggo, 
			 floofer, 
			 pupper, 
			 puppo
			 )
FROM '.../twitter/4. twitter-archive-enhanced.csv'
DELIMITER ',' CSV HEADER;

--check if any column has null values

SELECT  *
FROM tweet
WHERE NOT (tweet IS NOT NULL);

--check duplicate rows

SELECT tweet_id, count(*)
FROM tweet
GROUP BY tweet_id
HAVING COUNT(*) > 1;

--Create new table as view with cleaned and transformed columns

CREATE VIEW tweets_view as(

--transpose dog stages

with tb1 as 
(
SELECT tweet_id,
CASE 
WHEN puppo = 'puppo'THEN 'puppo'
WHEN doggo = 'doggo' THEN 'doggo'
WHEN floofer = 'floofer' THEN 'floofer'
WHEN pupper = 'pupper' THEN 'pupper' 
END as dog_stages
FROM tweet
),

-- regex for source and text

tb2 as 
(
SELECT tweet_id, regexp_replace(source, '(?:<a.*\">|/a>)', '') as regs,
	regexp_replace(text, 'https:\/\/t.co\/.{10}','') as reg_text
FROM tweet
)

-- join tables

SELECT tweet.*, replace(regs, '</a>','')as origin, reg_text, dog_stages
FROM tweet
JOIN tb2
ON tweet.tweet_id = tb2.tweet_id
JOIN tb1
on tweet.tweet_id = tb1.tweet_id
)
;
