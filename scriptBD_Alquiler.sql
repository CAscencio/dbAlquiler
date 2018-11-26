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
describe PERSONA;

/*Crear la tabla UBIGEO*/
CREATE TABLE UBIGEO(
    CODUBI int,
    DISTUBI varchar (100),
    PROVUBI varchar (100),
    DPTOUBI varchar (100),
    CONSTRAINT CODUBI_PK PRIMARY KEY (CODUBI)
);

/*Verificar estructura de la tabla UBIGEO */}
show COLUMNS in UBIGEO;
/*Creamos la tabla VIVIENDA*/
CREATE TABLE VIVIENDA(
    CODVIV int,
    DESCVIV varchar (150),
    DIRVIV varchar (150),
    UBIGEO_CODUBI char(6),
    ESTADOVIVIENDA_CODESTVIV int,
    TIPOVIVIENDA_CODTIPVIV int,
    CONSTRAINT CODVIV_PK PRIMARY KEY(CODVIV)
);

/*Verificar que se ha creado la tabla*/
show tables;

/*Verificar los campos de la tabla VIVIENDA*/
show COLUMNS in VIVIENDA;

/*Crear tabla ESTADO_VIVIENDA*/
CREATE TABLE ESTADO_VIVIENDA(
    CODESTVIV int,
    DESCESTVIV varchar (50),
    CONSTRAINT CODESTVIV_PK PRIMARY KEY (CODESTVIV)
);

/*Crear tabla tipo Vivienda*/
CREATE TABLE TIPO_VIVIENDA(
    CODTIPVIV int,
    DESCTIPVIV varchar (50),
    CONSTRAINT CODTIPVIV_PK PRIMARY KEY (CODTIPVIV)
);

/*Crear la tabla ALQUILER*/
CREATE TABLE ALQUILER(
    CODALQ int,
    FECINCALQ date,
    PERSONA_PROP int,
    PERSONA_INQ int,
    CONSTRAINT CODALQ PRIMARY KEY (CODALQ)
);

/*Crear la tabla detalle Aquiler*/
CREATE TABLE DETALLE_ALQUILER(
    CODDETALQ int,
    VIVIENDA_CODVIV int,
    FECINICDETALQ date,
    COSTDETALQ decimal (8,2),
    ALQUILER_CODALQ int,
    CONSTRAINT CODDETALQ PRIMARY KEY (CODDETALQ)
);

/*Relacion entre la tabla PERSONA y la tavla UBIGEO*/

alter table PERSONA
    add CONSTRAINT UBIGEO_FK FOREIGN KEY (UBIGEO_CODUBI)
    REFERENCES UBIGEO (CODUBI);