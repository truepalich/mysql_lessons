/* 24 */
INSERT INTO country (id, name, short_code, president) VALUES (1, 'Portugal', 'PT', 'Laura Barnes');
INSERT INTO country (id, name, short_code, president) VALUES (2, 'Israel', 'IL', 'Linda Crawford');
INSERT INTO country (id, name, short_code, president) VALUES (3, 'Russia', 'RU', 'Diana Smith');
INSERT INTO country (id, name, short_code, president) VALUES (4, 'Indonesia', 'ID', 'Judith Duncan');
INSERT INTO country (id, name, short_code, president) VALUES (5, 'Uruguay', 'UY', 'Kelly Howell');
INSERT INTO country (id, name, short_code, president) VALUES (6, 'China', 'CN', 'Victor Robertson');
INSERT INTO country (id, name, short_code, president) VALUES (7, 'United States', 'US', 'Joshua Martin');
INSERT INTO country (id, name, short_code, president) VALUES (8, 'Mexico', 'MX', 'Stephanie Dixon');
INSERT INTO country (id, name, short_code, president) VALUES (9, 'Indonesia', 'ID', 'Robert Owens');
INSERT INTO country (id, name, short_code, president) VALUES (10, 'Indonesia', 'ID', 'Christopher Sims');

/* 25 */
SELECT name, president FROM country

/* 26 */
SELECT name FROM country WHERE id > 7 AND continent = 'Asia';
SELECT name FROM country WHERE population > 20000000 AND id < 7 AND continent = 'Asia';

/* 27 */
SELECT name FROM country WHERE id IN('5', '7', '2');
SELECT name FROM country WHERE name LIKE '%n%';

/* 28 */
SELECT id, name, short_code AS code, area, population, continent, president FROM country;
SELECT DISTINCT continent FROM country;

/* 29 */
SELECT * FROM country GROUP BY continent;

/* 30 */
SELECT MAX(population) as max_population FROM country;
SELECT MIN(population) as min_population FROM country;
SELECT AVG(population) as avg_population FROM country WHERE continent = 'Europe';
SELECT SUM(population) as sum_population FROM country;

/* 31 */
SELECT continent FROM country HAVING AVG(population) > 40000000;

/* 32 */
SELECT * FROM country ORDER BY name;
SELECT * FROM country ORDER BY continent, name;

/* 33 */
SELECT * FROM country LIMIT 6, 1;

/* 35 */
UPDATE country SET population='49000000' WHERE id = 8;
UPDATE country SET population='350550' WHERE id = 2;
UPDATE country SET population='340430', president ='True Palych' WHERE id = 3;

/* 36 */
DELETE FROM country WHERE id = 9;

/* 38 */
ALTER TABLE country ADD continent_id TINYINT (2) DEFAULT NULL;

/* 39 */
ALTER TABLE country ADD INDEX(continent_id);

/* 40 */
/* Это сделал с помощью phpMyadmin(вручную) без использования запросов */

/* 41 */
/* Таблицу language создал с помощью phpMyadmin(вручную) без использования запросов */
/* Затем создаем связи*/
ALTER TABLE `country_language` ADD FOREIGN KEY (`country_id`) REFERENCES `practice_db`.`country`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `country_language` ADD FOREIGN KEY (`language_id`) REFERENCES `practice_db`.`language`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/* 42 */
SELECT country.name, continent.name FROM country, continent WHERE country.continent_id = continent.id

/* 43 */
SELECT country.name, continent.name FROM country JOIN continent ON country.continent_id = continent.id

/* 44 */
INSERT INTO language (name) VALUES ('French'), ('Deutch');
SELECT l.name FROM language l LEFT JOIN country_language c_l ON l.id = c_l.language_id WHERE c_l.language_id IS NULL

/* 46 */
ALTER TABLE `country` ADD `premier` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `president`;
UPDATE `country` SET `premier` = 'Alex' WHERE `country`.`id` = 3;
SELECT president FROM country UNION ALL SELECT premier FROM country;