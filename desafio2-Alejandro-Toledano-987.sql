/*Creamos la BD Nota: Usamos comillas dobles para que 
 desde el Shell nos tome el -(guion medio) para crear la BD*/
CREATE DATABASE "desafio2-Alejandro-Toledano-987";
/*Nos conectamos a la BD creada*/
--\c desafio2-Alejandro-Toledano-987;
/*Eliminamos la Base de datos si es que existe*/
DROP TABLE IF EXISTS INSCRITOS;
/*Creamos la tabla dada en el desafio y sus datos*/
CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente VARCHAR);
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (44, '01/01/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (56, '01/01/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (39, '01/02/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (81, '01/02/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (12, '01/03/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (91, '01/03/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (48, '01/04/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (45, '01/04/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (55, '01/05/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (33, '01/05/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (18, '01/06/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (12, '01/06/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (34, '01/07/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (24, '01/07/2021', 'Página');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (83, '01/08/2021', 'Blog');
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES (99, '01/08/2021', 'Página');
/* desafio2-Alejandro-Toledano-987; ---Ayuda Memoria ---
 CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
 VARCHAR);*/
/*Llamar toda la tabla*/
SELECT *
FROM INSCRITOS;
---------------Desafío 2 - Consultas Agrupadas--------------
--¿Cuántos registros hay?
SELECT count(*) as cantidad_registros
FROM INSCRITOS;
--¿Cuántos inscritos hay en total?
SELECT sum(cantidad) as total_inscriptos
FROM INSCRITOS;
--¿Cuál o cuáles son los registros de mayor antigüedad? HINT: ocupar subconsultas


--¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
SELECT fecha,
    sum(cantidad)
FROM INSCRITOS
GROUP BY fecha
ORDER BY fecha;
--¿Cuántos inscritos hay por fuente?
SELECT fuente,
    sum(cantidad)
FROM INSCRITOS
GROUP BY fuente;
/*¿Qué día se inscribió la mayor cantidad de personas?
 ¿Cuántas personas se inscribieron en ese día?*/
SELECT fecha, sum(cantidad) as cantidad_inscritos FROM INSCRITOS GROUP BY fecha ORDER BY cantidad_inscritos DESC;

SELECT 
/*¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog?
 ¿Cuántas personas fueron? HINT: si hay más de un registro, tomar el primero */


--¿Cuál es el promedio de personas inscritas por día?


--¿Qué días se inscribieron más de 50 personas?


/*¿Cuál es el promedio diario de personas inscritas a partir del tercer día en adelante,
 considerando únicamente las fechas posteriores o iguales a la indicada?
 HINT: ingresa manualmente la fecha del tercer día*/