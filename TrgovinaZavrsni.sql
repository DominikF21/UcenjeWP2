use master;
go

drop database if exists trgovina;

create database trgovina;
go


alter database trgovina collate Croatian_CI_AS;


use trgovina;

create table korisnik(
sifra int not null primary key identity(1,1),
korisnickoIme varchar(50) not null,
lozinka varchar(20) not null
);

create table proizvod(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(18,2),
racun varchar(50)
);

create table djelatnice(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null
);



--vanjski kljucevi
alter table djelatnice add foreign key (sifra) references proizvod(sifra);
alter table korisnik add foreign key (sifra) references proizvod(sifra);
alter table proizvod add foreign key (sifra) references korisnik(sifra);