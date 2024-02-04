DELIMITER $$

DROP FUNCTION IF EXISTS sumaPuntos $$

CREATE FUNCTION sumaPuntos (pNombrePil CHAR(25), pAnio SMALLINT UNSIGNED)
				RETURNS SMALLINT

BEGIN

DECLARE TOTALPILOTOS TINYINT UNSIGNED;
DECLARE TOTALPUNTOS SMALLINT;

	SELECT COUNT(*)
		FROM TPILOTO
		WHERE NOMBRE = pNombrePil
		INTO TOTALPILOTOS;


	IF TOTALPILOTOS = 0 THEN
		SET TOTALPUNTOS = -1;

	ELSE
		SET TOTALPUNTOS = (SELECT SUM(PUNTOSCARRERA)
						FROM TCOMPITE
						WHERE NOMBREPILOTO = pNombrePil
								AND
								YEAR(FECHA) = pAnio);

	END IF;

return TOTALPUNTOS;

END; $$

DELIMITER ;