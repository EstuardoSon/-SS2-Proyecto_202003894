create database seminario2_202003894;
use seminario2_202003894;

drop table factCompra;
drop table factVenta;
drop table dimFecha;
drop table dimCliente;
drop table dimDepartamento;
drop table dimProducto;
drop table dimProveedor;
drop table dimRegion;
drop table dimSucursal;
drop table dimVendedor;


create table dimFecha(
idFecha int identity(1,1) primary key,
anio int,
mes int,
dia int
);

create table dimProveedor(
idProveedor int identity(1,1) primary key,
codProv varchar(10),
nombreProv varchar(100),
dirProv varchar(170),
numeroProv int,
webProv varchar(2)
);

create table dimProducto(
idProducto int identity(1,1) primary key,
codProd varchar(10),
nombreProd varchar(100),
marcaProd varchar(50),
categoriaProd varchar(20)
);

create table dimUbicacion(
idUbicacion int identity(1,1) primary key,
region varchar(150),
departamento varchar(70)
);

create table dimSucursal(
idSucursal int identity(1,1) primary key,
idDepa int,
idRegion int,
codSucursal varchar(10),
);

create table factCompra(
idCompra int identity(1,1) primary key,
idFecha int,
idProducto int,
idProveedor int,
idSucursal int,
idUbicacion int,
cantUnidades float(2),
costoUnidad float(2),
foreign key (idFecha) references dimFecha(idFecha),
foreign key (idProducto) references dimProducto(idProducto),
foreign key (idProveedor) references dimProveedor(idProveedor),
foreign key (idSucursal) references dimSucursal(idSucursal),
foreign key (idUbicacion) references dimUbicacion(idUbicacion)
);

create table dimVendedor(
idVendedor int identity(1,1) primary key,
codVend varchar(10),
nombreVend varchar(100),
vacacionista varchar(5)
);

create table dimCliente(
idCliente int identity(1,1) primary key,
codClient varchar(10),
nombreClient varchar(100),
tipoClient varchar(15),
dirClient varchar(170),
numeroClient int
);

create table factVenta(
idVenta int identity(1,1) primary key,
idFecha int,
idCliente int,
idVendedor int,
idProducto int,
idSucursal int,
idUbicacion int,
cantUnidades float(2),
costoUnidad float(2),
foreign key (idFecha) references dimFecha(idFecha),
foreign key (idCliente) references dimCliente(idCliente),
foreign key (idProducto) references dimProducto(idProducto),
foreign key (idVendedor) references dimVendedor(idVendedor),
foreign key (idSucursal) references dimSucursal(idSucursal),
foreign key (idUbicacion) references dimUbicacion(idUbicacion)
);

select * from dimFecha order by anio desc;
select * from dimProveedor;
select * from dimProducto;
select * from dimUbicacion;
select * from dimSucursal;
select * from factCompra;
select * from dimVendedor;
select * from dimCliente;
select * from factVenta;