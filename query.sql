-- Основна інформація про замовлення: покупець, марка автомобіля, ціна
SELECT CONCAT(LEFT(first_name, 1), '. ', last_name) AS customer, CONCAT(brand, ' ', model) AS model, price
FROM purchaser
JOIN car using (purchaser_id)
GROUP BY customer, brand, model, price;

-- Частка замовлень через кожен вид платежу, окрім mastercard
SELECT card_type, COUNT(*) as count
FROM credit_card
GROUP BY card_type
HAVING card_type <> 'mastercard';

-- Країна покупця, марка та рік випуску за зменшенням ціни автомобіля
SELECT country, brand, year_of_manufacture, price
FROM car
JOIN purchaser using (purchaser_id)
ORDER BY price DESC;