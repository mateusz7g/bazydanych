/* Utworzenie nowej bazy */

CREATE DATABASE Rolnik_szuka_zony;
USE Rolnik_szuka_zony;

/* Tabela pracownik */

CREATE TABLE Pracownik
(
	id_pracownika INT AUTO_INCREMENT PRIMARY KEY, 
	Imie VARCHAR(20), 
	Nazwisko VARCHAR(20),
	Plec ENUM('Kobieta','Mezczyzna'),
   	Funkcja ENUM('Rezyser','Montazysta','Dzwiekowiec','Oswietleniowiec','Kamerzysta'),
    	Telefon VARCHAR(9),
    	Data_urodzenia DATE,
	Pesel VARCHAR(11),
	Zarobki INT
);


/* Tabela Adres */

CREATE TABLE Adres
(
	id_adresu INT AUTO_INCREMENT PRIMARY KEY, 
	Wojewodztwo VARCHAR(30), 
	Miasto VARCHAR(20),
	Ulica VARCHAR(20),
    	Numer VARCHAR(5)
);

/* Tabela Rolnik, klucz obcy */

CREATE TABLE Rolnik
(
	id_rolnika INT AUTO_INCREMENT PRIMARY KEY, 
	Imie VARCHAR(20), 
	Nazwisko VARCHAR(20),
	Data_urodzenia DATE,
    	Telefon VARCHAR(9),
    	Pesel VARCHAR(11),
   	id_adresu INT,
    	FOREIGN KEY(id_adresu) REFERENCES Adres(id_adresu)
);

/* Tabela Kandydatka, klucz obcy */

CREATE TABLE Kandydatka
(
	id_kandydatki INT AUTO_INCREMENT PRIMARY KEY, 
	Imie VARCHAR(20), 
	Nazwisko VARCHAR(20),
	Data_urodzenia DATE,
    	Telefon VARCHAR(9),
    	Pesel VARCHAR(11),
   	id_adresu INT,
    	FOREIGN KEY(id_adresu) REFERENCES Adres(id_adresu)
);

/* Tabela Odcinek, klucze obce */

CREATE TABLE Odcinek
(
	id_odcinka INT AUTO_INCREMENT PRIMARY KEY, 
	Tytul VARCHAR(50), 
	Data_publikacji DATE,
	Godzina_publikacji TIME,
	id_rolnika INT,
	FOREIGN KEY(id_rolnika) REFERENCES Rolnik(id_rolnika),
	id_kandydatki INT,
	FOREIGN KEY(id_kandydatki) REFERENCES Kandydatka(id_kandydatki),
	id_pracownika INT,
	FOREIGN KEY(id_pracownika) REFERENCES Pracownik(id_pracownika)
);