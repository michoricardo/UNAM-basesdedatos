UPDATE productos SET nombre = "champu", cantidad = 15 WHERE id=1;
select * from productos where precio > 50 and cantidad < 15;
select * from productos WHERE precio > 50 or cantidad < 10
EXPLAIN SELECT * FROM productos WHERE sku = 'sh100'
CREATE INDEX indice1 ON productos (sku);
EXPLAIN SELECT * FROM productos WHERE sku = 'AC100';