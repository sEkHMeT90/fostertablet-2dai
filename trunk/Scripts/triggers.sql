

create or replace trigger ActualizarPedido
  after insert or update of recibido on Pedidos
  for each row
declare
  CURSOR lineasPedido IS Select * from lineas_Pedido where codigo_pedido = :new.codigo;
begin

  if :new.recibido > 0 then
    for linea in lineasPedido loop

      update productos
        set stock = stock + linea.cantidad
        where codigo = linea.codigo_producto;
    end loop;
  end if;
end;




create or replace trigger ActualizarComanda
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
    nuevo_precio := to_char(to_number(nuevo_precio) - to_number(:old.precio));
  end if;

  UPDATE Tickets
  SET total = to_char(to_number(total) + to_number(nuevo_precio))
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
    nuevo_precio := to_char(to_number(nuevo_precio) - to_number(:old.precio));
  end if;

  UPDATE Pedidos
  SET precio_total = to_char(to_number(precio_total) + to_number(nuevo_precio))
  WHERE codigo = :new.codigo_pedido;
end;



