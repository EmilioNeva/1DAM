/* ******* FORMULA 1 - 10-04-2018 ***************** */
/* ******* Fichero defTablasF1.sql  ****** */

/*
Define las cuatro tablas básicas de la aplicación:
	TCIRCUITO
	TPILOTO
	TCARRERA
	TCOMPITE
*/

/*USE formula1;*/

DROP TABLE IF EXISTS TCOMPITE;
DROP TABLE IF EXISTS TCARRERA;
DROP TABLE IF EXISTS TCIRCUITO;
DROP TABLE IF EXISTS TPILOTO;

CREATE TABLE TCIRCUITO (
	CODIGO			CHAR(6)		NOT NULL PRIMARY KEY,
	NOMBRE			CHAR(40)	NOT NULL UNIQUE,
	LONGITUD		SMALLINT	NOT NULL ,    /* ** en metros ** */
	SENTIDOGIRO		CHAR (1)	NOT NULL ,
	CURVASIZQDA		TINYINT		NOT NULL ,
	CURVASDCHA 		TINYINT		NOT NULL ,
	LOCALIDAD		CHAR(25) 	NOT NULL ,
	REGION			CHAR(25)	NULL,	
	PAIS			CHAR(25) 	NOT NULL 
)  ENGINE =INNODB
  CHARACTER SET UTF8   ;

CREATE TABLE TPILOTO (
	NOMBRE			CHAR(25) 	NOT NULL PRIMARY KEY ,
	PAIS			CHAR(25) 	NOT NULL,
	FCH_NACIMIENTO	DATE 		NULL
)  ENGINE =INNODB
  CHARACTER SET UTF8   ;


CREATE TABLE TCARRERA (
	FECHA			DATE 		 	NOT NULL PRIMARY KEY,
	NOMBRE			CHAR(60)	 	NOT NULL UNIQUE,
	VUELTAS			TINYINT 	 	NULL,
	DISTANCIATOTAL	DECIMAL(8,3) 	NULL,
	CODCIRCUITO		CHAR(6) 		NOT NULL,
	CONSTRAINT fk_tcarrera_tcircuito
		FOREIGN KEY (CODCIRCUITO) REFERENCES TCIRCUITO(CODIGO)
		ON DELETE RESTRICT ON UPDATE CASCADE	
)  ENGINE =INNODB
  CHARACTER SET UTF8   ;

CREATE TABLE TCOMPITE (
	FECHA			DATE		NOT NULL,
	PUESTOLLEGADA	CHAR(3)		NOT NULL, 
	NUMAUTO			TINYINT		NOT NULL,
	NOMBREPILOTO	CHAR(25)	NOT NULL,
	EQUIPO			CHAR(25) 	NOT NULL,
	VUELTAS			TINYINT		NOT NULL,
	TPOCARRERA		CHAR(25) 	NOT NULL,
	PUESTOPARRILLA	TINYINT		NULL, 
	PUNTOSCARRERA 	TINYINT		NOT NULL,  
  
	PRIMARY KEY(FECHA, NOMBREPILOTO) ,
	CONSTRAINT fk_tcompite_tcarrera
		FOREIGN KEY (FECHA) REFERENCES TCARRERA (FECHA)
			ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT fk_tcompite_tpiloto		
		FOREIGN KEY (NOMBREPILOTO) REFERENCES TPILOTO (NOMBRE)
	 		ON DELETE RESTRICT ON UPDATE CASCADE
)  ENGINE =INNODB
  CHARACTER SET UTF8    ;

	
