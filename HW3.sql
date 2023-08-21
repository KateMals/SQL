USE lesson3;

-- Часть 1 Используемы таблицы: salespeople, customers, orders

# 1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname,
# snum, comm. (к первой или второй таблице, используя SELECT)


SELECT city, sname, snum, comm
FROM salespeople;

# 2. Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем
# каждого заказчика в городе San Jose. (“заказчики”)

SELECT rating, cname
  FROM customers
WHERE city = 'San Jose';

# 3. Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без
# каких бы то ни было повторений. (уникальные значения в “snum“ “Продавцы”)

SELECT DISTINCT snum
FROM salespeople
ORDER BY snum;


# 4. Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G.
# Используется оператор "LIKE": (“заказчики”) https://dev.mysql.com/doc/refman/8.0/en/string-comparisonfunctions.html

SELECT *
FROM customers
WHERE cname LIKE '%G%';

# 5. Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000.
# (“Заказы”, “amt” - сумма)

SELECT *
FROM orders
WHERE amt > 1000.0
ORDER BY amt;

# 6. Напишите запрос который выбрал бы наименьшую сумму заказа.
# (Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)

SELECT Min(amt)
FROM orders;

# 7. Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых
# рейтинг больше 100 и они находятся не в Риме.

SELECT * FROM customers
WHERE rating > 100 AND city != 'Rome';

# Часть 2 Используемы таблицы: staff
# 1. Отсортируйте поле “зарплата” в порядке убывания и возрастания 

SELECT * 
FROM staff
ORDER BY salary; -- В порядке возрастания

SELECT * 
FROM staff
ORDER BY salary DESC; -- В порядке убывания

# 2. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)

SELECT salary
FROM staff
ORDER BY salary DESC LIMIT 5;


# 3.Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000

SELECT post  AS Специальность,
  COUNT(*)
FROM staff
WHERE salary > 100000
GROUP BY post;

