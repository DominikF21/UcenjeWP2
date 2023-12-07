use master;
go

drop database if exists trgovina;

create database trgovina;
go


alter database trgovina collate Croatian_CI_AS;


use trgovina;


create table korisnici(
	sifra int not null primary key identity(1,1),
	korisnickoIme varchar(50) not null,
	lozinka varchar(100) not null
);


create table proizvodi(
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


create table racuni(
	djelatnica int not null primary key,
	korisnik int,
	datum datetime,
	brojracuna varchar(50) not null,
	proizvod int
);




--vanjski kljucevi
alter table racuni add foreign key (korisnik) references korisnici(sifra);
alter table racuni add foreign key (proizvod) references proizvodi(racun);
alter table proizvodi add foreign key (sifra) references korisnici(sifra);
alter table djelatnice add foreign key (sifra) references proizvodi(sifra);