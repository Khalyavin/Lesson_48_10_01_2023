-- Задача 2. Простые выборки
-- Напишите запросы, которые выводят следующую информацию:
--
-- 1. "имя контакта" и "город" (`contact_name`, `country`) из таблицы `customers` (только эти две колонки)
--

SELECT contact_name, city FROM customers

--
-- 2. идентификатор заказа и разницу между датами формирования
--    (order_date) заказа и его отгрузкой (shipped_date) из таблицы orders

SELECT order_id, shipped_date, order_date, shipped_date - order_date as delay FROM orders

--
-- 3. все города без повторов, в которых зарегестрированы заказчики (customers)
--

SELECT DISTINCT city FROM customers

--
-- 4. количество заказов (таблица orders)
--

SELECT COUNT(order_id) FROM orders  --> 830
SELECT COUNT(DISTINCT order_id) FROM orders  --> 830

--
-- 5. количество стран, в которые откружался товар (таблица orders, колонка ship_country)
--

SELECT COUNT(ship_country) FROM orders  --> 830
SELECT COUNT(DISTINCT ship_country) FROM orders  --> 21
