USE lesson2;

# 1. Создание в существующей базе данных по уроку № 2 таблицы по ДЗ:
CREATE TABLE sales (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_date DATE,
  count_product INT UNSIGNED
);

SELECT * FROM sales;

# Заполняем таблицу данными:

INSERT INTO sales (order_date, count_product)
VALUES 
  ('2022-01-01', 156),
  ('2022-01-02', 180),
  ('2022-01-03', 21),
  ('2022-1-04', 124),
  ('2022-01-05', 341);

SELECT * FROM sales;

# 2. Указываем тип заказа в зависимости от кол-ва:

SELECT
	id AS "id заказа",
    IF(count_product < 100, "Маленький заказ", 
		IF(count_product BETWEEN 100 AND 300, "Средний заказ","Большой заказ"))
	AS "Тип заказа"
FROM sales;

# 3. Создаем таблицу orders

CREATE TABLE orders (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  employee_id VARCHAR(3) NOT NULL,
  amount DECIMAL(5,2) NOT NULL,
  order_status TEXT NOT NULL
);

SELECT * FROM orders;

# Заполняем таблицу данными:

INSERT INTO orders (employee_id, amount, order_status)
VALUES 
  ('e03', 15.00, 'OPEN'),
  ('e01', 25.50, 'OPEN'),
  ('e05', 100.70, 'CLOSED'),
  ('e02', 22.18, 'OPEN'),
  ('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

# Выводим всю таблицу с отдельным столбцом где виден полный статус заказа:

SELECT
	id AS "id заказа",
    employee_id,
    amount,
    IF(order_status = 'OPEN', 'Order is in open state', 
		IF(order_status = 'CLOSED', 'Order is closed','Order is cancelled'))
	AS "full_order_status"
FROM orders;

