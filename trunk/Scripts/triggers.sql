

create or replace trigger ActualizarProducto
  after update of entregada on Lineas_Comanda 
  for each row 

begin

  if :new.entregada > 0 then
    UPDATE Productos
      SET stock = stock - 1
      WHERE codigo = :new.codigo_producto;
  end if;
end;



create or replace trigger ComprobarMinimo
  after update of stock on Productos
  for each row

declare
  contador number(1) default 0;

begin

  SELECT 1 INTO contador FROM Productos_pedir WHERE codigo_producto = :old.codigo;

  if contador = 1 and :new.stock < :old.stock_minimo then

    INSERT INTO productos_pedir VALUES (:old.codigo);
  end if;
end;



create or replace trigger PrecioTickets
  after insert or update of precio on Lineas_Ticket
  for each row
declare

  nuevo_precio Tickets.total%TYPE;
begin

  nuevo_precio := :new.precio;

  if updating then
    nuevo_precio := nuevo_precio - :old.precio;
  end if;

  UPDATE Tickets
  SET total = total + nuevo_precio
  WHERE codigo = :new.codigo_ticket;
end;



create or replace trigger PrecioPedido
  after insert or update of precio on Lineas_Pedido
  for each row
declare

  nuevo_precio Pedidos.precio_total%TYPE;
begin

  nuevo_precio := :new.precio;

  if updating then
    nuevo_precio := nuevo_precio - :old.precio;
  end if;

  UPDATE Pedidos
  SET precio_total = precio_total + nuevo_precio
  WHERE codigo = :new.codigo_pedido;
end;
