WITH daily_rank AS (
SELECT date(measurement_time) AS measurement_day,
        measurement_id,
        measurement_value,
        RANK() OVER(PARTITION BY date(measurement_time) ORDER BY measurement_time) AS measurement_rank
FROM measurements
)

SELECT measurement_day,
        SUM(CASE WHEN MOD(measurement_rank, 2) <> 0 THEN measurement_value
                 ELSE 0 END) AS odd_sum,
        SUM(CASE WHEN MOD(measurement_rank, 2) = 0 THEN measurement_value
                 ELSE 0 END) AS even_sum
FROM daily_rank
GROUP BY measurement_day;