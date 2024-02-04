/********************* Modificado 10/04/2018  *****/

SELECT " ************************ BORRANDO TABLAS " AS MENSAJE;
DELETE FROM TCARRERA;
DELETE FROM TCIRCUITO;
DELETE FROM TPILOTO;
/* ************ INSERTA CIRCUITOS , CARRERAS Y PILOTOS **************** */
 
SELECT " ************************ INSERTANDO CIRCUITOS " AS MENSAJE;
 
/*
************************* C I R C U I T O S (26) ***************************************************
*/

INSERT INTO TCIRCUITO VALUES 
	('ALBPAR', 'ALBERT PARK', 5303,'A', 6, 10, 'MELBOURNE', ' ', 'AUSTRALIA');
INSERT INTO TCIRCUITO VALUES 
	('SEPANG',  'CIRCUITO INTERNACIONAL DE SEPANG', 5543,'A', 5, 10, 'SEPANG', 'SELANGOR', 'MALASIA');
INSERT INTO TCIRCUITO VALUES 
	('SHANGH','CIRCUITO INTERNACIONAL DE SHANGHAI', 5451,'A', 7, 9,'SHANGAI',' ', 'CHINA');
INSERT INTO TCIRCUITO VALUES 
	('BAHRAI','BAHRAIN INTERNATIONAL CIRCUIT', 5412, 'C', 6, 9, 'MANAMA', ' ', 'BAREIN' );
INSERT INTO TCIRCUITO VALUES 
	('CATALU', 'MONTMELO', 4655, 'A', 7, 9, 'BARCELONA', 'CATALUNA',  'ESPANA');

INSERT INTO TCIRCUITO VALUES 
	('MONACO','CIRCUITO DE MONACO', 3340, 'A', 9, 10, 'MONTECARLO', ' ', 'MONACO');
INSERT INTO TCIRCUITO VALUES 
	('GILVIL','CIRCUITO GILLES VILLENEUVE', 4361, 'A', 5, 8, 'MONTREAL', ' ', 'CANADA');
INSERT INTO TCIRCUITO VALUES 
	('VALENC','CIRCUITO URBANO DE VALENCIA', 5419,'A',12,13,'VALENCIA', ' ', 'ESPANA');
INSERT INTO TCIRCUITO VALUES 
	('SILVER','CIRCUITO DE SILVERSTONE',5891,'A', 8,10,	'SILVERSTONE', ' ', 'REINO UNIDO');
INSERT INTO TCIRCUITO VALUES 
	('HOCKEN','HOCKENHEIMRING',4574,'A',6, 9, 'HOCKENHEIM', ' ','ALEMANIA');

INSERT INTO TCIRCUITO VALUES 
	('HUNGAR', 'HUNGARORING', 4381, 'A',6, 10, 'MOGYOROD',' ','HUNGRIA');
INSERT INTO TCIRCUITO VALUES 
	('SPAFRA','CIRCUITO DE SPA-FRANCORCHAMPS', 7004,'A',10, 11,'SPA-FRANCORCHAMPS',' ', 'BELGICA');
INSERT INTO TCIRCUITO VALUES 
	('MONZA','AUTODROMO DE MONZA',5793,	'A',5,6,'MONZA','LOMBARDIA','ITALIA');
INSERT INTO TCIRCUITO VALUES 
	('SINGAP','MARINA BAY STREET CIRCUIT',5073,'C',14,9,'SINGAPUR',' ','SINGAPUR');
INSERT INTO TCIRCUITO VALUES 
	('SUZUKA','CIRCUITO DE SUZUKA',5807,'A',8,10,'SUZUKA','MIE','JAPON');

INSERT INTO TCIRCUITO VALUES 
	('KOREA','CIRCUITO INTERNACIONAL DE COREA',	5615,'C',11,7,'YEONGAM','JEOLLA DEL SUR','COREA DEL SUR');
INSERT INTO TCIRCUITO VALUES 
	('BUDDH','BUDDH INTERNATIONAL CIRCUIT',5125,'A',7,9,'GREATER NOIDA','UTTAR PRADESH','INDIA');
INSERT INTO TCIRCUITO VALUES 
	('YASMAR','CIRCUITO YAS MARINA',5554,'C',12,9,'ISLA YAS','ABU DABI','EMIRATOS ARABES UNIDOS');		
INSERT INTO TCIRCUITO VALUES 
	('AUSTIN','AUSTIN',5500,'C',11,9,'AUSTIN','TEXAS','ESTADOS UNIDOS');	
INSERT INTO TCIRCUITO VALUES 
	('JCPACE','AUTODROMO JOSE CARLOS PACE',4309,'C',10,5,'SAO PAULO',' ','BRASIL');

