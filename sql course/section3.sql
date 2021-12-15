SELECT COUNT(*) FROM invoices;
SELECT COUNT(InvoiceId) FROM invoices;
SELECT COUNT(BillingState) FROM invoices;
SELECT COUNT(DISTINCT Composer)  FROM tracks;
SELECT COUNT DISTINCT * FROM invoices WHERE
/* invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız*/ 
SELECT name,MIN(Milliseconds) FROM tracks;
SELECT name as song_name, MAX(Milliseconds) as duration FROM tracks;
SELECT name as song_name, MAX(Milliseconds)/1000 as duration FROM tracks;
SELECT MIN(Grade) as düşük_not, MAX(Grade) as yüksek_not  FROM students;
SELECT SUM(Grade) AS toplam_not FROM students;
SELECT AVG(Grade) AS toplam_not FROM students;
SELECT SUM(Total) AS toplam_gelir FROM invoices;
SELECT AVG()
/* invoices  tablosunda 2009 ile 2013 tarihileri arasındaki faturaların toplam değerini listeyiniz */
SELECT SUM(Total) AS toplam_gelirr FROM invoices WHERE InvoiceDate BETWEEN '2009-__-__' AND '2013-__-__';
SELECT ROUND(AVG(Total),2) AS toplam_ger FROM invoices;
SELECT ROUND(AVG(Milliseconds)) FROM tracks;
SELECT name, Milliseconds FROM tracks WHERE Milliseconds > (SELECT AVG(Milliseconds) FROM tracks);
/* group by where in altında order by ın altında olur.
 genellikle aggregate function larla kullanılır*/
 SELECT Composer, COUNT(name) AS song_count FROM tracks 
 WHERE Composer IS NOT NULL GROUP BY Composer;
 SELECT country, COUNT(FirstName) as FirstName
 FROM customers
 GROUP BY country
 ORDER BY FirstName DESC;
/*soru*/
SELECT country, city, COUNT(FirstName)
FROM customers
GROUP BY country, city;
/* soru*/
SELECT BillingCountry, ROUND(AVG(Total),2) as ort_fatura
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31 23:59:59'
GROUP BY BillingCountry


