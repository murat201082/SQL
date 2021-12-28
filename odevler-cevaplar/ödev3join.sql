CREATE TABLE bölümler(
bölüm_id NUMBER,
bölüm_isim VARCHAR(40),
konum TEXT,
PRIMARY KEY(bölüm_id)
);

CREATE TABLE Personel(
personel_id NUMBER,
bölüm_isim VARCHAR(50),
meslek TEXT,
müdür_id NUMBER,
ise_baslama DATE,
maas REAL,
bölüm_id NUMBER);

INSERT INTO bölümler VALUES(10,'MUHASEBE','IST'
);
INSERT INTO bölümler VALUES(20,'MUDURLUK','ANKARA'
);
INSERT INTO bölümler VALUES(30,'SATIS','IZMIR'
);
INSERT INTO bölümler VALUES(40,'ISLETME','BURSA'
);
INSERT INTO bölümler VALUES(50,'DEPO','YOZGAT'
);

INSERT INTO Personel VALUES(7369,'AHMET','KATIP',7902,'17.12.1980',800.0,20
);
INSERT INTO Personel VALUES(7499,'BAHATTIN','SATIS',7698,'20.02.1981',1600.0,30
);
INSERT INTO Personel VALUES(7521,'NEŞE','SATIS',7698,'22.02.1981',1250.0,30
);
INSERT INTO Personel VALUES(7566,'MUZAFFER','MUDUR',7839,'02.04.1981',2975.0,20
);
INSERT INTO Personel VALUES(7654,'MUHAMMET','SATIS',7698,'28.09.1981',1250.0,30
);
INSERT INTO Personel VALUES(7698,'EMİNE','MUDUR',7839,'01.05.1981',2850.0,30
);
INSERT INTO Personel VALUES(7782,'HARUN','MUDUR',7839,'09.06.1981',2450.0,10
);
INSERT INTO Personel VALUES(7788,'MESUT','ANALIST',7566,'13.07.1987',3000.0,20
);
INSERT INTO Personel VALUES(7839,'SEHER','BASKAN',NULL,'17.11.1981',5000.0,10
);
INSERT INTO Personel VALUES(7844,'DUYGU','SATIS',7698,'08.09.1981',1500.0,30
);
INSERT INTO Personel VALUES(7876,'ALİ','KATIP',7788,'13.07.1987',1100.0,20
);
INSERT INTO Personel VALUES(7900,'MERVE','KATIP',7698,'03.12.1981',950.0,30
);
INSERT INTO Personel VALUES(7902,'NAZLI','ANALIST',7566,'03.12.1981',3000.0,20
);
INSERT INTO Personel VALUES(7934,'EBRU','KATIP',7782,'23.01.1982',1300.0,10
);

SELECT b.bölüm_isim, p.personel_isim 
FROM Personel p
INNER JOIN bölümler b
ON p.bölüm_id = b.bölüm_id 
WHERE bölüm_isim IN ('MUHASEBE','SATIS')
ORDER BY b.bölüm_isim,p.personel_isim;

ALTER table Personel RENAME bölüm_isim TO personel_isim;

 SELECT p.personel_isim, b.bölüm_isim 
  FROM bölümler b 
  JOIN Personel p 
  ON b.bölüm_id = p.bölüm_id
  WHERE b.bölüm_id IN(10,30)
  ORDER BY b.bölüm_isim, p.personel_isim;

SELECT p.personel_isim, b.bölüm_isim,p.ise_baslama  FROM  bölümler b
LEFT JOIN Personel p
ON p.bölüm_id = b.bölüm_id
WHERE b.bölüm_isim IN ('ISLETME','SATIS','DEPO')
ORDER BY b.bölüm_isim ;

SELECT * FROM bölümler b 
LEFT JOIN Personel p
ON p.bölüm_id = b.bölüm_id
ORDER BY b.bölüm_isim, p.maas ;

SELECT p.personel_isim, b.bölüm_isim,p.maas  FROM  bölümler b
LEFT JOIN Personel p
ON p.bölüm_id = b.bölüm_id
WHERE b.bölüm_isim IN ('SATIS','MUDURLUK') AND p.maas > 2000
ORDER BY b.bölüm_isim,p.personel_isim ;

SELECT p.personel_isim, b.bölüm_isim,p.maas,(SELECT personel_isim FROM Personel
WHERE personel_id = p.müdür_id) as müdür_adı  FROM  Personel p
JOIN bölümler b
ON p.bölüm_id = b.bölüm_id
WHERE p.müdür_id IN(7788,7698)
ORDER BY p.maas DESC ;



