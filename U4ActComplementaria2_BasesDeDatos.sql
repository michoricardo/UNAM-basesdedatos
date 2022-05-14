DELIMITER //
CREATE TRIGGER comparador BEFORE INSERT ON ordenes FOR EACH ROW
BEGIN
    DECLARE cantidad_inv int;
    DECLARE cantidad_ord int;
    DECLARE comparacion int;

    set cantidad_ord = (select cantidad from ordenes where id=NEW.id);
    set cantidad_inv = (select cantidad from productos where productos.id=NEW.producto_id);
    set comparacion = cantidad_inv - cantidad_ord;
    if comparacion < 0 then
        signal sqlstate '45000';
    else
        update productos set productos.cantidad = productos.cantidad - NEW.cantidad where productos.id=NEW.producto_id;
    end if;
END; //
DELIMITER ;

select id,cantidad,nombre,descripcion from productos;

insert into ordenes(cliente_id, producto_id, cantidad) VALUES (10,14,23);
insert into ordenes(cliente_id, producto_id, cantidad) VALUES (10,14,21);

select id,cantidad,nombre,descripcion from productos where productos.id =14;