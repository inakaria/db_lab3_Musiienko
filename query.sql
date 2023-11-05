SELECT first_name, last_name, CONCAT(brand, ' ', model), color
FROM purchaser
NATURAL JOIN car;

SELECT CONCAT(LEFT(first_name, 1), '. ', last_name), card_type
FROM purchaser
NATURAL JOIN credit_card
WHERE card_type <> 'mastercard';

SELECT country, brand, model, year_of_manufacture
FROM car
NATURAL JOIN purchaser
ORDER BY year_of_manufacture DESC
LIMIT 3;