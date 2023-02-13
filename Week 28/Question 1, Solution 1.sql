SELECT age_bucket, ROUND(SUM(time_sending)/(SUM(time_sending)+SUM(time_opening)) * 100.0, 2) AS send_perc,
                    ROUND(SUM(time_opening)/(SUM(time_sending)+SUM(time_opening)) * 100.0, 2) AS open_perc
FROM age_breakdown a 
JOIN (SELECT user_id, SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) AS time_opening,
        SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) AS time_sending
        FROM activities
        GROUP BY user_id) AS b
ON b.user_id = a.user_id
GROUP BY age_bucket;