INSERT INTO TCIRCUITO VALUES 
	('ESTAMB','CIRCUITO DE ESTAMBUL', 5378,'C', 8, 6, 'ESTAMBUL', ' ', 'TURQUIA' );	
INSERT INTO TCIRCUITO VALUES 
	('REDBUL','Red Bull Ring', 4326,'A', 2, 7, 'SPIELBERG', ' ', 'AUSTRIA' );	
INSERT INTO TCIRCUITO VALUES 
	('SOCHI','SOCHI', 5872,'A', 7, 11 , 'SOCHI', ' ', 'RUSIA' );
INSERT INTO TCIRCUITO VALUES 
	('AHRODR','AUTÓDROMO HERMANOS RODRÍGUEZ', 4304,'A',6, 10 , 'CIUDAD DE MÉXICO', ' ', 'MÉXICO' );
INSERT INTO TCIRCUITO VALUES 
	('BAKU','BAKU CITY CIRCUIT', 6003,'C',12, 8 , 'AZADLIQ SQUARE', 'BAKU', 'AZERBAIJAN' );

INSERT INTO TCIRCUITO VALUES 
	('RICARD','CIRCUITO PAUL RICARD', 5842,'A',6, 9 , 'LE CASTELLET', 'PROVENZA-ALPES-COSTA AZUL', 'FRANCIA' );	
/* ******************************************************************************* */
/* ******************************************************************************* */


/*
************************* C A R R E R A S *************************************************************
*/
 
SELECT " ************************ INSERTANDO CARRERAS 2011  " AS MENSAJE;
 
/* *******************************************    2011      (19 CARRERAS)            */			
INSERT INTO TCARRERA VALUES 
		(str_to_date('27/03/2011','%d/%m/%Y')  , 
			'2011 FORMULA 1 AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('10/04/2011','%d/%m/%Y')  ,   
			'2011 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');
INSERT INTO TCARRERA VALUES 
		(str_to_date('17/04/2011','%d/%m/%Y')  ,   
			'2011 FORMULA1 UBS CHINESE GRAND PRIX', 56, 305.066, 'SHANGH');			
INSERT INTO TCARRERA VALUES 
		(str_to_date('08/05/2011','%d/%m/%Y')  ,     
			'2011 FORMULA 1 DHL TURKISH GRAND PRIX', 58, 311.924, 'ESTAMB'	);
