Create database mekatario ; 
use mekatario; 


create table Clientes_de_lamerica (
Id_usuario int primary key, 
Nombre_de_clinte varchar(100),
Numero_telefonico Varchar(20) , 
Correo_electronico varchar(50), 
Direccion varchar(100),
Fecha_de_nacimiento date, 
Productos_que_compra varchar(500),
Cantidad_De_productos int );


create table pedidos_en_proceso(
Id_pedido int primary key, 
Id_usuario int, 
Fecha_de_pedido date ,
Estado_de_pedido varchar(50),
Detalles_de_pedido varchar(200), 
Costo_pedido decimal (10,2), 
constraint clientes_pedidos foreign key (Id_usuario) references Clientes_de_lamerica(Id_usuario)
);


Create table Ventas_de_lamerica (
Id_venta int primary key, 
Id_usuario int, 
Id_pedido int, 
Id_Bodega int,
Id_inventario int, 
Costo_pedido decimal (10,2) , 
Metodo_pago varchar (100), 
Id_pago int,
constraint pedidos_ventas foreign key (Id_pedido) references pedidos_en_proceso(Id_pedido)
);



create table Bodega_lamerica (
Id_bodega int primary key, 
Ubicacion varchar (100),
Capacidad_de_productos int, 
Productos int, 
Nombre_de_encargado varchar(100),
Id_empleado int,
Id_pedido int,
constraint bodega_pedido foreign key (Id_pedido) references pedidos_en_proceso(Id_pedido)

);  

create table inventario_de_lamerica (
Id_inventario int primary key, 
Id_pedidos int, 
Id_productos int, 
Numero_de_productos int, 
Fecha_de_ingreso_de_productos date, 
Fecha_de_vencimiento_de_productos date , 
constraint bodega_inventario foreign key (Id_pedidos) references Bodega_lamerica(Id_bodega)


);


create table Proveedores_lamerica (
Id_proveedor int primary key , 
Nombre_proveedor varchar (100), 
Telefono varchar (20), 
Ubicacion_proveedor varchar(100),
Productos int,
Id_productos int,
Precio_productos decimal (10,2),
Id_pedido int,
constraint proveedores_inventario foreign key (Id_productos) references inventario_de_lamerica(Id_inventario),
constraint proveedores_bodega foreign key (Id_pedido) references Bodega_lamerica(Id_pedido)
);


create table empleados_lamerica (
Id_empleado int primary key, 
documento_de_identidad varchar(20),
Cargo_empleado varchar(50),
Nombre_empleado varchar(50),
Apellido_empleado varchar(50),
Correo_de_empleado varchar(50),
Direccion_empleado varchar (50), 
Id_bodega int, 
Ubicacion_de_bodega varchar (50), 
constraint bodega_empleado foreign key (Id_empleado) references Bodega_lamerica(Id_bodega)
);


create table envios_lamerica (
Id_envio int primary key,
Fecha_envio date, 
Numero_de_guia int, 
Ciudad_de_salida varchar(100), 
Ciudad_de_destino varchar (100),
Id_venta int, 
Id_pedido int, 
Empresa_de_transporte varchar (100), 
constraint envios_ventas foreign key (Id_envio) references ventas_de_lamerica (Id_venta)
);