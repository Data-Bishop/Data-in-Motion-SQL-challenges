##  WEEK 28 SQL CHALLENGE

### QUESTION 1
[Click here to view original Question](https://buff.ly/3K4rCBU)

Assume you are given the tables below containing information on Snapchat users, their ages, and their time spent sending and opening snaps. Write a query to obtain a breakdown of the time spent sending vs. opening snaps (as a percentage of total time spent on these activities) for each age group.

Output the age bucket and percentage of sending and opening snaps. Round the percentage to 2 decimal places.

**Notes:**
- You should calculate these percentages:
- time sending / (time sending + time opening)
- time opening / (time sending + time opening)
- To avoid integer division in percentages, multiply by 100.0 and not 100.


**activities Table:**
|Column Name	|Type                             |
|:--------------|--------------------------------:|
|activity_id	|integer                          |
|user_id	    |integer                          |
|activity_type	|string ('send', 'open', 'chat')  |
|time_spent	    |float                            |
|activity_date	|datetime                         |



**age_breakdown Table:**
|Column Name   |Type                               |
|:-------------|----------------------------------:|
|user_id	   |integer                            |
|age_bucket	   |string ('21-25', '26-30', '31-25') |






### QUESTION 2
[Click here to view original Question](https://buff.ly/3lq7BLz)

Assume you are given the tables below about Facebook pages and page likes. Write a query to return the page IDs of all the Facebook pages that don't have any likes. The output should be in ascending order.


**pages Table:**
|Column Name   |Type     |
|:-------------|--------:|
|page_id       |integer  |
|page_name	   |varchar  |


**page_likes Table:**
|Column Name   |Type       |
|:-------------|----------:|
|user_id	   |integer    |
|page_id	   |integer    |
|liked_date	   |datetime   |