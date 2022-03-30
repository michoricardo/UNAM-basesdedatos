INSERT INTO productos (nombre, descripcion, precio, cantidad, sku)
 VALUES ("shampoo","Shampoo de cabello 100 ml",70.5,10,"sh100"),
       ("jabon","Jabon neutro 50 gr",15,10,"jab50"),
       ("salsa","Salsa verde 250 ml",13.75,10,"salv250"),
       ("cafe","Cafe oso sabroso 100 gr",50.50,10,"cafoso100"),
       ("manzana","Manzana golden 10 pcs",80,10,"mang10");


UPDATE productos SET nombre = "champu", cantidad = 15 WHERE id=1;

select * from productos where precio > 50 and cantidad < 15;

select * from productos WHERE precio > 50 or cantidad < 10