INSERT INTO TCARRERA VALUES 
		( str_to_date('22/05/2011','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPANA SANTANDER 2011', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('29/05/2011','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2011', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('12/06/2011','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2011', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('26/06/2011','%d/%m/%Y')  ,     
			'2011 FORMULA1 GRAND PRIX OF EUROPE', 57, 308.883, 'VALENC' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('10/07/2011','%d/%m/%Y')  ,     
			'2011 FORMULA 1 SANTADER BRITISH GRAND PRIX', 52, 306.227, 'SILVER' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('24/07/2011','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS SANTANDER VON DEUTSCHLAND 2011', 67, 306.458, 'HOCKEN' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('31/07/2011','%d/%m/%Y')  ,      
			'FORMULA 1 ENI MAGYAR NAGYDIJ 2011', 70, 306.630, 'HUNGAR' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('28/08/2011','%d/%m/%Y')  ,      
			'2011 FORMULA 1 SHELL BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('11/09/2011','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO SANTANDER D ITALIA 2011', 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('25/09/2011','%d/%m/%Y')  ,    
			'2011 FORMULA 1 SINGTEL SINGAPORE GRAND PRIX', 61, 309.316, 'SINGAP' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('09/10/2011','%d/%m/%Y')  ,     
			'2011 FORMULA 1 JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('16/10/2011','%d/%m/%Y')  ,     
			'2011 FORMULA 1 KOREAN GRAND PRIX', 55, 308.630, 'KOREA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('30/10/2011','%d/%m/%Y')  ,    
			'2011 FORMULA 1 AIRTEL NDIAN GRAND PRIX', 60, 307.249, 'BUDDH' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('13/11/2011','%d/%m/%Y')  ,     
			'2011 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('27/11/2011','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PREMIO DO BRASIL 2011', 71, 305.909, 'JCPACE' );
		
			
/* *******************************************    2012   (20 CARRERAS)              */			
 
SELECT " ************************ INSERTANDO CARRERAS 2012  " AS MENSAJE;
 

INSERT INTO TCARRERA VALUES 
		(str_to_date('18/03/2012','%d/%m/%Y')  , 
			'2012 FORMULA 1 AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('25/03/2012','%d/%m/%Y')  ,   
			'2012 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');
INSERT INTO TCARRERA VALUES 
		(str_to_date('15/04/2012','%d/%m/%Y')  ,   
			'2012 FORMULA1 UBS CHINESE GRAND PRIX', 56, 305.066, 'SHANGH');
INSERT INTO TCARRERA VALUES 
		(str_to_date('22/04/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX', 57, 308.238, 'BAHRAI'	);
INSERT INTO TCARRERA VALUES 
		( str_to_date('13/05/2012','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPANA SANTANDER 2012', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('27/05/2012','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2012', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('10/06/2012','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2012', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('24/06/2012','%d/%m/%Y')  ,     
			'2012 FORMULA1 GRAND PRIX OF EUROPE', 57, 308.883, 'VALENC' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('08/07/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 SANTANDER BRITISH GRAND PRIX', 52, 306.227, 'SILVER' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('22/07/2012','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS SANTANDER VON DEUTSCHLAND 2012', 67, 306.458, 'HOCKEN' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('29/07/2012','%d/%m/%Y')  ,      
			'FORMULA 1 ENI MAGYAR NAGYDIJ 2012', 70, 306.630, 'HUNGAR' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('02/09/2012','%d/%m/%Y')  ,      
			'2012 FORMULA 1 SHELL BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('09/09/2012','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO SANTANDER D ITALIA 2012', 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('23/09/2012','%d/%m/%Y')  ,    
			'2012 FORMULA 1 SINGTEL SINGAPORE GRAND PRIX', 61, 309.316, 'SINGAP' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('07/10/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('14/10/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 KOREAN GRAND PRIX', 55, 308.630, 'KOREA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('28/10/2012','%d/%m/%Y')  ,    
			'2012 FORMULA 1 AIRTEL INDIAN GRAND PRIX', 60, 307.249, 'BUDDH' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('04/11/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('18/11/2012','%d/%m/%Y')  ,     
			'2012 FORMULA 1 UNITED STATES GRAND PRIX', 56, 308.405, 'AUSTIN' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('25/11/2012','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PREMIO DO BRASIL 2012', 71, 305.909, 'JCPACE' );


/* *******************************************/			
/* *******************************************    2013     (19 CARRERAS)                  */			

SELECT " ************************ INSERTANDO CARRERAS 2013  " AS MENSAJE;
 

INSERT INTO TCARRERA VALUES 
		(str_to_date('17/03/2013','%d/%m/%Y')  , 
			'2013 FORMULA 1 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('24/03/2013','%d/%m/%Y')  ,   
			'2013 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');
INSERT INTO TCARRERA VALUES 
		(str_to_date('14/04/2013','%d/%m/%Y')  ,   
			'2013 FORMULA1 UBS CHINESE GRAND PRIX', 56, 305.066, 'SHANGH');
INSERT INTO TCARRERA VALUES 
		(str_to_date('21/04/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX', 57, 308.238, 'BAHRAI'	);
INSERT INTO TCARRERA VALUES 
		( str_to_date('12/05/2013','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPANA 2013', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('26/05/2013','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2013', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('9/06/2013','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2013', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('30/06/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 BRITISH GRAND PRIX', 52, 306.227, 'SILVER' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('07/07/2013','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS VON DEUTSCHLAND 2013', 67, 306.458, 'HOCKEN' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('28/07/2013','%d/%m/%Y')  ,      
			'FORMULA 1 MAGYAR NAGYDIJ 2013', 70, 306.630, 'HUNGAR' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('25/08/2013','%d/%m/%Y')  ,      
			'2013 FORMULA 1 SHELL BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('08/09/2013','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO D ITALIA 2013', 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('22/09/2013','%d/%m/%Y')  ,    
			'2013 FORMULA 1 SINGAPORE GRAND PRIX', 61, 309.316, 'SINGAP' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('06/10/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 KOREAN GRAND PRIX', 53, 307.471, 'KOREA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('13/10/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('27/10/2013','%d/%m/%Y')  ,    
			'2013 FORMULA 1 AIRTEL INDIAN GRAND PRIX', 60, 307.249, 'BUDDH' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('03/11/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );		
INSERT INTO TCARRERA VALUES 
		( str_to_date('17/11/2013','%d/%m/%Y')  ,     
			'2013 FORMULA 1 UNITED STATES GRAND PRIX', 56, 308.405, 'AUSTIN' );		
INSERT INTO TCARRERA VALUES 
		( str_to_date('24/11/2013','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PREMIO DO BRASIL 2013', 71, 305.909, 'JCPACE' );

/* *******************************************/			
/* *******************************************    2014     (19 CARRERAS)                  */			
 
SELECT " ************************ INSERTANDO CARRERAS 2014  " AS MENSAJE;
 

INSERT INTO TCARRERA VALUES 
		(str_to_date('16/03/2014','%d/%m/%Y')  , 
			'2014 FORMULA 1 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('30/03/2014','%d/%m/%Y')  ,   
			'2014 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');
INSERT INTO TCARRERA VALUES 
		(str_to_date('06/04/2014','%d/%m/%Y')  ,   
			'2014 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX', 57, 308.238, 'BAHRAI');
INSERT INTO TCARRERA VALUES 
		(str_to_date('20/04/2014','%d/%m/%Y')  ,   
			'2014 FORMULA 1 UBS CHINESE GRAND PRIX', 56, 305.066, 'SHANGH'); 
INSERT INTO TCARRERA VALUES 
		( str_to_date('11/05/2014','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPAÑA PIRELLI 2014', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('25/05/2014','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2014', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('08/06/2014','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2014', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('22/06/2014','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS VON ÖSTERREICH 2014',  71,  307.146, 'REDBUL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('06/07/2014','%d/%m/%Y')  ,     
			'2014 FORMULA 1 SANTANDER BRITISH GRAND PRIX', 52, 306.198, 'SILVER' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('20/07/2014','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS SANTANDER VON DEUTSCHLAND 2014', 67, 306.458, 'HOCKEN' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('27/07/2014','%d/%m/%Y')  ,      
			'FORMULA 1 PIRELLI MAGYAR NAGYDÍJ 2014', 70, 306.630, 'HUNGAR' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('24/08/2014','%d/%m/%Y')  ,      
			'2014 FORMULA 1 SHELL BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('07/09/2014','%d/%m/%Y')  ,      
			"FORMULA 1 GRAN PREMIO D'ITALIA 2014", 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('21/09/2014','%d/%m/%Y')  ,    
			'2014 FORMULA 1 SINGAPORE GRAND PRIX', 61, 308.828, 'SINGAP' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('05/10/2014','%d/%m/%Y')  ,     
			'2014 FORMULA 1 JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('12/10/2014','%d/%m/%Y')  ,     
			'2014 FORMULA 1 RUSSIAN GRAND PRIX', 52, 305.344, 'SOCHI' );		
INSERT INTO TCARRERA VALUES 
		( str_to_date('02/11/2014','%d/%m/%Y')  ,     
			'2014 FORMULA 1 UNITED STATES GRAND PRIX', 56, 308.405, 'AUSTIN' );		
INSERT INTO TCARRERA VALUES 
		( str_to_date('09/11/2014','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PRÊMIO DO BRASIL 2014', 71, 305.909, 'JCPACE' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('23/11/2014','%d/%m/%Y')  ,     
			'2014 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );


/* *******************************************/			
/* *******************************************    2015     (19 CARRERAS)                  */			
 
SELECT "  ************************ INSERTANDO CARRERAS 2015  " AS MENSAJE;
 

INSERT INTO TCARRERA VALUES 
		(str_to_date('15/03/2015','%d/%m/%Y')  , 
			'2015 FORMULA 1 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('29/03/2015','%d/%m/%Y')  ,   
			'2015 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');
INSERT INTO TCARRERA VALUES 
		(str_to_date('12/04/2015','%d/%m/%Y')  ,   
			'2015 FORMULA 1 CHINESE GRAND PRIX', 56, 305.066, 'SHANGH'); 		
INSERT INTO TCARRERA VALUES 
		(str_to_date('19/04/2015','%d/%m/%Y')  ,   
			'2015 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX', 57, 308.238, 'BAHRAI');
INSERT INTO TCARRERA VALUES 
		( str_to_date('10/05/2015','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPAÑA PIRELLI 2015', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('24/05/2015','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2015', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('07/06/2015','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2015', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('21/06/2015','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS VON ÖSTERREICH 2015',  71,  307.146, 'REDBUL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('05/07/2015','%d/%m/%Y')  ,     
			'2015 FORMULA 1 BRITISH GRAND PRIX', 52, 306.198, 'SILVER' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('26/07/2015','%d/%m/%Y')  ,      
			'FORMULA 1 PIRELLI MAGYAR NAGYDÍJ 2015', 70, 306.630, 'HUNGAR' );
 
INSERT INTO TCARRERA VALUES 
		(str_to_date('23/08/2015','%d/%m/%Y')  ,      
			'2015 FORMULA 1 SHELL BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('06/09/2015','%d/%m/%Y')  ,      
			"FORMULA 1 GRAN PREMIO D'ITALIA 2015", 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('20/09/2015','%d/%m/%Y')  ,    
			'2015 FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX', 61, 308.828, 'SINGAP' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('27/09/2015','%d/%m/%Y')  ,     
			'2015 FORMULA 1 JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('11/10/2015','%d/%m/%Y')  ,     
			'2015 FORMULA 1 RUSSIAN GRAND PRIX', 52, 305.344, 'SOCHI' );		

INSERT INTO TCARRERA VALUES 
		( str_to_date('25/10/2015','%d/%m/%Y')  ,     
			'2015 FORMULA 1 UNITED STATES GRAND PRIX', 56, 308.405, 'AUSTIN' );	
INSERT INTO TCARRERA VALUES 
		( str_to_date('01/11/2015','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE MÉXICO 2015', 71, 305.584, 'AHRODR' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('15/11/2015','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PRÊMIO PETROBRAS DO BRASIL 2015', 71, 305.909, 'JCPACE' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('29/11/2015','%d/%m/%Y')  ,     
			'2015 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );


/* *******************************************/			
/* *******************************************    2016     (21 CARRERAS)                  */			
 
SELECT "  ************************ INSERTANDO CARRERAS 2016  " AS MENSAJE;
 

INSERT INTO TCARRERA VALUES 
		(str_to_date('20/03/2016','%d/%m/%Y')  , 
			'2016 FORMULA 1 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574 ,'ALBPAR'  );
INSERT INTO TCARRERA VALUES 
		(str_to_date('03/04/2016','%d/%m/%Y')  ,   
			'2016 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX', 57, 308.238, 'BAHRAI');
INSERT INTO TCARRERA VALUES 
		(str_to_date('17/04/2016','%d/%m/%Y')  ,   
			'2016 FORMULA 1 PIRELLI CHINESE GRAND PRIX', 56, 305.066, 'SHANGH'); 		
INSERT INTO TCARRERA VALUES 
		( str_to_date('01/05/2016','%d/%m/%Y')  ,     
			'2016 FORMULA 1 RUSSIAN GRAND PRIX', 52, 305.344, 'SOCHI' );	
INSERT INTO TCARRERA VALUES 
		( str_to_date('15/05/2016','%d/%m/%Y')  ,      
			'FORMULA 1 GRAN PREMIO DE ESPAÑA PIRELLI 2016', 66 , 307.104, 'CATALU' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('29/05/2016','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2016', 78, 260.520, 'MONACO' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('12/06/2016','%d/%m/%Y')  ,      
			'FORMULA 1 GRAND PRIX DU CANADA 2016', 70, 305.270, 'GILVIL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('19/06/2016','%d/%m/%Y')  ,      
			'2016 FORMULA 1 GRAND PRIX OF EUROPE', 51, 306.049, 'BAKU' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('03/07/2016','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS VON ÖSTERREICH 2016',  71,  307.146, 'REDBUL' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('10/07/2016','%d/%m/%Y')  ,     
			'2016 FORMULA 1 BRITISH GRAND PRIX', 52, 306.198, 'SILVER' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('24/07/2016','%d/%m/%Y')  ,      
			'FORMULA 1 MAGYAR NAGYDÍJ 2016', 70, 306.630, 'HUNGAR' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('31/07/2016','%d/%m/%Y')  ,      
			'FORMULA 1 GROSSER PREIS VON DEUTSCHLAND 2016', 67, 306.458, 'HOCKEN' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('28/08/2016','%d/%m/%Y')  ,      
			'2016 FORMULA 1 BELGIAN GRAND PRIX', 44, 308.052, 'SPAFRA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('04/09/2016','%d/%m/%Y')  ,      
			"FORMULA 1 GRAN PREMIO HEINEKEN D'ITALIA 2016", 53, 306.720, 'MONZA' );
INSERT INTO TCARRERA VALUES 
		(str_to_date('18/09/2016','%d/%m/%Y')  ,    
			'2016 FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX', 61, 308.828, 'SINGAP' );

INSERT INTO TCARRERA VALUES 
		(str_to_date('02/10/2016','%d/%m/%Y')  ,   
			'2016 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56, 310.408,	'SEPANG');		
INSERT INTO TCARRERA VALUES 
		(str_to_date('09/10/2016','%d/%m/%Y')  ,     
			'2016 FORMULA 1 EMIRATES JAPANESE GRAND PRIX', 53, 307.471, 'SUZUKA' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('23/10/2016','%d/%m/%Y')  ,     
			'2016 FORMULA 1 UNITED STATES GRAND PRIX', 56, 308.405, 'AUSTIN' );	
INSERT INTO TCARRERA VALUES 
		( str_to_date('30/10/2016','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE MÉXICO 2016', 71, 305.584, 'AHRODR' );
INSERT INTO TCARRERA VALUES 
		( str_to_date('13/11/2016','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PRÊMIO DO BRASIL 2016', 71, 305.909, 'JCPACE' );

INSERT INTO TCARRERA VALUES 
		( str_to_date('27/11/2016','%d/%m/%Y')  ,     
			'2016 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55, 305.355, 'YASMAR' );
 

/* *******************************************/			
/* *******************************************    2017     (20 CARRERAS)                  */			
 
SELECT " ************************ INSERTANDO CARRERAS 2017  " AS MENSAJE;
 

 INSERT INTO TCARRERA VALUES 
		( str_to_date('26/03/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574, 'ALBPAR' );

 INSERT INTO TCARRERA VALUES 
		( str_to_date('09/04/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 HEINEKEN CHINESE GRAND PRIX',  56, 305.066, 'SHANGH'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('16/04/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 GULF AIR BAHRAIN GRAND PRIX',  57, 308.238, 'BAHRAI' );

 INSERT INTO TCARRERA VALUES 
		( str_to_date('30/04/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 VTB RUSSIAN GRAND PRIX', 53 , 309.745 , 'SOCHI'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('14/05/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE ESPAÑA PIRELLI 2017', 66  , 307.104, 'CATALU'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('28/05/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2017', 78 , 260.286 , 'MONACO'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('11/06/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DU CANADA 2017', 70 ,305.27 , 'GILVIL'); 	
 
 INSERT INTO TCARRERA VALUES 
		( str_to_date('25/06/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 AZERBAIJAN GRAND PRIX', 51  , 306.049, 'BAKU'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('09/07/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GROSSER PREIS VON ÖSTERREICH 2017', 71 ,306.452 , 'REDBUL'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('16/07/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 ROLEX BRITISH GRAND PRIX', 52 ,306.198 , 'SILVER'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('30/07/2017','%d/%m/%Y')  ,     
			'FORMULA 1 PIRELLI MAGYAR NAGYDÍJ 2017', 70 , 306.63, 'HUNGAR'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('27/08/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 PIRELLI BELGIAN GRAND PRIX', 44 , 308.052, 'SPAFRA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('03/09/2017','%d/%m/%Y')  ,     
			"FORMULA 1 GRAN PREMIO HEINEKEN D'ITALIA 2017", 53 ,306.72 , 'MONZA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('17/09/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX', 61 , 308.828, 'SINGAP'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('01/10/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 PETRONAS MALAYSIA GRAND PRIX', 56  ,310.408 , 'SEPANG'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('08/10/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 JAPANESE GRAND PRIX', 53 ,  307.471, 'SUZUKA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('22/10/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 UNITED STATES GRAND PRIX',  56 , 308.405 , 'AUSTIN'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('29/10/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE MÉXICO 2017', 71 , 305.354, 'AHRODR'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('12/11/2017','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PRÊMIO HEINEKEN DO BRASIL 2017', 71 ,305.909 , 'JCPACE'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('26/11/2017','%d/%m/%Y')  ,     
			'2017 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55 ,  305.355, 'YASMAR'); 	




/* *******************************************/			
/* *******************************************    2018     ( 21 CARRERAS)                  */			
 
SELECT " ************************ INSERTANDO CARRERAS 2018  " AS MENSAJE;
 

 INSERT INTO TCARRERA VALUES 
		( str_to_date('25/03/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 ROLEX AUSTRALIAN GRAND PRIX', 58, 307.574, 'ALBPAR' );

 INSERT INTO TCARRERA VALUES 
		( str_to_date('08/04/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 GULF AIR BAHRAIN  GRAND PRIX',  57, 308.238, 'BAHRAI' );

 INSERT INTO TCARRERA VALUES 
		( str_to_date('15/04/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 HEINEKEN CHINESE GRAND PRIX',  56, 305.066, 'SHANGH'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('29/04/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 AZERBAIJAN GRAND PRIX', 51 , 306.049 , 'BAKU'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('13/05/2018','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE ESPAÑA EMIRATES 2018', 66  , 307.104, 'CATALU'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('27/05/2018','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX DE MONACO 2018', 78 , 260.286 , 'MONACO'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('10/06/2018','%d/%m/%Y')  ,     
			'FORMULA 1 GRAND PRIX HEINEKEN DU CANADA 2018', 70 ,305.27 , 'GILVIL'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('24/06/2018','%d/%m/%Y')  ,     
			'FORMULA 1 PIRELLI GRAND PRIX DE FRANCE 2018', 53  , 309.69, 'RICARD'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('01/07/2018','%d/%m/%Y')  ,     
			'FORMULA 1 EYETIME GROSSER PREIS VON ÖSTERREICH 2018', 71 ,306.452 , 'REDBUL'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('08/07/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 ROLEX BRITISH GRAND PRIX', 52 ,306.198 , 'SILVER'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('22/07/2018','%d/%m/%Y')  ,     
			'FORMULA 1 EMIRATES GROSSER PREIS VON DEUTSCHLAND 2018', 67 , 306.458, 'HOCKEN'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('29/07/2018','%d/%m/%Y')  ,     
			'FORMULA 1 ROLEX MAGYAR NAGYDÍJ 2018', 70 , 306.63, 'HUNGAR'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('26/08/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 JOHNNIE WALKER BELGIAN GRAND PRIX', 44 , 308.052, 'SPAFRA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('02/09/2018','%d/%m/%Y')  ,     
			"FORMULA 1 GRAN PREMIO HEINEKEN D'ITALIA 2018", 53 ,306.72 , 'MONZA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('16/09/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 SINGAPORE AIRLINES SINGAPORE GRAND PRIX', 61 , 308.706, 'SINGAP'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('30/09/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 VTB RUSSIAN GRAND PRIX', 53  ,309.745 , 'SOCHI'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('07/10/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 HONDA JAPANESE GRAND PRIX', 53 ,  307.471, 'SUZUKA'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('21/10/2018','%d/%m/%Y')  ,     
			'FORMULA 1 PIRELLI 2018 UNITED STATES GRAND PRIX',  56 , 308.405 , 'AUSTIN'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('28/10/2018','%d/%m/%Y')  ,     
			'FORMULA 1 GRAN PREMIO DE MÉXICO 2018', 71 , 305.354, 'AHRODR'); 	

 INSERT INTO TCARRERA VALUES 
		( str_to_date('11/11/2018','%d/%m/%Y')  ,     
			'FORMULA 1 GRANDE PRÊMIO HEINEKEN DO BRASIL 2018', 71 ,305.879 , 'JCPACE'); 	


 INSERT INTO TCARRERA VALUES 
		( str_to_date('25/11/2018','%d/%m/%Y')  ,     
			'FORMULA 1 2018 ETIHAD AIRWAYS ABU DHABI GRAND PRIX', 55 ,  305.355, 'YASMAR'); 	



/***************************************************************************************/

/* ******************************************************************************* */
/*
************************* P I L O T O S (58) *********************************************************
*/
SELECT " ************************ " AS MENSAJE;
SELECT " INSERTANDO (50) PILOTOS  " AS MENSAJE;
SELECT " ************************ " AS MENSAJE;


INSERT INTO TPILOTO VALUES 
		( 'Sebastian Vettel', 'ALEMANIA', str_to_date('3/07/1987','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Jenson Button', 'REINO UNIDO' , str_to_date('19/01/1980','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Mark Webber', 'AUSTRALIA', str_to_date('27/08/1976','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Fernando Alonso', 'ESPANA' , str_to_date('29/07/1981','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Lewis Hamilton', 'REINO UNIDO' , str_to_date('07/01/1985','%d/%m/%Y'));

INSERT INTO TPILOTO VALUES 
		( 'Felipe Massa', 'BRASIL' , str_to_date('25/04/1981','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Nico Rosberg', 'ALEMANIA', str_to_date('27/06/1985','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Michael Schumacher', 'ALEMANIA' , str_to_date('03/01/1969','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Adrian Sutil', 'ALEMANIA' , str_to_date('11/01/1983','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Vitaly Petrov', 'RUSIA', str_to_date('08/09/1984','%d/%m/%Y'));

INSERT INTO TPILOTO VALUES 
		( 'Nick Heidfeld', 'ALEMANIA', str_to_date('10/05/1977','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Kamui Kobayashi', 'JAPON', str_to_date('13/09/1986','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Paul di Resta', 'REINO UNIDO', str_to_date('16/04/1986','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Jaime Alguersuari', 'ESPANA', str_to_date('23/03/1990','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Sebastien Buemi'	,'SUIZA' , str_to_date('31/10/1988','%d/%m/%Y'));

INSERT INTO TPILOTO VALUES 
		( 'Sergio Perez', 'MEJICO', str_to_date('26/01/1990','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Rubens Barrichello'	, 'BRASIL', str_to_date('23/05/1972','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Bruno Senna'	, 'BRASIL' , str_to_date('15/10/1983','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Pastor Maldonado', 'VENEZUELA' , str_to_date('09/03/1985','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Pedro de la Rosa', 'ESPANA' , str_to_date('24/02/1971','%d/%m/%Y'));

INSERT INTO TPILOTO VALUES 
		( 'Jarno Trulli','ITALIA', str_to_date('13/07/1974','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Heikki Kovalainen', 'FINLANDIA', str_to_date('19/10/1981','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Vitantonio Liuzzi','ITALIA', str_to_date('06/08/1981','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Jerome d Ambrosio','BELGICA' , str_to_date('27/12/1985','%d/%m/%Y'));
INSERT INTO TPILOTO VALUES 
		( 'Timo Glock' , 'ALEMANIA', str_to_date('18/03/1982','%d/%m/%Y') );		

INSERT INTO TPILOTO VALUES 
		( 'Narain Karthikeyan','INDIA' , str_to_date('14/01/1977','%d/%m/%Y'));		
INSERT INTO TPILOTO VALUES 
		( 'Daniel Ricciardo', 'AUSTRALIA' , str_to_date('01/07/1989','%d/%m/%Y'));		
INSERT INTO TPILOTO VALUES 
		( 'Karun Chandhok','INDIA', str_to_date('19/01/1984','%d/%m/%Y') );		
INSERT INTO TPILOTO VALUES 
		( 'Kimi Raikkonen','FINLANDIA', str_to_date('17/10/1979','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Jean-Eric Vergne','FRANCIA', str_to_date('25/04/1990','%d/%m/%Y') );	

INSERT INTO TPILOTO VALUES 
		( 'Charles Pic','FRANCIA', str_to_date('15/02/1990','%d/%m/%Y') );		
INSERT INTO TPILOTO VALUES 
		( 'Romain Grosjean','FRANCIA ', str_to_date('17/04/1986','%d/%m/%Y') );			
INSERT INTO TPILOTO VALUES 
		( 'Nico Hulkenberg','ALEMANIA', str_to_date('19/08/1987','%d/%m/%Y') );			
INSERT INTO TPILOTO VALUES 
		( 'Esteban Gutierrez','MEJICO', str_to_date('05/08/1991','%d/%m/%Y') );			
INSERT INTO TPILOTO VALUES 
		( 'Valtteri Bottas','MEJICO', str_to_date('28/08/1989','%d/%m/%Y') );	

INSERT INTO TPILOTO VALUES 
		( 'Jules Bianchi','FRANCIA', str_to_date('03/08/1989','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Max Chilton','REINO UNIDO', str_to_date('21/04/1991','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Giedo van der Garde','HOLANDA', str_to_date('25/04/1985','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Marcus Ericsson','SUECIA', str_to_date('02/09/1990','%d/%m/%Y')  );	
INSERT INTO TPILOTO VALUES 
		( 'Kevin Magnussen','DINAMARCA', str_to_date('05/10/1992','%d/%m/%Y') );	

INSERT INTO TPILOTO VALUES 
		( 'Daniil Kvyat','RUSIA', str_to_date('26/04/1994','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Stoffel Vandoorne','BÉLGICA', str_to_date('26/03/1992','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Pierre Gasly','FRANCIA', str_to_date('07/02/1996','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Charles Leclerc','MÓNACO', str_to_date('16/10/1997','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Lance Stroll','CANADÁ', str_to_date('29/10/1998','%d/%m/%Y') );

INSERT INTO TPILOTO VALUES 
		( 'Brendon Hartley','NUEVA ZELANDA', str_to_date('10/11/1989','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Esteban Ocon','FRANCIA', str_to_date('17/09/1996','%d/%m/%Y') );
INSERT INTO TPILOTO VALUES 
		( 'Max Verstappen','HOLANDA', str_to_date('30/09/1997','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Sergey Sirotkin','RUSIA', str_to_date('27/08/1995','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Carlos Sainz','ESPAÑA', str_to_date('01/09/1994','%d/%m/%Y') );	

INSERT INTO TPILOTO VALUES 
		( 'Andre Lotterer','ALEMANIA', str_to_date('19/11/1981','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Will Stevens','REINO UNIDO', str_to_date('28/06/1991','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Roberto Merhi','ESPAÑA', str_to_date('22/03/1991','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Felipe Nasr','BRASIL', str_to_date('21/08/1992','%d/%m/%Y') );		
INSERT INTO TPILOTO VALUES 
		( 'Alexander Rossi','USA', str_to_date('25/09/1991','%d/%m/%Y') );

INSERT INTO TPILOTO VALUES 
		( 'Pascal Wehrlein','ALEMANIA', str_to_date('18/10/1994','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Rio Haryanto','INDONESIA', str_to_date('22/01/1993','%d/%m/%Y') );	
INSERT INTO TPILOTO VALUES 
		( 'Jolyon Palmer','REINO UNIDO', str_to_date('20/01/1991','%d/%m/%Y') );		
INSERT INTO TPILOTO VALUES 
		( 'Antonio Giovinazzi','ITALIA', str_to_date('14/12/1993','%d/%m/%Y') );		



/* ******************************************************************************* */

SELECT COUNT(*) AS TOTAL_CIRCUITOS FROM TCIRCUITO;
SELECT COUNT(*) AS TOTAL_CARRERAS FROM TCARRERA;
SELECT COUNT(*) AS TOTAL_PILOTOS FROM TPILOTO;
