create database bugsbunny;
use bugsbunny;
create table bitacoras(
	id int PRIMARY KEY IDENTITY(1,1),
	nombre varchar (100),
	fecha date,
	peso DECIMAL(5,2),
	comportamiento VARCHAR(100),
    observaciones VARCHAR(100)
);

CREATE PROCEDURE sp_registro_bitacoras 
    @nombres varchar(100),
    @fechas date,
    @pesos DECIMAL(5,2),
    @comportamientos VARCHAR(100),
    @observaciones VARCHAR(100)
AS 
BEGIN
    INSERT INTO bitacoras (nombre, fecha, peso, comportamiento, observaciones) 
    VALUES (@nombres, @fechas, @pesos, @comportamientos, @observaciones);
END;

select * from bitacoras

SELECT @@SERVERNAME;