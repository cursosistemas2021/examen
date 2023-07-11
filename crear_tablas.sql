-- programa para crear la BBDD del EJERCICIO 11
-- Creación de BBDD completa con RELACIONES

create table provincias (
	idprovincia integer not null, 
	nomprovincia varchar(15) not null,
	habitantes integer not null,
	primary key(idprovincia)
	);

# Creamos la tabla de personas. Dejamos NULL para idprovincia
# Para poder dejar el campo vacio y probar los RIGHT JOIN

create table personas (
	idpersona integer not null, 
	nompersona varchar(10) not null,
	apellido varchar(15) not null,
	telefono varchar(11) not null,
	email varchar(20) not null,
	idprovincia integer null,
	primary key(idpersona),
	constraint FK_PROVINCIA foreign key (idprovincia) references provincias (idprovincia)
	);

-- fin del programa
