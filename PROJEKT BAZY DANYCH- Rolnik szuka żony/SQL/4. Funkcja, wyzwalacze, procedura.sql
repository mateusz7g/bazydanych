/* Procedura wyświetlająca łączne zarobki pracowników na danej funkcji */

DELIMITER //
CREATE PROCEDURE zarobki_funkcja()
BEGIN 
SELECT Funkcja, SUM(Zarobki) AS 'Laczne zarobki' FROM Pracownik GROUP BY Funkcja;
END //

CALL zarobki_funkcja();

/* Funkcja obliczająca zarobki pracownika po podwyżce */

DElIMITER //
CREATE FUNCTION zarobki(zarobki FLOAT, podwyzka FLOAT)
RETURNS VARCHAR(15)
BEGIN 
DECLARE koncowa FLOAT;
SET koncowa = zarobki * podwyzka;
RETURN CONCAT(koncowa, ' zl');
END //

/* Przykład */ SELECT zarobki(3750,1.25) AS 'Zarobki pracownika po podwyzce';

/* Wyzwalacz przed wprowadzeniem danych informujący, że kandydatka dla rolnika jest za stara... */

DELIMITER //
CREATE TRIGGER stare_kandydatki BEFORE INSERT ON Kandydatka
FOR EACH ROW 
BEGIN 
IF new.Data_urodzenia < '1970-01-01' THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kandydatka dla rolnika jest za stara...';
END IF;
END //

/* Przykład */ INSERT INTO Kandydatka(Imie, Nazwisko, Data_urodzenia, Telefon, pesel, id_adresu) VALUES 
('Janina','Pomidor','1931-02-12','664456654','96558668594','2');

/* Wyzwalacz informujący, że każdy odcinek pojawia się o 18:30 i nie można ustawić innej godziny... */

DELIMITER //
CREATE TRIGGER godzina_publikacji BEFORE INSERT ON Odcinek
FOR EACH ROW 
BEGIN 
IF new.Godzina_publikacji != '18:30:00' THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Odcinki pojawiaja sie zawsze o 18:30, nie mozna ustawic innej godziny...';
END IF;
END //

/* Przykład */ INSERT INTO Odcinek(Tytul, Data_publikacji, Godzina_publikacji, id_rolnika, id_kandydatki, id_pracownika) VALUES 
('Rolnik szuka zony: Igor i Anna','2021-01-06','12:15:00','1','3','2');