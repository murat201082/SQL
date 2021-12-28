CREATE TABLE calisanlar(id CHAR(4),
isim VARCHAR(50),
maas NUMBERS(5),
CONSTRAINT id_pk, 
PRIMARY key(id)
);
INSERT INTO calisanlar VALUES('1001', 'Ahmet Aslan', 7000
);
INSERT INTO calisanlar VALUES('1002', 'Mehmet Yılmaz', 12000
);
INSERT INTO calisanlar VALUES('1003', 'Meryem', 7215
);
INSERT INTO calisanlar VALUES('1004', 'Veli Han', 5000
);
CREATE TABLE aileler (id CHAR(4),
cocuk_sayısı VARCHAR(50),
ek_gelir NUMBER(5),
CONSTRAINT id_fk,
FOREIGN KEY(id) REFERENCES calisanlar(id)
);
INSERT INTO aileler VALUES('1001',4,2000
);
INSERT INTO aileler VALUES('1002',2,1500
);
INSERT INTO aileler VALUES('1003',1,2200
);
INSERT INTO aileler VALUES('1004',3,2400);

UPDATE calisanlar SET maas = maas*1.2 WHERE isim = 'Veli Han';
UPDATE calisanlar set maas = maas*1.2 WHERE maas < (SELECT AVG(maas) FROM calisanlar);

SELECT c.isim,a.cocuk_sayısı
FROM calisanlar c
INNER JOIN aileler a
ON c.id = a.id;

SELECT c.id, c.isim,(c.maas + a.ek_gelir) AS TOPLAM_GELİR
FROM calisanlar c
INNER JOIN aileler a
ON c.id = a.id;

UPDATE calisanlar SET maas = maas*1.1 WHERE (SELECT (maas + ek_gelir)/(cocuk_sayısı + 2) FROM aileler 
WHERE calisanlar.id = aileler.id) <2000; 

UPDATE calisanlar SET maas =  8400 WHERE id = 1001;
UPDATE calisanlar SET maas =  12000 WHERE id = 1002;
UPDATE calisanlar SET maas =  8658 WHERE id = 1003;
UPDATE calisanlar SET maas =  7200 WHERE id = 1004;



