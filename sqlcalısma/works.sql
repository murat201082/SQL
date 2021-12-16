SELECT name, Milliseconds/60000 AS dakika FROM tracks
WHERE Milliseconds > (SELECT AVG(Milliseconds) FROM tracks) ORDER by dakika DESC limit 10;
SELECT AVG(Milliseconds) as saniye FROM tracks;