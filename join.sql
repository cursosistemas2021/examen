-- seleccionamos con join
-- esto nos hace el producto cartesiano TODOS CON TODOS
select * from personas, provincias;


-- AQUI LE PEDIMOS SOLO UNOS POCOS CAMPOS
-- Y HACEMOS EL JOIN

select nompersona, apellido, nomprovincia 
from personas, provincias
where provincias.idprovincia=personas.idprovincia;


-- AQUI YA HACEMOS EL VERDADERO JOIN
-- forma del profesor
select * 
from provincias, personas
where provincias.idprovincia=personas.idprovincia;

-- INNER JOIN oficial
select * 
from provincias INNER JOIN personas
ON provincias.idprovincia=personas.idprovincia;

-- NATURAL JOIN  (Sintaxis más simple)
select * 
from provincias NATURAL JOIN personas;

-- LEFT JOIN oficial  (Encontramos las Madres SIN hijos)
select * 
from provincias LEFT JOIN personas
ON provincias.idprovincia=personas.idprovincia;


-- RIGHT JOIN oficial  (Hijos Huérfanos)
select *
from provincias RIGHT JOIN personas
ON provincias.idprovincia=personas.idprovincia;

