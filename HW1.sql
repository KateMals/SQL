USE lesson_1;

/*Выведите название, производителя и цену для товаров,
количество которых превышает 2 (SQL - файл, скриншот, либо сам
код)*/

SELECT ProductName, Manufacturer, Price FROM hw1 where ProductCount > 2;

/*Выведите весь ассортимент товаров марки “Samsung” */

SELECT * FROM hw1 where Manufacturer = "Samsung"

/* *** С помощью регулярных выражений найти:
 Товары, в которых есть упоминание "Iphone" */
 
SELECT * FROM hw1 where ProductName LIKE "%Iphone%";

/*  "Samsung"*/

SELECT * FROM hw1 where Manufacturer LIKE "%Samsung%";

/*Товары, в которых есть ЦИФРЫ*/

SELECT * FROM hw1 where ProductName not like "%[0-9]%";

/* Товары, в которых есть ЦИФРА "8" */

SELECT * FROM hw1 where ProductName like "%8%";
