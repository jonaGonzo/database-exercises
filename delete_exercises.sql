USE codeup_test_db;

DELETE FROM albums
WHERE release_date > 1991;


DELETE FROM albums
WHERE genre = 'disco';

SELECT genre FROM albums;


DELETE FROM albums
WHERE artist = 'Pink Floyd';
