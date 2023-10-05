-- Realizar consulta analíticas

-- 1. Calcular el precio promedio de los productos en cada categoría
select  c.nombre as nombre_categoria, avg(p.precio_unitario) as precio_promedio_productos
from categoria c 
join producto p on c.id = p.categoria_id 
group by c.id , c.nombre 
order by precio_promedio_productos asc ;

-- 2. Obtener la cantidad total de productos en stock por categoría
select p.nombre as nombre_producto, sum(s.cantidad) as cantidad_total
from stock s 
join producto p on p.id = s.producto_id 
join categoria c on c.id  = p.categoria_id 
group by p.nombre ;

-- 3. Calcular el total de ventas por sucursal
select s.nombre as nombre_sucursal, sum(i.monto_venta) as total_ventas 
from item i 
join ordenes o on o.id = i.orden_id 
join sucursal s on s.id = o.sucursal_id  
group by s.nombre 
order by total_ventas ;

-- 4. Obtener el cliente que ha realizado el mayor monto de compras
select c.nombre , sum(o.total) as total_compras
from clientes c 
join ordenes o on c.id = o.cliente_id 
group by c.id, c.nombre 
order by total_compras desc 
limit 1; 





