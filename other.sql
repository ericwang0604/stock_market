
SELECT * FROM transaction WHERE user_id = '$user_id'
ORDER BY t_time DESC;


SELECT stock_symbol, SUM(shares) FROM transaction
WHERE user_id = '$user_id'
GROUP BY stock_symbol
HAVING SUM(shares) > 0;


SELECT *
FROM transaction
WHERE user_id = '$user_id'
ORDER BY t_time DESC
LIMIT 1;


INSERT INTO transaction (user_id, stock_symbol, shares, t_price, balance)
VALUES ('$user_id', '$stock_symbol', '$buy_ammount', '$unit_price', );