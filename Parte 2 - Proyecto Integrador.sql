CREATE TABLE Categoria(
  id INTEGER PRIMARY KEY NOT NULL,
  nombre TEXT
  );

CREATE TABLE Producto(
  id INTEGER PRIMARY KEY NOT NULL,
  nombre TEXT,
  marca TEXT,
  categoria_id TEXT,
  precio_unitario INT
  );

CREATE TABLE Sucursal (
id INTEGER PRIMARY KEY NOT NULL,
nombre TEXT,
direccion TEXT
);

CREATE TABLE Stock (
  id INTEGER PRIMARY KEY NOT NULL,
  sucursal_id TEXT,
  producto_id TEXT,
  cantidad INT,
  UNIQUE (sucursal_id, producto_id)
  );
 

CREATE TABLE Cliente (
  id INTEGER PRIMARY KEY NOT NULL,
  nombre TEXT,
  telefono INT
);

CREATE TABLE Orden(
  id INTEGER PRIMARY KEY NOT NULL,
  cliente_id TEXT,
  sucursal_id TEXT,
  fecha DATE, 
  total INT
 );

 
CREATE TABLE Item (
  id INTEGER PRIMARY KEY NOT NULL,
  orden_id TEXT,
  producto_id TEXT,
  cantidad INT,
  monto_venta INT
);