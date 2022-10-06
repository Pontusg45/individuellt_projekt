-- Skapa databas
-- CREATE DATABASE skolan;
CREATE DATABASE
IF NOT EXISTS vaccination;

-- Välj vilken databas du vill använda
USE eshop;

-- -- Skapa användaren med en bakåtkompatibel lösenordsalgoritm.
CREATE USER
IF NOT EXISTS 'user'@'%'
	IDENTIFIED
WITH mysql_native_password
	BY 'pass'
;

-- Ge användaren alla rättigheter på samtliga databaser.
GRANT ALL PRIVILEGES
    ON vaccination.*
    TO 'user'@'%'
;

-- Visa vad en användare kan göra mot vilken databas.
SHOW GRANTS FOR 'user'@'%';
