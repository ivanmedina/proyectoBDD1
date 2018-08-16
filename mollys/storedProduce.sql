CREATE OR REPLACE
PROCEDURE "BAJA"(NOM number,FECHA date ) 
AS

BEGIN
 
  UPDATE CUENTA SET FECHABAJA= TO_DATE(FECHA,'DD/MM/YYYY') WHERE NOCUENTA=NOM;
  UPDATE CUENTA SET LIMCREDITO =0 WHERE NOCUENTA=NOM;
  UPDATE CUENTA SET SALDO =0 WHERE NOCUENTA=NOM;
 
END "BAJA";
