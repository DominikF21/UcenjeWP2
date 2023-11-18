use master;
go
drop database if exists edunovawp2;
go

create database edunovawp2;
go
alter database edunovawp2 collate Croatian_CI_AS
go
use edunovawp2;


create table muzej(
ime varchar(50) not null,
adresa varchar(50) not null,
brojtelefona char(50) not null,
email varchar(100) not null,
izlozba varchar(50) not null
);

create table sponzor(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
iban varchar(50)
);

create table kustos(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11)
);

create table izlozba(
sifra int not null primary key identity(1,1),
naziv varchar(50),
tema varchar(50),
djelo varchar(50)
);

create table djelo(
sifra int not null primary key identity(1,1),
naziv varchar(50)
);
