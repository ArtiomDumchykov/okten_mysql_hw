
use user1488;


-- найти все машины старше 2000 г
SELECT * FROM cars where year > 2000;


-- найти все машины младше 2015 г
SELECT * FROM cars where year < 2015;


-- найти все машины 2008, 2009, 2010 годов
SELECT * FROM cars where year IN (2008, 2009, 2010);

-- найти все машины не с этих годов 2008, 2009, 2010 годов
SELECT * FROM cars where year NOT IN (2008, 2009, 2010);

-- найти все машины год которых совпадает с ценой
SELECT * FROM cars where year = price;

-- найти все машины bmw старше 2014 года
SELECT * FROM cars WHERE model="bmw" AND year > 2014;

-- найти все машины audi младше 2014 года
SELECT * FROM cars WHERE model="audi" AND year < 2014;

-- найти первые 5 машин
SELECT * FROM cars limit 5;

SELECT * FROM cars limit 5 offset 0;

-- найти последние 5 машин
SELECT * FROM cars ORDER BY id DESC limit 5;

-- найти среднее арифметическое цен машин модели KIA
SELECT avg(price) as avg_price FROM cars WHERE model="kia";

-- найти среднее арифметическое цен каждой машины
SELECT avg(price) as avg_price, model as brand FROM cars GROUP BY model;

-- посчитать количество каждой марки машин
SELECT COUNT(*) as count, model as brand FROM cars GROUP BY model;
SELECT COUNT(*) as count, model as brand FROM cars GROUP BY model ORDER BY count;
SELECT COUNT(*) as count, model as brand FROM cars GROUP BY model ORDER BY count DESC;

-- найти марку машины количество которых больше всего
SELECT COUNT(*) as count, model as brand FROM cars GROUP BY model ORDER BY count DESC LIMIT 1;

-- найти все машины в модели которых вторая и предпоследняя буква "а"
SELECT * FROM cars WHERE model LIKE '_a%a_';

-- найти все машины модели которых больше 8 символов
SELECT * FROM cars WHERE LENGTH(model) > 8;

-- ***найти машины цена которых больше чем цена среднего арифметического всех машин
SELECT * FROM cars WHERE price > (SELECT AVG(price) AS avg_price FROM cars);

 


