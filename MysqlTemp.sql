create database if not exists mysql_seminario2_202003894;
use mysql_seminario2_202003894;

drop table if exists tempCompras;
create table tempCompras(
fecha varchar(10),
codProv varchar(10),
nombreProv varchar(100),
dirProv varchar(170),
numeroProv varchar(20),
webProv varchar(1),
codProd varchar(10),
nombreProd varchar(100),
marcaProd varchar(50),
categoriaProd varchar(20),
codSucursal varchar(10),
nombreSucursal varchar(150),
dirSucursal varchar(150),
regionSucursal varchar(150),
departamento varchar(70),
cantUnidades varchar(20),
costoUnidades varchar(20)
);

drop table if exists tempVentas;
create table tempVentas(
fecha varchar(10),
codClient varchar(10),
nombreClient varchar(100),
tipoClient varchar(15),
dirClient varchar(170),
numeroClient varchar(20),
codVend varchar(10),
nombreVend varchar(100),
vacacionista varchar(5),
codProd varchar(10),
nombreProd varchar(100),
marcaProd varchar(50),
categoriaProd varchar(20),
codSucursal varchar(10),
nombreSucursal varchar(150),
dirSucursal varchar(150),
regionSucursal varchar(150),
departamento varchar(70),
unidades varchar(20),
precioU varchar(20)
);

select * from tempCompras;
select * from tempVentas;
select count(*) from tempCompras;
select count(*) from tempVentas;