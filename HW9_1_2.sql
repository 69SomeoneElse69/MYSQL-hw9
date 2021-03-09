-- 2.Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и соответствующее название каталога name
-- из таблицы catalogs.

CREATE OR REPLACE VIEW products_catalogs AS
SELECT
products.name AS product,
catalogs.name AS catalog
FROM
products
JOIN
catalogs
ON
products.catalog_id = catalogs.id;