CREATE TABLE PEDIDOS ( 
id_pedido	INT NOT NULL,
id_sucursal INT NOT NULL,
id_cliente	INT NOT NULL, 
fecha DATE,
fecha_de_envio	DATE,
PRIMARY KEY (id_pedido)) ;


CREATE TABLE PRODUCTOS ( 
id_producto	INT NOT NULL,
nombre_producto VARCHAR (60),
categoria_producto VARCHAR (60), 
precio float,
PRIMARY KEY (id_producto));

CREATE TABLE TABLA_INTERMEDIA_prod_ped
 ( 
id_ped_prod	INT NOT NULL,
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
PRIMARY KEY (id_producto)
);

CREATE TABLE SUCURSAL ( 
id_sucursal	INT NOT NULL,
nombre_sucursal VARCHAR (60),
gerente_sucursal VARCHAR (60), 
PRIMARY KEY (id_sucursal));

CREATE TABLE CLIENTES ( 
id_cliente	INT NOT NULL,
nombre_cliente VARCHAR (60),
mail VARCHAR (60), 
telefono INT,
direccion VARCHAR (60),
CP INT,
fecha_de_afiliacion DATE,
PRIMARY KEY (id_cliente));

insert into pedidos (
id_pedido,id_sucursal,id_cliente,fecha,fecha_de_envio
)
values 
(3,4,23,20230104,20231010),
(4,5,24,20231001,20230203);

insert into productos 
values 
(3,"lucas","prueba",20231010) ;

insert into sucursal 
values 
(1,"norte","lucas");

insert into tabla_intermedia_prod_ped
values 
(1.1,2,2);

insert into clientes 
values
(1,"lucas","lucasfarhat99@gm.com",6090229,"lamadrid 695",4000,20230203); 

create view Clientes_view as 
SELECT * FROM clientes;

create view pedidos_view as 
SELECT * FROM pedidos;

create view productos_view as 
SELECT * FROM productos;

create view sucursal_view as 
SELECT * FROM sucursal;

create view intermedia_view as 
SELECT * FROM tabla_intermedia_prod_ped;