## WEEK 29 SQL CHALLENGE

### QUESTION 1

The table below contains information about tweets over a given period of time. Calculate the 3-day rolling average of tweets published by each user for each date that a tweet was posted. Output the user id, tweet date, and rolling averages rounded to 2 decimal places.

**Important Assumptions:**
- Rows in this table are consecutive and ordered by date.
- Each row represents a different day
- A day that does not correspond to a row in this table is not counted.
- The most recent day is the next row above the current row.

**Note:** Rolling average is a metric that helps us analyze data points by creating a series of averages based on different subsets of a dataset. It is also known as a moving average, running average, moving mean, or rolling mean.


tweets Table:
Column Name	Type
tweet_id	integer
user_id	integer
tweet_date	timestamp