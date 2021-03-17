CREATE DATABASE base1; #crear base de datos
SHOW DATABASES; #mostrar todas las bases de datos, para esto sombreo SHOW DATABASE y lo ejecuto
SHOW TABLES; #este comando me muestra las tablas que tengo hasta el momento
DROP DATABASE test; #sirve para borrar algo
USE base1; #siempre tengo que seleccionar base de datos
CREATE TABLE autos( #asi creo una tabla
patente varchar(10) not null, #not null no me permite que deje ese espacio en blanco
modelo varchar(20),
color varchar(20),
cantidadderuedas int #aca no pongo coma
);
DESCRIBE autos; #este comando me sirve por si yo borre el codigo y quiero saber que escribi en esa columna
DROP TABLE personas; #con este comando elimino una tabla
#PRIMARY KEY; son datos que no se repiten, pero puede haber mas de uno en una misma tabla
INSERT INTO autos ( #y asi sucesivamente voy guardando datos
patente,modelo
) VALUES ( #aqui va los valores que voy a guardar
'pdx563','ford' #no pongo coma porque no tengo mas datos
);
SELECT *FROM autos; #con este comando veo lo que estuve haciendo hasta el momento
CREATE DATABASE Laboratorio;
USE Laboratorio;
CREATE TABLE Facturas(
letra char not null,
numero int,
clienteId int, #esto significa que es entero
articuloId int,
fecha date,
monto double,
PRIMARY KEY(letra,numero) 
);
DESCRIBE Facturas;
INSERT INTO Facturas(
letra,numero,clienteId,articuloId,fecha,monto
)VALUES(
'M',123,1,9,'2020-07-16',20.2 #en fecha puse comillas simples por los guiones
);
CREATE TABLE Articulos(
articuloId int,
nombre varchar(50),
precio double,
stock int,
PRIMARY KEY(articuloId)
);
DESCRIBE Articulos;
CREATE TABLE Clientes(
clienteId int,
nombre varchar(50),
apellido varchar(50),
cuil char(16),
direccion varchar(50),
comentarios varchar(50),
PRIMARY KEY(clienteId) 
);
SHOW TABLES;
DESCRIBE Clientes;
SELECT *FROM Facturas; #con este comando puedo ir viendo como va quedando la tabla hasta el momento
INSERT INTO Facturas(
letra,numero,clienteId,articuloId,fecha,monto
)VALUES(
'M',123,1,9,'2020-07-16',20.2 #en fecha puse comillas simples por los guiones
); #podemos copiar y pegar tambien si queremnos
