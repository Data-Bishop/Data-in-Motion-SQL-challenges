## WEEK 27 SQL CHALLENGE
### QUESTION 1

Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019. Return the result table in any order.

**Table Schema:**

*Table: Users*

| Column Name    | Type    |
|:---------------|--------:|
| user_id        | int     |
| join_date      | date    |
| favorite_brand | varchar |

- *user_id* is the primary key of this table.
- This table has the info of the users of an online shopping website where users can sell and buy items.
 

*Table: Orders*

| Column Name   | Type    |
|:--------------|--------:|
| order_id      | int     |
| order_date    | date    |
| item_id       | int     |
| buyer_id      | int     |
| seller_id     | int     |

- *order_id* is the primary key of this table.
- *item_id* is a foreign key to the Items table.
- *buyer_id* and *seller_id* are foreign keys to the Users table.
 

*Table: Items*

| Column Name   | Type    |
|:--------------|--------:|
| item_id       | int     |
| item_brand    | varchar |

- *item_id* is the primary key of this table.




### QUESTION 2

Write an SQL query to report the Capital gain/loss for each stock.
The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.

**Table Schema**

*Table: Stocks*

| Column Name   | Type    |
|:--------------|--------:|
| stock_name    | varchar |
| operation     | enum    |
| operation_day | int     |
| price         | int     |

- (*stock_name*, *operation_day*) is the primary key for this table.
- The *operation* column is an ENUM of type ('Sell', 'Buy').
- Each row of this table indicates that the stock which has stock_name had an operation on the day *operation_day* with the *price*.
- It is guaranteed that each 'Sell' operation for a stock has a corresponding 'Buy' operation in a previous day. It is also guaranteed that each 'Buy' operation for a stock has a corresponding 'Sell' operation in an upcoming day.
 