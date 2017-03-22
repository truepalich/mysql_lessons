/*
заполнить таблицы авторов  и связи с книгами. Надо чтоб были авторы без книжек и стили без книг

вывести
 - книги у которых цена выше средней
 - сделать один большой и бесполезный джоин всех таблиц
 - вывести авторов без книг
 - вывести список стилей для каждого автора (будут повторения авторов - кто знает как убрать - круто)
 - самый дорогой автор (взять одного где цена по его книге макс)
 - самый дешевый
 - средняя цена книг в каждом стиле
*/


/*книги у которых цена выше средней*/
SELECT b.title FROM book AS b WHERE b.price > (SELECT AVG(price) FROM book);

/*сделать один большой и бесполезный джоин всех таблиц*/
SELECT b.title FROM book AS b INNER JOIN author AS a INNER JOIN style AS s

/*вывести авторов без книг*/
SELECT * FROM author AS a LEFT JOIN book_author AS b_a ON a.id = b_a.author_id WHERE b_a.author_id IS NULL

/*вывести список стилей для каждого автора (будут повторения авторов - кто знает как убрать - круто)*/
SELECT DISTINCT s.title FROM style AS s, book_author AS b_a WHERE s.id = b_a.author_id

/*самый дорогой автор (взять одного где цена по его книге макс)*/
SELECT a.name FROM author AS a INNER JOIN book_author AS b_a ON a.id = b_a.author_id INNER JOIN book AS b ON b_a.book_id = b.id WHERE b_a.author_id = a.id ORDER BY b.price DESC LIMIT 1

/*самый дешевый автор (взять одного где цена по его книге мин)*/
SELECT a.name FROM author AS a INNER JOIN book_author AS b_a ON a.id = b_a.author_id INNER JOIN book AS b ON b_a.book_id = b.id WHERE b_a.author_id = a.id ORDER BY b.price LIMIT 1

/*средняя цена книг в каждом стиле*/
SELECT s.title, AVG(b.price) AS avg_price FROM book AS b INNER JOIN style AS s ON b.style_id = s.id GROUP BY style_id