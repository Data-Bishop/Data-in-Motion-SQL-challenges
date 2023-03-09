## WEEK 30 SQL CHALLENGE

### QUESTION 1
[Click here to view original Question](https://buff.ly/3yg5r4t)

Given the reviews table, write a query to get the average stars for each product every month.

The output should include the month in numerical value, product id, and average star rating rounded to two decimal places. Sort the output based on month followed by the product id.

**reviews Table:**
|Column Name	|Type     |
|:--------------|--------:|
|review_id	|integer      |
|user_id	|integer      |
|submit_date|datetime     |
|product_id	|integer      |
|stars	    |integer (1-5)|


**reviews Example Input:**
|review_id	|user_id	|submit_date	|product_id	|stars |
|:----------|:---------:|:-------------:|:---------:|-----:|
|6171	|123	|06/08/2022 00:00:00	|50001	|4 |
|7802	|265	|06/10/2022 00:00:00	|69852	|4 |
|5293	|362	|06/18/2022 00:00:00	|50001	|3 |
|6352	|192	|07/26/2022 00:00:00	|69852	|3 |
|4517	|981	|07/05/2022 00:00:00	|69852	|2 |


**Example Output:**
|mth	|product	|avg_stars |
|:------|:---------:|---------:|
|6	|50001	|3.50 |
|6	|69852	|4.00 |
|7	|69852	|2.50 |

**Explanation**
In June (month #6), product 50001 had two ratings - 4 and 3, resulting in an average star rating of 3.5.


### QUESTION 2
[Click here to view original Question](https://buff.ly/3Zq5Ih0)

Assume you are given the table containing measurement values obtained from a Google sensor over several days. Measurements are taken several times within a given day.

Write a query to obtain the sum of the odd-numbered and even-numbered measurements on a particular day, in two different columns. Refer to the Example Output below for the output format.

**Definition:**
- 1st, 3rd, and 5th measurements taken within a day are considered      odd-numbered measurements and the 2nd, 4th, and 6th measurements are even-numbered measurements.

**measurements Table:**
|Column Name	  |Type       |
|:----------------|----------:|
|measurement_id	  |integer    |
|measurement_value|decimal    |
|measurement_time |datetime   |

**measurements Example Input:**
|measurement_id	|measurement_value	|measurement_time    |
|:--------------|:-----------------:|-------------------:|
|131233	|1109.51	|07/10/2022 09:00:00|
|135211	|1662.74	|07/10/2022 11:00:00|
|523542	|1246.24	|07/10/2022 13:15:00|
|143562	|1124.50	|07/11/2022 15:00:00|
|346462	|1234.14	|07/11/2022 16:45:00|

**Example Output:**
|measurement_day	|odd_sum	|even_sum  |
|:------------------|:---------:|---------:|
|07/10/2022 00:00:00	|2355.75   |1662.74|
|07/11/2022 00:00:00	|1124.50   |1234.14|

**Explanation**
On 07/11/2022, there are only two measurements. In chronological order, the first measurement (odd-numbered) is 1124.50, and the second measurement(even-numbered) is 1234.14.