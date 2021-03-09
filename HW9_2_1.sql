-- 1.Создайте двух пользователей которые имеют доступ к базе данных shop.

-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
CREATE USER 'shop_read'@'localhost';
GRANT SELECT, SHOW VIEW ON example.* TO 'shop_read'@'localhost';

-- второму пользователю shop — любые операции в пределах базы данных shop.
CREATE USER 'shop'@'localhost';
GRANT ALL ON example.* TO 'shop'@'localhost';