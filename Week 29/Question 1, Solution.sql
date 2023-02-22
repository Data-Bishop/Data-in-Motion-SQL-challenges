SELECT user_id, tweet_date, 
    ROUND(AVG(total_day_tweets) OVER 
      (PARTITION BY user_id
        ORDER BY user_id, tweet_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_avg_3day
FROM (
  SELECT user_id, tweet_date, COUNT(DISTINCT tweet_id) AS total_day_tweets
  FROM tweets
  GROUP BY user_id, tweet_date) AS tweets_number;
