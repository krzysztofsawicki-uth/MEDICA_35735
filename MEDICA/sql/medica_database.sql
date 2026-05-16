CREATE DATABASE MEDICA;

USE MEDICA;

CREATE TABLE Pacjenci (
    id_pacjenta INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    pesel VARCHAR(11),
    telefon VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Lekarze (
    id_lekarza INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    specjalizacja VARCHAR(100)
);

CREATE TABLE Wizyty (
    id_wizyty INT PRIMARY KEY AUTO_INCREMENT,
    id_pacjenta INT,
    id_lekarza INT,
    data_wizyty DATE,
    godzina TIME,
    FOREIGN KEY (id_pacjenta) REFERENCES Pacjenci(id_pacjenta),
    FOREIGN KEY (id_lekarza) REFERENCES Lekarze(id_lekarza)
);
