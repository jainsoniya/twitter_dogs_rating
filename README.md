# Most likeable breed
WeRateDogs is a Twitter account that rates people's dogs with a humorous comment about the dog. In this project, we will find out which breed is the most liked breed by the public.

About dataset
The dataset contains the following files:
1. twitter_archive_enhanced.csv - This file contains 2356 observations of original tweet
like - time, source of tweet, comments, urls, different dog stage and name of the dog.
2. image_prediction.tsv - Downloaded from cloud, this file contains 2075 observations of
tweet image predictions, i.e., what breed of dog (or other object, animal, etc.) is present in each tweet according to a neural network. This file contains the result of top 3 algorithms. For the purpose of my analysis, I have chosen the 1st prediction algorithm as it had the highest confidence ratio.
3. tweet-json.txt - Extracted from Twitter API, this file contain 2354 observations of favorites and retweet counts of each tweet_id.

The detail analysis can be found in [wrangle_act.ipynb](https://github.com/jainsoniya/twitter_dogs_rating/blob/master/wrangle_act.ipynb)
and insights report can be found in [act_report.pdf](https://github.com/jainsoniya/twitter_dogs_rating/blob/master/%20act_report.pdf)

