## WEEK 29 SQL CHALLENGE

### QUESTION 1
[Click here to view original Question](https://buff.ly/419wqvB)

The table below contains information about tweets over a given period of time. Calculate the 3-day rolling average of tweets published by each user for each date that a tweet was posted. Output the user id, tweet date, and rolling averages rounded to 2 decimal places.

**Important Assumptions:**
- Rows in this table are consecutive and ordered by date.
- Each row represents a different day
- A day that does not correspond to a row in this table is not counted.
- The most recent day is the next row above the current row.

**Note:** Rolling average is a metric that helps us analyze data points by creating a series of averages based on different subsets of a dataset. It is also known as a moving average, running average, moving mean, or rolling mean.


**tweets Table:**
|Column Name	|Type          |
|:--------------|-------------:|
|tweet_id	    |integer       |
|user_id	    |integer       |
|tweet_date	    |timestamp     |




### QUESTION 2
[Click here to view original Question](https://buff.ly/3XLY13p)

You are given the tables below containing information on Robinhood trades and users. Write a query to list the top three cities that have the most completed trade orders in descending order.

Output the city and number of orders.


**trades Table:**
|Column Name	|Type                              |
|:--------------|---------------------------------:|
|order_id	    |integer                           |
|user_id	    |integer                           |
|price	        |decimal                           |
|quantity	    |integer                           |
|status	        |string('Completed' ,'Cancelled')  |
|timestamp	    |datetime                          |


**users Table:**
|Column Name	|Type        |
|:--------------|-----------:|
|user_id	    |integer     |
|city	        |string      |
|email	        |string      |
|signup_date	|datetime    |