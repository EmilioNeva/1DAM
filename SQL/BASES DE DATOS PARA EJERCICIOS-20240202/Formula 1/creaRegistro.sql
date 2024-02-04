/******************************************************************/
drop database registro;
create database registro;
use registro;
/**************************************/
DROP TABLE IF EXISTS TPAQUETE;

CREATE TABLE TPAQUETE (
						NUMPAQUETE 	INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						COLOR 		CHAR(15)		NOT NULL,
						GASTOS		DECIMAL(7,2)	NOT NULL,
						PRECIO		DECIMAL(7,2)	NOT NULL, 
						LOCALIDAD 	CHAR(25)		NULL
						) engine = InnoDB;
/*************************************/
DELIMITER $$
/******************************************************************/

DROP PROCEDURE IF EXISTS insertaReg $$
CREATE PROCEDURE insertaReg ( IN TOTALREG SMALLINT UNSIGNED )
 
BEGIN
	DECLARE CONTADOR 	SMALLINT UNSIGNED DEFAULT 0;

	DECLARE COLOR 	TINYINT UNSIGNED;
	DECLARE PRECIO 		DECIMAL(7,2) ; 
	DECLARE GASTOS 		DECIMAL(4,2) ; 
	DECLARE VNOM 		CHAR(15);
	DECLARE VLOCALIDAD	CHAR(30);
	DECLARE ALEATORIO 	TINYINT UNSIGNED;
	   
		IF TOTALREG < 1 or TOTALREG > 1000 THEN
			SELECT "Número de registros incorrecto. Debe estar entre 1 y 1000," AS MENSAJE;
		ELSE
			WHILE CONTADOR < TOTALREG DO
			/*El color se genera aleatoriamente 
			(posibles colores: BLANCO, NEGRO, ROJO, AZUL, VERDE, AMARILLO,
			 VIOLETA, TURQUESA, MARRÓN, ROSA, NARANJA, GRIS).
			 El precio se genera aleatoriamente entre 100.00 y 3000.00 .*/

				SET COLOR = 1  + FLOOR (12 * RAND());
				SET PRECIO = 100.0  + (2900.00 * RAND());

				CASE  COLOR					 				 		
					WHEN 1 THEN		SET VNOM ="BLANCO";				 
					WHEN 2 THEN		SET VNOM ="NEGRO";				
					WHEN 3 THEN		SET VNOM ="ROJO";					
					WHEN 4 THEN		SET VNOM ="AZUL";				
					WHEN 5 THEN		SET VNOM ="VERDE";					
					WHEN 6 THEN		SET VNOM ="AMARILLO";	
					WHEN 7 THEN		SET VNOM ="VIOLETA";				 
					WHEN 8 THEN		SET VNOM ="TURQUESA";				
					WHEN 9 THEN		SET VNOM ="MARRON";					
					WHEN 10 THEN		SET VNOM ="ROSA";				
					WHEN 11 THEN		SET VNOM ="NARANJA";					
					WHEN 12 THEN		SET VNOM ="GRIS";						
				END CASE;	
				IF VNOM="BLANCO" OR VNOM="GRIS" THEN
						SET GASTOS = 0.0;
				ELSEIF VNOM = "ROJO" OR VNOM = "NARANJA" THEN
						SET GASTOS = 10.3;
				ELSE
						SET GASTOS = 5.5;
				END IF;
				/*****************************************/
				SET ALEATORIO = 1  + FLOOR (10 * RAND());
				CASE  ALEATORIO					 				 		
					WHEN 1 THEN		SET VLOCALIDAD ="CADIZ";				 
					WHEN 2 THEN		SET VLOCALIDAD ="JEREZ DE LA FRONTERA";				
					WHEN 3 THEN		SET VLOCALIDAD ="EL PUERTO DE SANTA MARIA";					
					WHEN 4 THEN		SET VLOCALIDAD ="SANLUCAR DE BARRAMEDA";				
					WHEN 5 THEN		SET VLOCALIDAD ="ROTA";	
					WHEN 6 THEN		SET VLOCALIDAD ="SAN FERNANDO";	
					WHEN 7 THEN		SET VLOCALIDAD ="PUERTO REAL";		
				ELSE
							SET VLOCALIDAD = NULL;		
				END CASE;

				/*****************************************/
				INSERT INTO TPAQUETE VALUES (DEFAULT,  VNOM,
							 GASTOS, PRECIO, VLOCALIDAD);
				SET CONTADOR = CONTADOR +1;

			END WHILE;
		END IF; 
END; $$
/******************************************************************/
/******************************************************************/

delimiter ;

/*******************************************/
