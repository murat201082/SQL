--QUERY1--
SELECT a.AlbumId, t.TrackId, t.name
FROM albums a
INNER JOIN tracks t
on a.AlbumId = t.AlbumId ORDER BY TrackId DESC;
--QUERY2--
SELECT  t.name, a.Title
FROM albums a
INNER JOIN tracks t
on a.AlbumId = t.AlbumId;
--query3--
SELECT a.AlbumId, t.name, a.Title, min(t.Milliseconds) as minimum
FROM albums a
INNER JOIN tracks t
on a.AlbumId = t.AlbumId GROUP BY Title  ORDER BY Milliseconds DESC;
--QUERY4--
SELECT a.AlbumId, t.name, a.Title, sum(t.Milliseconds) as total
FROM albums a
INNER JOIN tracks t
on a.AlbumId = t.AlbumId GROUP BY Title  ORDER BY Milliseconds DESC;
--query5--
SELECT a.Title, Milliseconds
FROM albums a  
INNER JOIN tracks t 
on a.AlbumId = t.AlbumId  WHERE (t.Milliseconds)/60000 > 70 GROUP BY Title  ;


