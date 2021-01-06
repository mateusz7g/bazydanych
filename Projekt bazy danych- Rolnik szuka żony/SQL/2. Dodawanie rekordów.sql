/* Dodawanie rekordów do tabeli Pracownik */

INSERT INTO Pracownik(Imie, Nazwisko, Plec, Funkcja, Telefon, Data_urodzenia, Pesel, Zarobki) VALUES 
('Marek','Kowalski','Mezczyzna','Rezyser','576443231','1979-02-07','00223142561','10000'),
('Dagmara','Kolek','Kobieta','Montazysta','685495564','1972-01-12','09227582912','7000'),
('Jakub','Durski','Mezczyzna','Montazysta','596143294','1979-06-11','07957457120','7000'),
('Arkadiusz','Robek','Mezczyzna','Oswietleniowiec','264987042','1988-12-05','95682308901','4500'),
('Izabela','Lubska','Kobieta','Oswietleniowiec','485679402','1970-11-07','06754438221','4500'),
('Maria','Kucharska','Kobieta','Dzwiekowiec','687475321','1986-09-25','67824465770','4000'),
('Robert','Haczyk','Mezczyzna','Dzwiekowiec','897685374','1982-08-21','01235794831','4000'),
('Mateusz','Gierczyca','Mezczyzna','Kamerzysta','213759852','1974-10-13','00836591058','7000')

/* Dodawanie rekordów do tabeli Adres */

INSERT INTO Adres(Wojewodztwo, Miasto, Ulica, Numer) VALUES 
('Warminsko-Mazurskie','Olsztyn','Tuwima','21'),
('Podlaskie','Suwalki','Mickiewicza','2'),
('Pomorskie','Gdansk','Ogrodnicza','65'),
('Mazowieckie','Warszawa','Traugutta','87'),
('Pomorskie','Bytow','Krotka','221'),
('Podlaskie','Bialystok','Dluga','18'),
('Mazowieckie','Radom','Lipowa','93'),
('Mazowieckie','Warszawa','Gornicza','11'),
('Warminsko-Mazurskie','Pasym','Mickiewicza','18'),
('Mazowieckie','Warszawa','Sklodowskiej','94'),
('Warminsko-Mazurskie','Olsztyn','Brzozowa','2'),
('Warminsko-Mazurskie','Olsztyn','Debowa','42'),
('Podlaskie','Bialystok','Mickiewicza','45'),
('Kujawsko-Pomorskie','Torun','Zbozowa','85'),
('Lubuskie','Lublin','Solidarności','9'),
('Slaskie','Katowice','Lwowska','71')

/* Dodawanie rekordów do tabeli Rolnik */

INSERT INTO Rolnik(Imie, Nazwisko, Data_urodzenia, Telefon, pesel, id_adresu) VALUES 
('Igor','Sroka','1974-02-14','576443231','00223142561','1'),
('Karol','Pieszko','1976-03-28','685495564','09227582912','13'),
('Jakub','Durski','1971-10-23','596143294','07957457120','15'),
('Arkadiusz','Robek','1982-09-09','264987042','95682308901','16'),
('Piotr','Sucholski','1976-12-02','485679402','06754438221','3'),
('Lech','Wojtkowski','1988-02-21','687475321','67824465770','7'),
('Robert','Haczyk','1981-06-13','897685374','01235794831','8'),
('Ignacy','Gorecki','1976-05-19','584493301','05738499201','4')

/* Dodawanie rekordów do tabeli Kandydatka */

INSERT INTO Kandydatka(Imie, Nazwisko, Data_urodzenia, Telefon, pesel, id_adresu) VALUES 
('Magdalena','Sikorska','1980-05-17','371294405','03958437412','10'),
('Karolina','Kowalewska','1972-01-22','970065723','74385960412','9'),
('Anna','Kozak','1972-04-30','448056821','01395858491','11'),
('Lena','Korek','1983-09-05','264483371','01357699876','2'),
('Agata','Lipka','1974-10-09','495522031','00147568492','12'),
('Amelia','Siurska','1989-10-12','934558821','01294859656','5'),
('Kinga','Konik','1984-06-25','594493391','04576683221','14'),
('Oliwia','Sobelska','1990-03-12','745584491','00223142561','6')

/* Dodawanie rekordów do tabeli Odcinek */

INSERT INTO Odcinek(Tytul, Data_publikacji, Godzina_publikacji, id_rolnika, id_kandydatki, id_pracownika) VALUES 
('Rolnik szuka zony: Igor i Anna','2021-01-06','18:30:00','1','3','2'),
('Rolnik szuka zony: Karol i Agata','2021-01-13','18:30:00','2','5','3'),
('Rolnik szuka zony: Arkadiusz i Oliwia','2021-01-20','18:30:00','4','8','4'),
('Rolnik szuka zony: Piotr i Amelia','2021-01-27','18:30:00','5','6','1'),
('Rolnik szuka zony: Robert i Lena','2021-02-03','18:30:00','7','4','5'),
('Rolnik szuka zony: Ignacy i Magdalena','2021-02-10','18:30:00','8','1','7'),
('Rolnik szuka zony: Lech i Kinga','2021-02-17','18:30:00','6','7','6'),
('Rolnik szuka zony: Jakub i Karolina','2021-02-24','18:30:00','3','2','8')