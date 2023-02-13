SELECT DISTINCT Stocks.stock_name, (S.total_sold - B.total_bought) AS capital_gain_loss
FROM Stocks
JOIN  
    (SELECT stock_name, SUM(price) AS total_bought
    FROM Stocks
    WHERE operation = 'Buy'
    GROUP BY stock_name) AS B
    USING(stock_name)
JOIN 
    (SELECT stock_name, SUM(price) AS total_sold
    FROM Stocks
    WHERE operation = 'Sell'
    GROUP BY stock_name) AS S
    USING(stock_name)