-- Задача 3. Фильтрация и сортировка
-- Напишите запросы, которые выводят следующую информацию:
--
-- 1. заказы, доставленные в страны France, Germany, Spain (таблица orders, колонка ship_country)
--

SELECT * FROM orders									--> 830
WHERE ship_country IN ('France', 'Germany', 'Spain')    --> 222

--
-- 2. уникальные города и страны, куда отправлялись заказы,
--    отсортировать по странам и городам (таблица orders, колонки ship_country, ship_city)

SELECT ship_country, ship_city FROM orders				-- > 830
SELECT DISTINCT ship_country, ship_city FROM orders		-- > 70

--
-- 3. сколько дней в среднем уходит на доставку товара в Германию
--    (таблица orders, колонки order_date, shipped_date, ship_country)

SELECT DISTINCT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country='Germany'	--> 8.0084						

--
-- 4. минимальную и максимальную цену среди продуктов, не снятых с продажи
-- (таблица products, колонки unit_price, discontinued не равно 1)

SELECT MAX(unit_price) AS maximum, MIN(unit_price) AS minimum FROM products  --> 1 263.5 2.5
WHERE discontinued <> 1

--
-- 5. мин. и макс. цену среди продуктов, не снятых с продажи и которых имеется не меньше 20 
-- (таблица products, колонки unit_price, units_in_stock, discontinued не равно 1)
--

SELECT MAX(unit_price) AS maximum, MIN(unit_price) AS minimum 
FROM products
WHERE discontinued <> 1 AND units_in_stock >= 20	--> 1 81 2.5
