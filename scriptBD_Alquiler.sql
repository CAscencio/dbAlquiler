/*Listar BD del servidor*/
show databases;
/*Elimar la base de datos Alquiler*/
drop database dbAlquiler;

/*Crear nuestra BD Alquiler teniendo en cuenta la  configuracion de caracteres*/
CREATE DATABASE dbAlquiler DEFAULT CHARACTER SET utf8;
/*Poner en uso la BD*/
use dnAlquiler;
/*Verificar que la bd este en uso*/
select database();
/*Creamos una tabla*/
CREATE TABLE PERSONA
(
    CODPER int,
    NOMPER varchar(100),
    APEPATPER varchar(100),
    APEMATPER varchar (100),
    DNIPER char (8),
    DIRPER varchar (150),
    UBIGEO_CODUBI  char(6),
    TELEF1PER char(9),
    TELEF2PER char(9),
    SEXOPER char(1),
    TIPOPER char (1),
    USEPER varchar (50),
    PASSPER varchar (50),
    CONSTRAINT CODPER_PK PRIMARY KEY (CODPER)
);
/*Mostrar tablas*/
show tables;

/*Mostar sus campos*/
SHOW COLUMNS IN PERSONA;