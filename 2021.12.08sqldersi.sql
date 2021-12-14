/*bir tane seçme*/
SELECT name from tracks;
/* iki tane seçme*/
SELECT Composer, name FROM tracks;
-- tüm hepsini sorgulama--
SELECT * FROM tracks;
--DISTINCT--
SELECT  Composer FROM tracks;
--distict hali--
SELECT DISTINCT Composer FROM tracks;
SELECT AlbumId, MediaTypeId from tracks;
SELECT DISTINCT AlbumId, MediaTypeId from tracks;
--WHERE and LIMIT--
SELECT name FROM tracks 
WHERE composer = 'Jimi Hendrix';
SELECT * FROM invoices
WHERE total > 10;