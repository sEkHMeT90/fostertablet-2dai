/*
    Script de creación de paquetes de gestión de las tablas
    Hecho por Raquel Lloréns Gambín y Andrés Marotta
*/

-- GESTIÓN DE MESAS
CREATE OR REPLACE PACKAGE GestionMesas
AS
    FUNCTION Insertar RETURN NUMBER;
    FUNCTION Borrar(mesa MESAS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(mesa MESAS.CODIGO%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionMesas
AS
    -- INSERTAR MESA 
    FUNCTION Insertar RETURN NUMBER
    IS
    BEGIN
        INSERT INTO MESAS VALUES(SecMesas.NextVal, 1);       
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN            
            RETURN 0;
    
    END Insertar;

    -- BORRAR MESA
    FUNCTION Borrar(mesa MESAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM MESAS
        WHERE codigo = mesa;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END Borrar;

    -- MODIFICAR MESA
    FUNCTION Modificar(mesa MESAS.CODIGO%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE MESAS
        SET codigo_estado = estado
        WHERE codigo = mesa;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
END;

-- GESTIÓN DE ESTADOS DE MESA
CREATE OR REPLACE PACKAGE GestionEstadosMesa
AS
    FUNCTION Insertar(nombre ESTADOS_MESA.NOMBRE%TYPE) RETURN NUMBER;
    FUNCTION Borrar(estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(nombre_nuevo ESTADOS_MESA.NOMBRE%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionEstadosMesa
AS    
    -- INSERTAR ESTADO DE MESA 
    FUNCTION Insertar(nombre ESTADOS_MESA.NOMBRE%TYPE) RETURN NUMBER
    IS
    BEGIN        
        INSERT INTO ESTADOS_MESA VALUES(SecEstadosMesa.NextVal, nombre);
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR ESTADO DE MESA 
    FUNCTION Borrar(estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM ESTADOS_MESA WHERE codigo = estado;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR ESTADO DE MESA 
    FUNCTION Modificar(nombre_nuevo ESTADOS_MESA.NOMBRE%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE ESTADOS_MESA
        SET nombre = nombre_nuevo
        WHERE codigo = estado;
                          
        COMMIT;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Modificar;
END;

-- GESTIÓN DE CATEGORIAS
CREATE OR REPLACE PACKAGE GestionCategorias
AS
    FUNCTION Insertar(nombre CATEGORIAS.NOMBRE%TYPE, activo CATEGORIAS.ACTIVO%TYPE) RETURN NUMBER;
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(nombre_nuevo CATEGORIAS.NOMBRE%TYPE, activo_nuevo CATEGORIAS.ACTIVO%TYPE, categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionCategorias
AS
    -- INSERTAR CATEGORIAS 
    FUNCTION Insertar(nombre CATEGORIAS.NOMBRE%TYPE, activo CATEGORIAS.ACTIVO%TYPE) RETURN NUMBER
    IS
    BEGIN
        INSERT INTO CATEGORIAS VALUES(SecCategorias.NextVal, nombre, activo);
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR CATEGORIAS
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM CATEGORIAS WHERE codigo = categoria;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR CATEGORIAS
    FUNCTION Modificar(nombre_nuevo CATEGORIAS.NOMBRE%TYPE, activo_nuevo CATEGORIAS.ACTIVO%TYPE, categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE CATEGORIAS
        SET nombre = nombre_nuevo, activo = activo_nuevo
        WHERE codigo = categoria;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
END;

-- GESTIÓN DE SUBCATEGORIAS
CREATE OR REPLACE PACKAGE GestionSubCategorias
AS
    FUNCTION Insertar(categoria CATEGORIAS.CODIGO%TYPE, nombre SUBCATEGORIAS.NOMBRE%TYPE, activo SUBCATEGORIAS.ACTIVO%TYPE) RETURN NUMBER;
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(categoria CATEGORIAS.CODIGO%TYPE, nombre_nuevo SUBCATEGORIAS.NOMBRE%TYPE, activo_nuevo SUBCATEGORIAS.ACTIVO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionSubCategorias
AS
    -- INSERTAR CATEGORIAS 
    FUNCTION Insertar(categoria CATEGORIAS.CODIGO%TYPE, nombre SUBCATEGORIAS.NOMBRE%TYPE, activo SUBCATEGORIAS.ACTIVO%TYPE) RETURN NUMBER
    IS
        codigo_subcategoria SUBCATEGORIAS.CODIGO%TYPE;
    BEGIN
        SELECT MAX(codigo) INTO codigo_subcategoria
        FROM SUBCATEGORIAS
        WHERE codigo_categoria = categoria;
        
        codigo_subcategoria := NVL(codigo_subcategoria, 0) + 1; 
    
        INSERT INTO SUBCATEGORIAS VALUES(codigo_subcategoria, categoria, nombre, activo);
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR CATEGORIAS
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM SUBCATEGORIAS WHERE codigo = subcategoria AND codigo_categoria = categoria;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR CATEGORIAS
    FUNCTION Modificar(categoria CATEGORIAS.CODIGO%TYPE, nombre_nuevo SUBCATEGORIAS.NOMBRE%TYPE, activo_nuevo SUBCATEGORIAS.ACTIVO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE SUBCATEGORIAS
        SET nombre = nombre_nuevo, activo = activo_nuevo
        WHERE codigo = subcategoria AND codigo_categoria = categoria;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
END;

-- GESTIÓN DE PRODUCTOS
CREATE OR REPLACE PACKAGE GestionProductos
AS
    FUNCTION Insertar(nombre PRODUCTOS.NOMBRE%TYPE, descripcion PRODUCTOS.DESCRIPCION%TYPE, precio_coste PRODUCTOS.PRECIO_COSTE%TYPE, pvp PRODUCTOS.PVP%TYPE, calorias PRODUCTOS.CALORIAS%TYPE, codigo_subcategoria PRODUCTOS.CODIGO_SUBCATEGORIA%TYPE, codigo_categoria PRODUCTOS.CODIGO_CATEGORIA%TYPE, stock PRODUCTOS.STOCK%TYPE, stock_minimo PRODUCTOS.STOCK_MINIMO%TYPE, codigo_tipo_iva PRODUCTOS.CODIGO_TIPO_IVA%TYPE, activo PRODUCTOS.ACTIVO%TYPE) RETURN NUMBER;
    FUNCTION Borrar(producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(nombre_nuevo PRODUCTOS.NOMBRE%TYPE, descripcion_nueva PRODUCTOS.DESCRIPCION%TYPE, precio_coste_nuevo PRODUCTOS.PRECIO_COSTE%TYPE, pvp_nuevo PRODUCTOS.PVP%TYPE, calorias_nuevas PRODUCTOS.CALORIAS%TYPE, codigo_subcategoria_nuevo PRODUCTOS.CODIGO_SUBCATEGORIA%TYPE, codigo_categoria_nuevo PRODUCTOS.CODIGO_CATEGORIA%TYPE, stock_nuevo PRODUCTOS.STOCK%TYPE, stock_minimo_nuevo PRODUCTOS.STOCK_MINIMO%TYPE, codigo_tipo_iva_nuevo PRODUCTOS.CODIGO_TIPO_IVA%TYPE, activo_nuevo PRODUCTOS.ACTIVO%TYPE, producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER;               
    FUNCTION InsertarGuarnicion(codigo_producto PRODUCTOS.CODIGO%TYPE, codigo_guarnicion PRODUCTOS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionProductos
AS
    -- INSERTAR PRODUCTOS 
    FUNCTION Insertar(nombre PRODUCTOS.NOMBRE%TYPE, descripcion PRODUCTOS.DESCRIPCION%TYPE, precio_coste PRODUCTOS.PRECIO_COSTE%TYPE, pvp PRODUCTOS.PVP%TYPE, calorias PRODUCTOS.CALORIAS%TYPE, codigo_subcategoria PRODUCTOS.CODIGO_SUBCATEGORIA%TYPE, codigo_categoria PRODUCTOS.CODIGO_CATEGORIA%TYPE, stock PRODUCTOS.STOCK%TYPE, stock_minimo PRODUCTOS.STOCK_MINIMO%TYPE, codigo_tipo_iva PRODUCTOS.CODIGO_TIPO_IVA%TYPE, activo PRODUCTOS.ACTIVO%TYPE) RETURN NUMBER
    IS
    BEGIN        
        INSERT INTO PRODUCTOS
        VALUES(SecProductos.NextVal, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo);

        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR PRODUCTOS
    FUNCTION Borrar(producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM PRODUCTOS WHERE codigo = producto;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR PRODUCTOS
    FUNCTION Modificar(nombre_nuevo PRODUCTOS.NOMBRE%TYPE, descripcion_nueva PRODUCTOS.DESCRIPCION%TYPE, precio_coste_nuevo PRODUCTOS.PRECIO_COSTE%TYPE, pvp_nuevo PRODUCTOS.PVP%TYPE, calorias_nuevas PRODUCTOS.CALORIAS%TYPE, codigo_subcategoria_nuevo PRODUCTOS.CODIGO_SUBCATEGORIA%TYPE, codigo_categoria_nuevo PRODUCTOS.CODIGO_CATEGORIA%TYPE, stock_nuevo PRODUCTOS.STOCK%TYPE, stock_minimo_nuevo PRODUCTOS.STOCK_MINIMO%TYPE, codigo_tipo_iva_nuevo PRODUCTOS.CODIGO_TIPO_IVA%TYPE, activo_nuevo PRODUCTOS.ACTIVO%TYPE, producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE PRODUCTOS
        SET nombre = nombre_nuevo, descripcion = descripcion_nueva, precio_coste = precio_coste_nuevo, pvp = pvp_nuevo, calorias = calorias_nuevas, codigo_subcategoria = codigo_subcategoria_nuevo, codigo_categoria = codigo_categoria_nuevo, stock = stock_nuevo, stock_minimo = stock_minimo_nuevo, codigo_tipo_iva = codigo_tipo_iva_nuevo, activo = activo_nuevo 
        WHERE codigo = producto;
        
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
    -- INSERTAR GUARNICIONES
    FUNCTION InsertarGuarnicion(codigo_producto PRODUCTOS.CODIGO%TYPE, codigo_guarnicion PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        INSERT INTO GUARNICIONES VALUES(codigo_producto, codigo_guarnicion);
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END InsertarGuarnicion;
END;

-- GESTIÓN DE PEDIDOS
CREATE OR REPLACE PACKAGE GestionPedidos
AS
    FUNCTION Insertar(cif PEDIDOS.CIF_PROVEEDOR%TYPE, fecha PEDIDOS.FECHA%TYPE, precio_total PEDIDOS.PRECIO_TOTAL%TYPE, recibido PEDIDOS.RECIBIDO%TYPE) RETURN NUMBER;
    FUNCTION Borrar(pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Modificar(fecha_nueva PEDIDOS.FECHA%TYPE, cif_nuevo PEDIDOS.CIF_PROVEEDOR%TYPE, precio_total_nuevo PEDIDOS.PRECIO_TOTAL%TYPE, recibido_nuevo PEDIDOS.RECIBIDO%TYPE, pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION InsertarLinea(pedido PEDIDOS.CODIGO%TYPE, producto PRODUCTOS.CODIGO%TYPE, precio PRODUCTOS.PRECIO_COSTE%TYPE, cantidad LINEAS_PEDIDO.CANTIDAD%TYPE) RETURN NUMBER;
    FUNCTION BorrarLinea(pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE ) RETURN NUMBER;
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, precio_nuevo LINEAS_PEDIDO.PRECIO%TYPE, cantidad_nueva LINEAS_PEDIDO.CANTIDAD%TYPE, pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionPedidos
AS
    -- INSERTAR PEDIDOS 
    FUNCTION Insertar(cif PEDIDOS.CIF_PROVEEDOR%TYPE, fecha PEDIDOS.FECHA%TYPE, precio_total PEDIDOS.PRECIO_TOTAL%TYPE, recibido PEDIDOS.RECIBIDO%TYPE) RETURN NUMBER
    IS
        codigo PEDIDOS.CODIGO%TYPE;
    BEGIN
        codigo := SecPedidos.NextVal;
        
        INSERT INTO PEDIDOS VALUES(codigo, fecha, cif, precio_total, recibido);
        RETURN codigo;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR PEDIDOS
    FUNCTION Borrar(pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM PEDIDOS WHERE codigo = pedido;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR PEDIDOS
    FUNCTION Modificar(fecha_nueva PEDIDOS.FECHA%TYPE, cif_nuevo PEDIDOS.CIF_PROVEEDOR%TYPE, precio_total_nuevo PEDIDOS.PRECIO_TOTAL%TYPE, recibido_nuevo PEDIDOS.RECIBIDO%TYPE, pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE PEDIDOS
        SET fecha = fecha_nueva, cif_proveedor = cif_nuevo, precio_total = precio_total_nuevo, recibido = recibido_nuevo
        WHERE codigo = pedido;
        
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
    -- INSERTAR LINEAS DE PEDIDO 
    FUNCTION InsertarLinea(pedido PEDIDOS.CODIGO%TYPE, producto PRODUCTOS.CODIGO%TYPE, precio PRODUCTOS.PRECIO_COSTE%TYPE, cantidad LINEAS_PEDIDO.CANTIDAD%TYPE) RETURN NUMBER
    IS
        numero LINEAS_PEDIDO.NUMERO%TYPE;
    BEGIN
        SELECT MAX(numero) INTO numero
		FROM LINEAS_PEDIDO
		WHERE codigo_pedido = pedido;
		
        numero := nvl(numero,0) + 1;
        
        INSERT INTO LINEAS_PEDIDO VALUES(numero, pedido, producto, precio, cantidad);

        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END InsertarLinea;
    
    -- BORRAR LINEAS DE PEDIDO
    FUNCTION BorrarLinea(pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE ) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_PEDIDO WHERE codigo_pedido = pedido AND numero = linea;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END BorrarLinea;

    -- MODIFICAR LINEAS DE PEDIDO
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, precio_nuevo LINEAS_PEDIDO.PRECIO%TYPE, cantidad_nueva LINEAS_PEDIDO.CANTIDAD%TYPE, pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_PEDIDO
        SET codigo_producto = producto, precio = precio_nuevo, cantidad = cantidad_nueva
        WHERE numero = linea AND codigo_pedido = pedido;
                
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END ModificarLinea;
END;

-- GESTIÓN DE FACTURAS
CREATE OR REPLACE PACKAGE GestionFacturas
AS
	FUNCTION Insertar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Borrar(factura FACTURAS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionFacturas
AS
	-- INSERTAR FACTURAS 
	FUNCTION Insertar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
		codigo FACTURAS.CODIGO%TYPE;
    BEGIN
        codigo := SecFacturas.NextVal;
        
        INSERT INTO FACTURAS VALUES(codigo, ticket);
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Insertar;

	-- BORRAR FACTURAS
	FUNCTION Borrar(factura FACTURAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM FACTURAS WHERE codigo = factura;
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
			
    END Borrar;
END;

-- GESTIÓN DE TICKETS
CREATE OR REPLACE PACKAGE GestionTickets
AS
	FUNCTION Insertar RETURN NUMBER;
	FUNCTION Borrar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Modificar(ticket TICKETS.CODIGO%TYPE, tipo_pago TIPOS_PAGO.CODIGO%TYPE, fecha_nueva TICKETS.FECHA%TYPE, total_nuevo TICKETS.TOTAL%TYPE) RETURN NUMBER;
	FUNCTION InsertarLinea(ticket TICKETS.CODIGO%TYPE, producto VARCHAR2, pvp PRODUCTOS.PVP%TYPE, tipo_iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION BorrarLinea(ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER;
	FUNCTION ModificarLinea(nombre_nuevo VARCHAR2, cantidad_nueva LINEAS_TICKET.CANTIDAD%TYPE, descuento_nuevo LINEAS_TICKET.DESCUENTO%TYPE, precio_nuevo LINEAS_TICKET.PRECIO%TYPE, iva_nuevo LINEAS_TICKET.IVA%TYPE, ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER;
	FUNCTION Facturar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionTickets
AS
	-- INSERTAR TICKETS 
	FUNCTION Insertar RETURN NUMBER
    IS
		codigo_ticket TICKETS.CODIGO%TYPE;
    BEGIN
		codigo_ticket := SecTickets.NextVal;
        INSERT INTO TICKETS(codigo, fecha, total) VALUES(codigo_ticket, SYSDATE, '0');
		RETURN codigo_ticket;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Insertar;

	-- BORRAR TICKETS
	FUNCTION Borrar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TICKETS WHERE codigo = ticket;
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
			
    END Borrar;
	
	-- MODIFICAR TICKETS
	FUNCTION Modificar(ticket TICKETS.CODIGO%TYPE, tipo_pago TIPOS_PAGO.CODIGO%TYPE, fecha_nueva TICKETS.FECHA%TYPE, total_nuevo TICKETS.TOTAL%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TICKETS
        SET codigo_tipo_pago = tipo_pago, fecha = fecha_nueva, total = total_nuevo
        WHERE codigo = ticket;

		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Modificar;
	
	-- INSERTAR LINEAS DE TICKETS 
	FUNCTION InsertarLinea(ticket TICKETS.CODIGO%TYPE, producto VARCHAR2, pvp PRODUCTOS.PVP%TYPE, tipo_iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER
    IS
		numero LINEAS_TICKET.NUMERO%TYPE;
        cantidad_producto NUMBER(2);
        iva NUMBER(3);
    BEGIN
        SELECT COUNT(*) INTO cantidad_producto
        FROM LINEAS_TICKET
        WHERE codigo_ticket = ticket AND nombre_producto = producto;
        
        IF cantidad_producto > 0 THEN
            UPDATE LINEAS_TICKET
            SET cantidad = cantidad + 1, precio = to_char(to_number(precio) + to_number(pvp))
            WHERE nombre_producto = producto;
        ELSE
            SELECT MAX(numero) INTO numero
            FROM LINEAS_TICKET
            WHERE codigo_ticket = ticket;
        
            numero := nvl(numero,0) + 1;
            
            SELECT porcentaje INTO iva
            FROM TIPOS_IVA
            WHERE codigo = tipo_iva;
            
            INSERT INTO LINEAS_TICKET VALUES(numero, ticket, producto, 1, 0, pvp, iva);
        END IF;
        
		RETURN 1;
        
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END InsertarLinea;
    
	-- BORRAR LINEAS DE TICKETS
	FUNCTION BorrarLinea(ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_TICKET
        WHERE codigo_ticket = ticket AND numero = linea;
        
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
			
    END BorrarLinea;
    
	-- MODIFICAR LINEAS DE TICKETS
	FUNCTION ModificarLinea(nombre_nuevo VARCHAR2, cantidad_nueva LINEAS_TICKET.CANTIDAD%TYPE, descuento_nuevo LINEAS_TICKET.DESCUENTO%TYPE, precio_nuevo LINEAS_TICKET.PRECIO%TYPE, iva_nuevo LINEAS_TICKET.IVA%TYPE, ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_TICKET
        SET nombre_producto = nombre_nuevo, cantidad = cantidad_nueva, descuento = descuento_nuevo, precio = precio_nuevo, iva  = iva_nuevo
        WHERE codigo_ticket = ticket AND numero = linea;

		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END ModificarLinea;	
    
    -- FACTURAR TICKET
    FUNCTION Facturar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        RETURN GestionFacturas.Insertar(ticket);
    EXCEPTION
        WHEN OTHERS THEN
			RETURN 0;
    END;
END;

-- GESTION DE COMANDAS
CREATE OR REPLACE PACKAGE GestionComandas
AS
	FUNCTION Insertar(estado ESTADOS_COMANDA.CODIGO%TYPE, mesa MESAS.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Borrar(comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Modificar(estado ESTADOS_COMANDA.CODIGO%TYPE, ticket TICKETS.CODIGO%TYPE, comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION InsertarLinea(producto PRODUCTOS.CODIGO%TYPE, entregada LINEAS_COMANDA.ENTREGADA%TYPE, comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION BorrarLinea(comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER;
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, entregada_nueva LINEAS_COMANDA.ENTREGADA%TYPE, comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER;
    FUNCTION Cobrar(comanda COMANDAS.CODIGO%TYPE, ticket TICKETS.CODIGO%TYPE) RETURN NUMBER;
    FUNCTION Cocina(comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionComandas
AS
    -- INSERTAR COMANDAS 
    FUNCTION Insertar(estado ESTADOS_COMANDA.CODIGO%TYPE, mesa MESAS.CODIGO%TYPE) RETURN NUMBER
    IS
        codigo COMANDAS.CODIGO%TYPE;
    BEGIN
        codigo := SecComandas.NextVal;
        
        INSERT INTO COMANDAS VALUES(codigo, NULL, estado, mesa);
        RETURN codigo;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR COMANDAS
    FUNCTION Borrar(comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM COMANDAS WHERE codigo = comanda;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR COMANDAS
    FUNCTION Modificar(estado ESTADOS_COMANDA.CODIGO%TYPE, ticket TICKETS.CODIGO%TYPE, comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE COMANDAS
        SET codigo_estado = estado, codigo_ticket = ticket
        WHERE codigo = comanda;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
    -- INSERTAR LINEA DE COMANDA
    FUNCTION InsertarLinea(producto PRODUCTOS.CODIGO%TYPE, entregada LINEAS_COMANDA.ENTREGADA%TYPE, comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
        numero LINEAS_COMANDA.NUMERO%TYPE;
    BEGIN
        SELECT MAX(numero) INTO numero
        FROM LINEAS_COMANDA
        WHERE codigo_comanda = comanda;
        
        numero := nvl(numero,0) + 1;
        
        INSERT INTO LINEAS_COMANDA VALUES(numero, comanda, producto, entregada);
        RETURN 1;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 1;
    END InsertarLinea;
    
    -- BORRAR LINEA DE COMANDA
    FUNCTION BorrarLinea(comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_COMANDA
        WHERE numero = linea AND codigo_comanda = comanda;
        
        RETURN 1;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END BorrarLinea;
    
    -- MODIFICAR LINEA DE COMANDA
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, entregada_nueva LINEAS_COMANDA.ENTREGADA%TYPE, comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_COMANDA
        SET codigo_producto = producto, entregada = entregada_nueva
        WHERE codigo_comanda = comanda AND numero = linea;
        
        RETURN 1;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END ModificarLinea;
    
    -- COBRAR COMANDA
    FUNCTION Cobrar(comanda COMANDAS.CODIGO%TYPE, ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
        CURSOR lineas_comanda IS SELECT * FROM LINEAS_COMANDA WHERE codigo_comanda = comanda;
        producto PRODUCTOS%ROWTYPE;
		dummy NUMBER(1);
    BEGIN
        FOR linea IN lineas_comanda LOOP
            SELECT * INTO producto
            FROM PRODUCTOS
            WHERE codigo = linea.codigo_producto;
            
            dummy := GestionTickets.InsertarLinea(ticket, producto.nombre, producto.pvp, producto.codigo_tipo_iva);
        END LOOP;
        
        UPDATE COMANDAS SET codigo_estado = 4
        WHERE codigo = comanda;
        
        RETURN 4;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END Cobrar;
    
    -- COCINA COMANDA
    FUNCTION Cocina(comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
        CURSOR lineas_comanda IS SELECT * FROM LINEAS_COMANDA WHERE codigo_comanda = comanda;
    BEGIN
        FOR linea IN lineas_comanda LOOP
            UPDATE LINEAS_COMANDA SET entregada = 1
            WHERE codigo_comanda = comanda;
        END LOOP;
        
        RETURN 1;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END Cocina;
END;    

--GESTION DE ESTADOS DE COMANDA
CREATE OR REPLACE PACKAGE GestionEstadosComanda
AS
	FUNCTION Insertar(nombre ESTADOS_COMANDA.NOMBRE%TYPE) RETURN NUMBER;
	FUNCTION Borrar(estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Modificar(nombre_nuevo ESTADOS_COMANDA.NOMBRE%TYPE, estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionEstadosComanda
AS  
    -- INSERTAR ESTADO DE COMANDA 
    FUNCTION Insertar(nombre ESTADOS_COMANDA.NOMBRE%TYPE) RETURN NUMBER
    IS
        codigo ESTADOS_COMANDA.CODIGO%TYPE;
    BEGIN
        codigo := SecEstadosComanda.NextVal;
        
        INSERT INTO ESTADOS_COMANDA VALUES(codigo, nombre);
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR ESTADO DE COMANDA 
    FUNCTION Borrar(estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM ESTADOS_COMANDA WHERE codigo = estado;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR ESTADO DE COMANDA 
    FUNCTION Modificar(nombre_nuevo ESTADOS_COMANDA.NOMBRE%TYPE, estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE ESTADOS_COMANDA SET nombre = nombre_nuevo
		WHERE codigo = estado;
        RETURN 1;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Modificar;
    
END;

-- GESTIÓN DE TIPOS DE IVA
CREATE OR REPLACE PACKAGE GestionTiposIVA
AS
	FUNCTION Insertar(porcentaje TIPOS_IVA.PORCENTAJE%TYPE, nombre TIPOS_IVA.NOMBRE%TYPE) RETURN NUMBER;
	FUNCTION Borrar(iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Modificar(porcentaje_nuevo TIPOS_IVA.PORCENTAJE%TYPE, nombre_nuevo TIPOS_IVA.NOMBRE%TYPE, iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionTiposIVA
AS
	-- INSERTAR TIPO DE IVA 
	FUNCTION Insertar(porcentaje TIPOS_IVA.PORCENTAJE%TYPE, nombre TIPOS_IVA.NOMBRE%TYPE) RETURN NUMBER
    IS
		codigo TIPOS_IVA.CODIGO%TYPE;
    BEGIN
        codigo := SecTiposIVA.NextVal;
		
        INSERT INTO TIPOS_IVA VALUES(codigo, porcentaje, nombre);
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Insertar;

	-- BORRAR TIPO DE IVA
	FUNCTION Borrar(iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TIPOS_IVA WHERE codigo = iva;
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
			
    END Borrar;

	-- MODIFICAR TIPO DE IVA
	FUNCTION Modificar(porcentaje_nuevo TIPOS_IVA.PORCENTAJE%TYPE, nombre_nuevo TIPOS_IVA.NOMBRE%TYPE, iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TIPOS_IVA
        SET porcentaje = porcentaje_nuevo, nombre = nombre_nuevo
		WHERE codigo = iva;

		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Modificar;
END;

-- GESTIÓN DE TIPOS DE PAGO
CREATE OR REPLACE PACKAGE GestionTiposPago
AS
	FUNCTION Insertar(nombre TIPOS_PAGO.NOMBRE%TYPE) RETURN NUMBER;
	FUNCTION Borrar(tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER;
	FUNCTION Modificar(nombre_nuevo TIPOS_PAGO.NOMBRE%TYPE, tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER;
END;

CREATE OR REPLACE PACKAGE BODY GestionTiposPago
AS
	-- INSERTAR TIPO DE PAGO
	FUNCTION Insertar(nombre TIPOS_PAGO.NOMBRE%TYPE) RETURN NUMBER
    IS
		codigo TIPOS_PAGO.CODIGO%TYPE;
    BEGIN
        codigo := SecTiposPago.NextVal;
		
        INSERT INTO TIPOS_PAGO VALUES (codigo, nombre);
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Insertar;

	-- BORRAR TIPO DE PAGO
	FUNCTION Borrar(tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TIPOS_PAGO WHERE codigo = tipo;
		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
			
    END Borrar;

	-- MODIFICAR TIPO DE PAGO
	FUNCTION Modificar(nombre_nuevo TIPOS_PAGO.NOMBRE%TYPE, tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TIPOS_PAGO
        SET nombre = nombre_nuevo
		WHERE codigo = tipo;

		RETURN 1;
		
    EXCEPTION
		WHEN OTHERS THEN
			RETURN 0;
    
    END Modificar;
END;