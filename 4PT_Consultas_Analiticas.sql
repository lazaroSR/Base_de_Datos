--- Realiza un bulk insert para rellenar las tablas

insert into categoria (nombre) values 
	('Electronicos'),
	('Ropa'),
	('Hogar'),
	('Deportes'),
	('Juguetes');

insert into producto (nombre, marca, categoria_id, precio_unitario) values 
	('Televisor',	'Sony',	1,	1000),
	('Laptop',	'HP',	1,	800),
	('Camisa',	'Zara',	2,	50),
	('Pantalón',	'Levi s',	2,	70),
	('Sartén',	'T-fal',	3,	30),
	('Toalla',	'Cannon', 3, 20),
	('Pelota',	'Nike',	4,	15),
	('Raqueta',	'Wilson',	4,	50),
	('Muñeca',	'Barbie',	5,	25),
	('Carro',	'Hot Wheels',	5,	10);

insert into sucursal (nombre, direccion) values 
	('SUCURSAL A', 'CALLE 1'),
	('SUCURSAL B', 'CALLE 2'),
	('SUCURSAL C', 'CALLE 3');

insert into clientes  (nombre, telefono) values 
	('Juan', 1234567890),
	('Maria', 0987654321),
	('Pedro', 5555555555);


insert into ordenes  (cliente_id, sucursal_id, fecha, total) values 
	(1, 3, '2023-06-12',575),
	(2, 1, '2023-06-12',705),
	(3, 3, '2023-06-12',9000),
	(2, 3, '2023-06-12',10400),
	(3, 3, '2023-06-12',85),
	(1, 1, '2023-06-12',830),
	(1, 1, '2023-06-12',490),
	(3, 3, '2023-06-12',16100),
	(3, 2, '2023-06-12',680),
	(2, 1, '2023-06-12',7525),
	(2, 3, '2023-06-12',725),
	(3, 1, '2023-06-12',11430),
	(3, 3, '2023-06-12',4900),
	(3, 3, '2023-06-12',5490),
	(1, 1, '2023-06-12',420);

insert into stock (id, sucursal_id, producto_id, cantidad) values
	(1,	1,	1,	65), (2,	1,	2,	71), (3,	1,	3,	8),
	(4,	1,	4,	42), (5,	1,	5,	61), (6,	1,	6,	14),
	(7,	1,	7,	70), (8,	1,	8,	66), (9,	1,	9,	13),
	(10,	1,	10,	68), (11,	2,	1,	14), (12,	2,	2,	67),
	(13,	2,	3,	74), (14,	2,	4,	32), (15,	2,	5,	75),
	(16,	2,	6,	37), (17,	2,	7,	14), (18,	2,	8,	42),
	(19,	2,	9,	51),(20,	2,	10,	41),(21,	3,	1,	59),
	(22,	3,	2,	98),(23,	3,	3,	52),(24,	3,	4,	85),
	(25,	3,	5,	31),(26,	3,	6,	17),(27,	3,	7,	13),
	(28,	3,	8,	18),(29,	3,	9,	76),(30,	3,	10,	1);

insert into item  (id, orden_id , producto_id, cantidad, monto_venta) values
	(1, 1,	9,	7,	175), (2, 1,	8,	8,	400), (6, 2, 9,	3,	75),
	(7, 2,	5,	9,	270), (8, 2, 5,	10,	300), (9, 2, 6,	3,	60),
	(11, 3,	1,	9,	9000), (16, 4,	1,	4,	4000), (17, 4,	2,	8,	6400),
	(21, 5,	6,	2,	40), (22, 5,	7,	3,	45), (26, 6,	4,	9,	630),
	(27,	6,	9,	4, 100), (28, 6,	3,	2,	100), (31, 7,	5,	8,	240),
	(32, 7,	9,	6,	150), (33, 7,	8,	2,	100), (36, 8,	1,	6,	6000),
	(37, 8,	1,	10,	10000),(38, 8,	3,	2,	100),(41,	9,	8,	9, 450),
	(42,	9,	3,	3, 150),(43,	9,	7,	2, 30),(44, 9,	10,	5,	50),
	(46, 10, 9,	9,	225),(47, 10,	1,	7,	7000),(48, 10,	3,	6,	300),
	(51, 11,	7,	5,	75),(52,	11,	9,	8, 200),(53, 11,	3,	9,	450),
	(56, 12,	2,	7,	5600),(57,	12,	1,	5, 5000),(58,12,6,9,180),
	(59,12,8,9,450),(60,12,8,4,200),(61,13,9,4,100),
	(62,13,2,6,4800),(66,14,1,5,5000),(67,14,4,7,490),
	(71,15,9,6,150),(72,15,5,9,270);

--Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.
select min(precio_unitario) as precio_minimo, max(precio_unitario) as precio_maximo, avg(precio_unitario) as precio_promedio  
from producto p ;

-- Calcular la cantidad total de productos en stock por sucursal.
select sucursal_id , count(producto_id) as cantidad_total
from stock s 
group by sucursal_id
order by sucursal_id asc;

--Obtener el total de ventas por cliente.
select cliente_id, sum(total) as total_ventas
from  ordenes o 
group by cliente_id
order by cliente_id asc;




















