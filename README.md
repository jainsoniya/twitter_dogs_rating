# Most likeable breed
WeRateDogs is a Twitter account that rates people's dogs with a humorous comment about the dog. In this project, we will find out which breed is the most liked breed by the public.

About dataset
The dataset contains the following files:
1. twitter_archive_enhanced.csv - This file contains 2356 observations of original tweet
like - time, source of tweet, comments, urls, different dog stage and name of the dog.
2. image_prediction.tsv - Downloaded from cloud, this file contains 2075 observations of
tweet image predictions, i.e., what breed of dog (or other object, animal, etc.) is present in each tweet according to a neural network. This file contains the result of top 3 algorithms. For the purpose of my analysis, I have chosen the 1st prediction algorithm as it had the highest confidence ratio.
3. tweet-json.txt -  This file contain 2354 observations of favorites and retweet counts of each tweet_id.

The detail analysis can be found in [twitter_etl.ipynb](https://github.com/jainsoniya/twitter_dogs_rating/blob/master/twitter_etl.ipynb) and [twitter_table_etl.sql](https://github.com/jainsoniya/twitter_dogs_rating/blob/master/twitter_table_ETL.sql) 

The visualization made in Tableau can be found [here](https://public.tableau.com/profile/soniya4758#!/vizhome/TwitterWeRateDogs/Dashboard2)

