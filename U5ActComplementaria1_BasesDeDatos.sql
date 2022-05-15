DELIMITER $$
CREATE OR REPLACE PROCEDURE realiza_compra (in p_cliente_id int, in p_producto_id int, in p_cantidad int)
BEGIN
start transaction;
    -- update productos set productos.cantidad = productos.cantidad - p_cantidad where productos.id = p_producto_id;
    insert into ordenes (cliente_id, producto_id, cantidad) VALUES (p_cliente_id,p_producto_id,p_cantidad);
    commit;
END $$
DELIMITER ;

select * from productos;

call realiza_compra(1,6,4);

select * from productos where productos.id=6;

call realiza_compra(1,6,70);
