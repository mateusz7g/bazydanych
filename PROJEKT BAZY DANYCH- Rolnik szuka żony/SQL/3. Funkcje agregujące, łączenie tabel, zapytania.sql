/* Podzapytania  */

SELECT CONCAT(Imie, " ", Nazwisko, " - ", Funkcja) AS 'Imie, Nazwisko, Funkcja' FROM Pracownik WHERE Nazwisko LIKE 'K%';

SELECT Tytul, Data_publikacji FROM Odcinek WHERE MONTH(Data_publikacji)='02' ORDER BY Data_publikacji DESC;

SELECT Imie, Nazwisko, Data_urodzenia, Telefon FROM Kandydatka WHERE YEAR(Data_urodzenia) BETWEEN 1980 AND 1990 AND Telefon LIKE '3%';

/* Funkcje agregujące */

SELECT Funkcja, AVG(2020-YEAR(Data_urodzenia)) AS 'Srednia Wieku' FROM Pracownik GROUP BY Funkcja;

SELECT Funkcja, COUNT(id_pracownika) AS 'Ilosc osob' FROM Pracownik GROUP BY Funkcja;

SELECT Plec, SUM(Zarobki) AS 'Laczne zarobki' FROM Pracownik GROUP BY Plec;

SELECT Imie, Nazwisko, MIN(Zarobki) AS 'Minimalne wynagrodzenie' FROM Pracownik WHERE Plec='mezczyzna' AND YEAR(Data_urodzenia) BETWEEN 1975 AND 1985;


/* Łączenie tabel */


SELECT Rolnik.Imie, Rolnik.Nazwisko, Adres.Miasto FROM Rolnik JOIN Adres ON Rolnik.id_adresu = Adres.id_adresu WHERE Miasto='Warszawa';

SELECT Pracownik.Imie, Pracownik.Nazwisko, Pracownik.Funkcja, Odcinek.Tytul FROM Odcinek JOIN Pracownik ON Odcinek.id_pracownika = Pracownik.id_pracownika WHERE Funkcja='Montazysta';

SELECT Odcinek.Tytul, Odcinek.Data_publikacji, Rolnik.Imie AS 'Imie rolnika', Kandydatka.Imie AS 'Imie kandydatki' FROM Odcinek JOIN Rolnik ON Odcinek.id_rolnika = Rolnik.id_rolnika JOIN Kandydatka ON Odcinek.id_kandydatki = Kandydatka.id_kandydatki;