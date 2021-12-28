CREATE table Hastaneler(ID TEXT PRIMARY KEY,
İSİM VARCHAR(40),
ŞEHİR TEXT,
ÖZEL TEXT
);
CREATE TABLE Hastalar(KİMLİK_NO INT,
İSİM TEXT,
TEŞHİS TEXT,
PRIMARY KEY(KİMLİK_NO)
);
CREATE TABLE Bölümler(BÖLÜM_ID TEXT,
BÖLÜM_ADI TEXT,
PRIMARY KEY(BÖLÜM_ID)
);
CREATE TABLE Hasta_Kayıtlar(
KİMLİK_NO INT,
HAST_İSM TEXT DEFAULT 'NONAME',
HASTANE_ADI TEXT,
TEŞHİS TEXT,
PRIMARY KEY(KİMLİK_NO)
);

INSERT INTO Hastaneler  VALUES('H101','ACI MADEM HASTANESİ', 'İSTANBUL','Y');
INSERT INTO Hastaneler  VALUES('H102', 'HASZEKİ HASTANESİ', 'İSTANBUL', 'N');
INSERT INTO Hastaneler  VALUES('H103', 'MEDİKOL HASTANESİ', 'İZMİR', 'Y');
INSERT INTO Hastaneler  VALUES('H104', 'MEMORYIL HASTANESİ', 'ANKARA', 'Y');

UPDATE Hasta_Kayıtlar SET KİMLİK_NO = 99991111222 where KİMLİK_NO = 3333;
DELETE  FROM Hasta_Kayıtlar WHERE KİMLİK_NO = 99991111222

ALTER TABLE Hasta_Kayıtlar ADD HAST_İSM TEXT DEFAULT 'NO NAME';

ALTER TABLE Hasta_Kayıtlar DROP COLUMN HAST_İSİM;
UPDATE Hasta_Kayıtlar SET HAST_İSM = 'Salvador Dali',  HASTANE_ADI = 'John Hopins',BÖLÜM_ADI = 'Noroloji', TEŞHİS = 'Parkinson' WHERE KİMLİK_NO = 3333;

UPDATE Hasta_Kayıtlar SET HAST_İSM = 'Salvador Dali',  HASTANE_ADI = 'John Hopins',BÖLÜM_ADI = 'Noroloji', TEŞHİS = 'Parkinson' WHERE KİMLİK_NO = 1111;


--query2--
ALTER TABLE Hasta_Kayıtlar ADD İD text PRIMARY KEY;
INSERT INTO Hastalar  VALUES(12345678901,'Ali Can', 'Gizli Şeker');
INSERT INTO Hastalar  VALUES(45678901121, 'Ayşe Yılmaz', 'Hipertansiyon');
INSERT INTO Hastalar  VALUES(78901123451, 'Steve Jobs', 'Pankreatit');
INSERT INTO Hastalar  VALUES(12344321251, 'Tom Hanks', 'COVİD-19');

INSERT INTO Bölümler  VALUES('DHL','Dahiliye');
INSERT INTO Bölümler VALUES('KBB', 'Kulak-Burun-Boğaz');
INSERT INTO Bölümler  VALUES('NRJ', 'Nöroloji');
INSERT INTO Bölümler  VALUES('GAST', 'Gastroloji');
INSERT INTO Bölümler  VALUES('KARD','Kardiyoloji');
INSERT INTO Bölümler VALUES('PSK', 'Psikiyatri');
INSERT INTO Bölümler  VALUES('GÖZ', 'Göz Hastalıkları');

INSERT INTO Hasta_Kayıtlar (KİMLİK_NO)  VALUES(1111);
INSERT INTO Hasta_Kayıtlar (KİMLİK_NO) VALUES(2222);
INSERT INTO Hasta_Kayıtlar (KİMLİK_NO) VALUES(3333);
ALTER TABLE Hasta_Kayıtlar ADD BÖLÜM_ADI TEXT DEFAULT 'Bölüm eklenmedi';

UPDATE Hasta_Kayıtlar SET HAST_İSM = (SELECT İSİM FROM Hastalar WHERE KİMLİK_NO =45678901121) WHERE KİMLİK_NO = 2222;
UPDATE Hasta_Kayıtlar SET HASTANE_ADI = (SELECT İSİM FROM Hastaneler WHERE ID ='H103') WHERE KİMLİK_NO = 2222;
UPDATE Hasta_Kayıtlar SET BÖLÜM_ADI = (SELECT BÖLÜM_ADI FROM Bölümler WHERE BÖLÜM_ID ='KBB') WHERE KİMLİK_NO = 2222;
UPDATE Hasta_Kayıtlar SET TEŞHİS = (SELECT TEŞHİS FROM Hastalar WHERE KİMLİK_NO =12344321251) WHERE KİMLİK_NO = 2222;
UPDATE Hasta_Kayıtlar SET KİMLİK_NO = (SELECT KİMLİK_NO FROM Hastalar WHERE KİMLİK_NO =78901123451) WHERE KİMLİK_NO = 2222;
UPDATE Hasta_Kayıtlar SET HAST_İSM = 'Salvador Dali' WHERE KİMLİK_NO = 99991111222;
UPDATE Hasta_Kayıtlar SET BÖLÜM_ADI = 'Nöroloji' WHERE KİMLİK_NO = 99991111222;

