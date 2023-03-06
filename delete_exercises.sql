USE codeup_test_db;

DELETE FROM albums
WHERE release_date > 1991;

SELECT release_date FROM albums;

DELETE FROM albums
WHERE genre LIKE '%disco%';

SELECT genre FROM albums;


DELETE FROM albums
WHERE artist LIKE '%Celine Dion%';

SELECT * FROM albums;