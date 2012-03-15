
    DROP TABLE productos_pedir;
    DROP TABLE lineas_comanda;
    DROP TABLE comandas;
    DROP TABLE estados_comanda;
    DROP TABLE mesas;
    DROP TABLE estados_mesa;
    DROP TABLE facturas;
    DROP TABLE lineas_ticket;
    DROP TABLE tickets;
    DROP TABLE tipos_pago;
    DROP TABLE guarniciones;
    DROP TABLE lineas_pedido;
    DROP TABLE pedidos;
    DROP TABLE productos;
    DROP TABLE proveedores;
    DROP TABLE tipos_iva;
    DROP TABLE subcategorias;
    DROP TABLE categorias;
    
    DROP SEQUENCE SecCategorias;
    DROP SEQUENCE SecTiposIVA;
    DROP SEQUENCE SecProveedores;
    DROP SEQUENCE SecProductos;
    DROP SEQUENCE SecPedidos;
    DROP SEQUENCE SecTiposPago;
    DROP SEQUENCE SecTickets;
    DROP SEQUENCE SecFacturas;
    DROP SEQUENCE SecEstadosMesa;
    DROP SEQUENCE SecMesas;
    DROP SEQUENCE SecEstadosComanda;
    DROP SEQUENCE SecComandas;
    
    COMMIT;
    
    CREATE SEQUENCE SecCategorias
    INCREMENT BY 1
    START WITH 0 
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecTiposIVA
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecProveedores
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecProductos
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecPedidos
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecTiposPago
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecTickets
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecFacturas
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecEstadosMesa
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecMesas
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecEstadosComanda
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE SEQUENCE SecComandas
    INCREMENT BY 1
    START WITH 0
    NOMAXVALUE
    MINVALUE 0
    CACHE 20;
    
    CREATE TABLE categorias(
        codigo number(3),
        nombre varchar2(30) not null,
        activo number(1) not null,
        CONSTRAINT PK_CATEGORIAS PRIMARY KEY (codigo),
        CONSTRAINT UK_CATEGORIAS UNIQUE (nombre)
    );
    
    CREATE TABLE subcategorias(
        codigo number(3),
        codigo_categoria number(3),
        nombre varchar2(30) not null,
        activo number(1) not null,
        CONSTRAINT PK_SUBCATEGORIAS PRIMARY KEY (codigo, codigo_categoria),
        CONSTRAINT UK_SUBCATEGORIAS UNIQUE (nombre),
        CONSTRAINT FK_SUBCATEGORIAS FOREIGN KEY (codigo_categoria) REFERENCES categorias (codigo)
    );
    
    CREATE TABLE tipos_iva(
        codigo number(3),
        porcentaje number(3) not null,
        nombre varchar2(30) not null,
        CONSTRAINT PK_TIPOS_IVA PRIMARY KEY (codigo),
        CONSTRAINT UK_TIPOS_IVA UNIQUE (nombre)
    );
    
    CREATE TABLE proveedores(
        cif varchar2(15) ,
        nombre varchar2(30) not null,
        direccion varchar2(200) not null, 
        telefono varchar2(20) not null,
        activo number(1) not null,
        CONSTRAINT PK_PROVEEDORES PRIMARY KEY (cif),
        CONSTRAINT UK_PROVEEDORES UNIQUE (nombre)
    );
    
    CREATE TABLE productos(
        codigo number(8),
        nombre varchar2(45) not null,
        descripcion varchar2(200) not null,
        precio_coste varchar2(10) not null,
        pvp varchar2(10) not null,
        calorias number(4) not null,
        codigo_subcategoria number(3) not null,
        codigo_categoria number(3) not null,
        stock number(4) not null,
        stock_minimo number(3) not null,
        codigo_tipo_iva number(3) not null,
        activo number(1) not null,
        CONSTRAINT PK_PRODUCTOS PRIMARY KEY (codigo),
        CONSTRAINT UK_PRODUCTOS UNIQUE (nombre),
        CONSTRAINT FK_PRODUCTOS_1 FOREIGN KEY (codigo_subcategoria, codigo_categoria) REFERENCES subcategorias (codigo, codigo_categoria),
        CONSTRAINT FK_PRODUCTOS_2 FOREIGN KEY (codigo_tipo_iva) REFERENCES tipos_iva (codigo)
    );
    
    CREATE TABLE pedidos(
        codigo number(8),
        fecha  date not null,
        cif_proveedor varchar2(15) not null,
        precio_total varchar2(15) not null,
        recibido number(1) not null,
        CONSTRAINT PK_PEDIDOS PRIMARY KEY (codigo),
        CONSTRAINT FK_PEDIDOS FOREIGN KEY (cif_proveedor) REFERENCES proveedores (cif)
    );
    
    CREATE TABLE lineas_pedido(
        numero number(3),
        codigo_pedido number(8),
        codigo_producto number(8) not null,
        precio varchar2(10) not null,
        cantidad number(4) not null,
        CONSTRAINT PK_LINEAS_PEDIDO PRIMARY KEY (numero, codigo_pedido),
        CONSTRAINT FK_LINEAS_PEDIDO FOREIGN KEY (codigo_pedido) REFERENCES pedidos (codigo),
        CONSTRAINT FK_LINEAS_PEDIDO_2 FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );
    
    CREATE TABLE guarniciones(
        codigo_producto number(8),
        codigo_guarnicion number(8),
        CONSTRAINT PK_GUARNICION PRIMARY KEY (codigo_producto, codigo_guarnicion),
        CONSTRAINT FK_GUARNICION FOREIGN KEY (codigo_producto) REFERENCES productos (codigo),
        CONSTRAINT FK_GUARNICION_2 FOREIGN KEY (codigo_guarnicion) REFERENCES productos (codigo)
    );
    
    CREATE TABLE tipos_pago(
        codigo number(2),
        nombre varchar2(30),
        CONSTRAINT PK_TIPO_PAGO PRIMARY KEY (codigo),
        CONSTRAINT UK_TIPO_PAGO UNIQUE (nombre)
    );
    
    CREATE TABLE tickets(
        codigo number(8),
        codigo_tipo_pago number(2),
        fecha date not null,
        total varchar2(10) not null,
        CONSTRAINT PK_TICKETS PRIMARY KEY (codigo),
        CONSTRAINT FK_TICKETS FOREIGN KEY (codigo_tipo_pago) REFERENCES tipos_pago (codigo)
    );
    
    CREATE TABLE lineas_ticket(
        numero number(4),
        codigo_ticket number(8),
        nombre_producto varchar2(55) not null,
        cantidad number(2) not null,
        descuento number(3) not null,
        precio varchar2(10) not null,
        iva number(3) not null,
        CONSTRAINT PK_LINEAS_TICKET PRIMARY KEY (numero, codigo_ticket),
        CONSTRAINT FK_LINEAS_TICKET FOREIGN KEY (codigo_ticket) REFERENCES tickets (codigo)
    );
    
    CREATE TABLE facturas(
        codigo number(8),
        codigo_ticket number(8),
        CONSTRAINT PK_FACTURAS PRIMARY KEY (codigo),
        CONSTRAINT FK_FACTURAS FOREIGN KEY (codigo_ticket) REFERENCES tickets (codigo)
    );
    
    CREATE TABLE estados_mesa(
        codigo number(3),
        nombre varchar2(30) not null,
        CONSTRAINT PK_ESTADOS_MESA PRIMARY KEY (codigo),
        CONSTRAINT UK_ESTADOS_MESA UNIQUE (nombre)
    );
    
    CREATE TABLE mesas(
        codigo number(3),
        codigo_estado number(3),
        CONSTRAINT PK_MESAS PRIMARY KEY (codigo),
        CONSTRAINT FK_MESAS FOREIGN KEY (codigo_estado) REFERENCES estados_mesa (codigo)
    );
    
    CREATE TABLE estados_comanda(
        codigo number(3),
        nombre varchar2(30) not null,
        CONSTRAINT PK_ESTADOS_COMANDA PRIMARY KEY (codigo),
        CONSTRAINT UK_ESTADOS_COMANDA UNIQUE (nombre)
    );
    
    CREATE TABLE comandas(
        codigo number(8),
        codigo_ticket number(8),
        codigo_estado number(3) not null,
        codigo_mesa number(3) not null,
        CONSTRAINT PK_COMANDAS PRIMARY KEY (codigo),
        CONSTRAINT FK_COMANDAS_1 FOREIGN KEY (codigo_estado) REFERENCES estados_comanda (codigo),
        CONSTRAINT FK_COMANDAS_2 FOREIGN KEY (codigo_mesa) REFERENCES estados_mesa (codigo),
        CONSTRAINT FK_COMANDAS_3 FOREIGN KEY (codigo_ticket) REFERENCES tickets (codigo)
    );
    
    CREATE TABLE lineas_comanda(
        numero number(3),
        codigo_comanda number(8),
        codigo_producto number(8) not null,
        entregada number(1) not null,
        CONSTRAINT PK_LINEAS_COMANDA PRIMARY KEY (numero, codigo_comanda),
        CONSTRAINT FK_LINEAS_COMANDA FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );
    
    CREATE TABLE productos_pedir(
        codigo_producto number(8),
        CONSTRAINT PK_PRODUCTOS_PEDIR PRIMARY KEY (codigo_producto),
        CONSTRAINT FK_PRODUCTOS_PEDIR FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );

    commit;


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

        IF SQL%ROWCOUNT > 0 then
            COMMIT;      
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN  
            ROLLBACK;          
            RETURN 0;
    
    END Insertar;

    -- BORRAR MESA
    FUNCTION Borrar(mesa MESAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM MESAS
        WHERE codigo = mesa;
        
        IF SQL%ROWCOUNT > 0 then    
            COMMIT;     
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    END Borrar;

    -- MODIFICAR MESA
    FUNCTION Modificar(mesa MESAS.CODIGO%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE MESAS
        SET codigo_estado = estado
        WHERE codigo = mesa;
        
        IF SQL%ROWCOUNT > 0 then     
            COMMIT;    
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then   
            COMMIT;      
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR ESTADO DE MESA 
    FUNCTION Borrar(estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM ESTADOS_MESA WHERE codigo = estado;
        
        IF SQL%ROWCOUNT > 0 then   
            COMMIT;      
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR ESTADO DE MESA 
    FUNCTION Modificar(nombre_nuevo ESTADOS_MESA.NOMBRE%TYPE, estado ESTADOS_MESA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE ESTADOS_MESA
        SET nombre = nombre_nuevo
        WHERE codigo = estado;
                                  
        IF SQL%ROWCOUNT > 0 then   
            COMMIT;      
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
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
        
        IF SQL%ROWCOUNT > 0 then  
            COMMIT;       
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR CATEGORIAS
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM CATEGORIAS WHERE codigo = categoria;
        
        IF SQL%ROWCOUNT > 0 then      
            COMMIT;   
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR CATEGORIAS
    FUNCTION Modificar(nombre_nuevo CATEGORIAS.NOMBRE%TYPE, activo_nuevo CATEGORIAS.ACTIVO%TYPE, categoria CATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE CATEGORIAS
        SET nombre = nombre_nuevo, activo = activo_nuevo
        WHERE codigo = categoria;
        
        IF SQL%ROWCOUNT > 0 then    
            COMMIT;     
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR CATEGORIAS
    FUNCTION Borrar(categoria CATEGORIAS.CODIGO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM SUBCATEGORIAS WHERE codigo = subcategoria AND codigo_categoria = categoria;
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR CATEGORIAS
    FUNCTION Modificar(categoria CATEGORIAS.CODIGO%TYPE, nombre_nuevo SUBCATEGORIAS.NOMBRE%TYPE, activo_nuevo SUBCATEGORIAS.ACTIVO%TYPE, subcategoria SUBCATEGORIAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE SUBCATEGORIAS
        SET nombre = nombre_nuevo, activo = activo_nuevo
        WHERE codigo = subcategoria AND codigo_categoria = categoria;
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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

        
        IF SQL%ROWCOUNT > 0 then       
            COMMIT;  
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    
    END Insertar;

    -- BORRAR PRODUCTOS
    FUNCTION Borrar(producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM PRODUCTOS WHERE codigo = producto;
        
        IF SQL%ROWCOUNT > 0 then      
            COMMIT;   
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR PRODUCTOS
    FUNCTION Modificar(nombre_nuevo PRODUCTOS.NOMBRE%TYPE, descripcion_nueva PRODUCTOS.DESCRIPCION%TYPE, precio_coste_nuevo PRODUCTOS.PRECIO_COSTE%TYPE, pvp_nuevo PRODUCTOS.PVP%TYPE, calorias_nuevas PRODUCTOS.CALORIAS%TYPE, codigo_subcategoria_nuevo PRODUCTOS.CODIGO_SUBCATEGORIA%TYPE, codigo_categoria_nuevo PRODUCTOS.CODIGO_CATEGORIA%TYPE, stock_nuevo PRODUCTOS.STOCK%TYPE, stock_minimo_nuevo PRODUCTOS.STOCK_MINIMO%TYPE, codigo_tipo_iva_nuevo PRODUCTOS.CODIGO_TIPO_IVA%TYPE, activo_nuevo PRODUCTOS.ACTIVO%TYPE, producto PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE PRODUCTOS
        SET nombre = nombre_nuevo, descripcion = descripcion_nueva, precio_coste = precio_coste_nuevo, pvp = pvp_nuevo, calorias = calorias_nuevas, codigo_subcategoria = codigo_subcategoria_nuevo, codigo_categoria = codigo_categoria_nuevo, stock = stock_nuevo, stock_minimo = stock_minimo_nuevo, codigo_tipo_iva = codigo_tipo_iva_nuevo, activo = activo_nuevo 
        WHERE codigo = producto;
        
        
        IF SQL%ROWCOUNT > 0 then    
            COMMIT;     
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Modificar;
    
    -- INSERTAR GUARNICIONES
    FUNCTION InsertarGuarnicion(codigo_producto PRODUCTOS.CODIGO%TYPE, codigo_guarnicion PRODUCTOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        INSERT INTO GUARNICIONES VALUES(codigo_producto, codigo_guarnicion);
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN codigo;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR PEDIDOS
    FUNCTION Borrar(pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM PEDIDOS WHERE codigo = pedido;
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR PEDIDOS
    FUNCTION Modificar(fecha_nueva PEDIDOS.FECHA%TYPE, cif_nuevo PEDIDOS.CIF_PROVEEDOR%TYPE, precio_total_nuevo PEDIDOS.PRECIO_TOTAL%TYPE, recibido_nuevo PEDIDOS.RECIBIDO%TYPE, pedido PEDIDOS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE PEDIDOS
        SET fecha = fecha_nueva, cif_proveedor = cif_nuevo, precio_total = precio_total_nuevo, recibido = recibido_nuevo
        WHERE codigo = pedido;
        
        
        IF SQL%ROWCOUNT > 0 then      
            COMMIT;   
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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

        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END InsertarLinea;
    
    -- BORRAR LINEAS DE PEDIDO
    FUNCTION BorrarLinea(pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE ) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_PEDIDO WHERE codigo_pedido = pedido AND numero = linea;
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END BorrarLinea;

    -- MODIFICAR LINEAS DE PEDIDO
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, precio_nuevo LINEAS_PEDIDO.PRECIO%TYPE, cantidad_nueva LINEAS_PEDIDO.CANTIDAD%TYPE, pedido PEDIDOS.CODIGO%TYPE, linea LINEAS_PEDIDO.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_PEDIDO
        SET codigo_producto = producto, precio = precio_nuevo, cantidad = cantidad_nueva
        WHERE numero = linea AND codigo_pedido = pedido;
                
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then         
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR FACTURAS
    FUNCTION Borrar(factura FACTURAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM FACTURAS WHERE codigo = factura;
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN codigo_ticket;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR TICKETS
    FUNCTION Borrar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TICKETS WHERE codigo = ticket;
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;
    
    -- MODIFICAR TICKETS
    FUNCTION Modificar(ticket TICKETS.CODIGO%TYPE, tipo_pago TIPOS_PAGO.CODIGO%TYPE, fecha_nueva TICKETS.FECHA%TYPE, total_nuevo TICKETS.TOTAL%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TICKETS
        SET codigo_tipo_pago = tipo_pago, fecha = fecha_nueva, total = total_nuevo
        WHERE codigo = ticket;

        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
            SET cantidad = cantidad + 1, precio = to_char( to_number(replace(precio, '.', ',')) + to_number(replace(pvp, '.', ',')) )
            WHERE nombre_producto = producto;
        ELSE
            SELECT MAX(numero) INTO numero
            FROM LINEAS_TICKET
            WHERE codigo_ticket = ticket;
        
            numero := nvl(numero,0) + 1;
            
            SELECT porcentaje INTO iva
            FROM TIPOS_IVA
            WHERE codigo = tipo_iva;
            
            INSERT INTO LINEAS_TICKET VALUES (numero, ticket, producto, 1, 0, pvp, iva);
        END IF;
        
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END InsertarLinea;
    
    -- BORRAR LINEAS DE TICKETS
    FUNCTION BorrarLinea(ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_TICKET
        WHERE codigo_ticket = ticket AND numero = linea;
        
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END BorrarLinea;
    
    -- MODIFICAR LINEAS DE TICKETS
    FUNCTION ModificarLinea(nombre_nuevo VARCHAR2, cantidad_nueva LINEAS_TICKET.CANTIDAD%TYPE, descuento_nuevo LINEAS_TICKET.DESCUENTO%TYPE, precio_nuevo LINEAS_TICKET.PRECIO%TYPE, iva_nuevo LINEAS_TICKET.IVA%TYPE, ticket TICKETS.CODIGO%TYPE, linea LINEAS_TICKET.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_TICKET
        SET nombre_producto = nombre_nuevo, cantidad = cantidad_nueva, descuento = descuento_nuevo, precio = precio_nuevo, iva  = iva_nuevo
        WHERE codigo_ticket = ticket AND numero = linea;

        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END ModificarLinea;    
    
    -- FACTURAR TICKET
    FUNCTION Facturar(ticket TICKETS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        RETURN GestionFacturas.Insertar(ticket);
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then   
            COMMIT;      
            RETURN codigo;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR COMANDAS
    FUNCTION Borrar(comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM COMANDAS WHERE codigo = comanda;
        
        IF SQL%ROWCOUNT > 0 then     
            COMMIT;    
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR COMANDAS
    FUNCTION Modificar(estado ESTADOS_COMANDA.CODIGO%TYPE, ticket TICKETS.CODIGO%TYPE, comanda COMANDAS.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE COMANDAS
        SET codigo_estado = estado, codigo_ticket = ticket
        WHERE codigo = comanda;
        
        IF SQL%ROWCOUNT > 0 then       
            COMMIT;  
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then       
            COMMIT;  
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 1;
    END InsertarLinea;
    
    -- BORRAR LINEA DE COMANDA
    FUNCTION BorrarLinea(comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM LINEAS_COMANDA
        WHERE numero = linea AND codigo_comanda = comanda;
        
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    END BorrarLinea;
    
    -- MODIFICAR LINEA DE COMANDA
    FUNCTION ModificarLinea(producto PRODUCTOS.CODIGO%TYPE, entregada_nueva LINEAS_COMANDA.ENTREGADA%TYPE, comanda COMANDAS.CODIGO%TYPE, linea LINEAS_COMANDA.NUMERO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE LINEAS_COMANDA
        SET codigo_producto = producto, entregada = entregada_nueva
        WHERE codigo_comanda = comanda AND numero = linea;
        
        
        IF SQL%ROWCOUNT > 0 then       
            COMMIT;  
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 4;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
    
    END Insertar;

    -- BORRAR ESTADO DE COMANDA 
    FUNCTION Borrar(estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM ESTADOS_COMANDA WHERE codigo = estado;
        
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RETURN 0;
            
    END Borrar;

    -- MODIFICAR ESTADO DE COMANDA 
    FUNCTION Modificar(nombre_nuevo ESTADOS_COMANDA.NOMBRE%TYPE, estado ESTADOS_COMANDA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE ESTADOS_COMANDA SET nombre = nombre_nuevo
		WHERE codigo = estado;
        
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
        
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
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
		
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
			RETURN 0;
    
    END Insertar;

	-- BORRAR TIPO DE IVA
	FUNCTION Borrar(iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TIPOS_IVA WHERE codigo = iva;
		
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
			RETURN 0;
			
    END Borrar;

	-- MODIFICAR TIPO DE IVA
	FUNCTION Modificar(porcentaje_nuevo TIPOS_IVA.PORCENTAJE%TYPE, nombre_nuevo TIPOS_IVA.NOMBRE%TYPE, iva TIPOS_IVA.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TIPOS_IVA
        SET porcentaje = porcentaje_nuevo, nombre = nombre_nuevo
		WHERE codigo = iva;

		
        IF SQL%ROWCOUNT > 0 then         
            COMMIT;
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
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
		
        IF SQL%ROWCOUNT > 0 then      
            COMMIT;   
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
			RETURN 0;
    
    END Insertar;

	-- BORRAR TIPO DE PAGO
	FUNCTION Borrar(tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        DELETE FROM TIPOS_PAGO WHERE codigo = tipo;
		
        IF SQL%ROWCOUNT > 0 then        
            COMMIT; 
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
			RETURN 0;
			
    END Borrar;

	-- MODIFICAR TIPO DE PAGO
	FUNCTION Modificar(nombre_nuevo TIPOS_PAGO.NOMBRE%TYPE, tipo TIPOS_PAGO.CODIGO%TYPE) RETURN NUMBER
    IS
    BEGIN
        UPDATE TIPOS_PAGO
        SET nombre = nombre_nuevo
		WHERE codigo = tipo;

		
        IF SQL%ROWCOUNT > 0 then       
            COMMIT;  
            RETURN 1;
        ELSE
            ROLLBACK;
            RETURN 0;
        END IF;
		
    EXCEPTION
		WHEN OTHERS THEN
            ROLLBACK;
			RETURN 0;
    
    END Modificar;
END;

COMMIT;



create or replace trigger ActualizarPedido
  after insert or update of recibido on Pedidos
  for each row
declare
  CURSOR lineasPedido IS Select * from lineas_Pedido where codigo_pedido = :new.codigo;
begin

  if :new.recibido <> 0 then
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

  if :new.entregada <> 0 then
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

  if contador = 0 and :new.stock < :old.stock_minimo then

    INSERT INTO productos_pedir VALUES (:old.codigo);
  end if;
end;



create or replace trigger PrecioTickets
  before insert or update of precio on Lineas_Ticket
  for each row
declare

  nuevo_precio Tickets.total%TYPE;
begin

  if inserting then
    nuevo_precio := :new.precio;

  elsif updating then
    nuevo_precio := to_char( to_number( replace(:new.precio, '.', ',')) - to_number( replace(:old.precio, '.', ',')));
  end if;

  UPDATE Tickets
  SET total = to_char( to_number( replace(total, '.', ',')) + to_number( replace(nuevo_precio, '.', ',') ) )
  WHERE codigo = :new.codigo_ticket;
end;



create or replace trigger PrecioPedido
  before insert or update of precio on Lineas_Pedido
  for each row
declare

  nuevo_precio Pedidos.precio_total%TYPE;
begin

  if inserting then 
    nuevo_precio := :new.precio;

  elsif updating then
    nuevo_precio := to_char( to_number( replace(:new.precio,'.',',')) - to_number( replace(:old.precio,'.',',')));
  end if;

  UPDATE Pedidos
  SET precio_total = to_char( to_number(replace(precio_total, '.', ',')) + to_number( replace(nuevo_precio, '.', ',')) )
  WHERE codigo = :new.codigo_pedido;
end;

COMMIT;



  -- TABLA Estados de mesas
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Libre');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Ocupada');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Esperando pedido');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Esperando ticket');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Esperando cobro');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Esperando camarero');
  INSERT INTO estados_mesa (codigo, nombre) VALUES ( SecEstadosMesa.NextVal, 'Por limpiar');
  
  COMMIT;
  
  -- TABLA Estados de comanda
  INSERT INTO estados_comanda (codigo, nombre) VALUES ( SecEstadosComanda.NextVal, 'Pendiente');
  INSERT INTO estados_comanda (codigo, nombre) VALUES ( SecEstadosComanda.NextVal, 'En proceso');
  INSERT INTO estados_comanda (codigo, nombre) VALUES ( SecEstadosComanda.NextVal, 'Entregada');
  INSERT INTO estados_comanda (codigo, nombre) VALUES ( SecEstadosComanda.NextVal, 'Pagada');
  
  COMMIT;
  
  -- TABLA Tipos de pago
  INSERT INTO tipos_pago (codigo, nombre) VALUES ( SecTiposPago.NextVal, 'Efectivo');
  INSERT INTO tipos_pago (codigo, nombre) VALUES ( SecTiposPago.NextVal, 'Tarjeta');
  
  COMMIT;
  
  -- TABLA Tipos de iva
  INSERT INTO tipos_iva (codigo, nombre, porcentaje) VALUES ( SecTiposIva.NextVal, 'Sin IVA', 0);
  INSERT INTO tipos_iva (codigo, nombre, porcentaje) VALUES ( SecTiposIva.NextVal, 'Restaurante', 8);
  
  COMMIT;
  
  -- TABLA mesass
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  INSERT INTO mesas (codigo, codigo_estado) VALUES ( SecMesas.NextVal, 1);
  
  COMMIT;
  
  -- TABLA proveedoreses
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('B79265914', 'Coca-Cola', 'C/Ribera Loira 20-22, Madrid', 902199202, 1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28006013', 'Heineken', 'Avda de Andalucía, Nº 1, Sevilla', 902460555,  1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A08000820', 'Estrella Damm', 'C/ Rosselló nº 515, Barcelona', 902300125,  1); 
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A09006172', 'Bezoya', 'Avda Manoteras 24, Madrid', 912035500, 1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A78593084', 'Frigo', 'Avda. Diagonal 569 Barcelona', 902013456, 1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28099015', 'Heinz', 'Ctra.Rincón de Soto a Corella,La Rioja', 902945184, 1);
  
  COMMIT;
  
  -- TABLA Categorías
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Guarnición', 1);
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Bebidas', 1);
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Platos', 1);
  
  COMMIT;
  
  -- TABLA Subcategorias
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 1, 'Mini Ensaladas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 1, 'Patatas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 3, 1, 'Pan', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 2, 'Refrescos', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 2, 'Bebidas alcohólicas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 3, 2, 'Agua', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 4, 2, 'Cafes e infusiones', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 3, 'Entrantes', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 3, 'Ensaladas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 3, 3, 'Tex Mex', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 4, 3, 'Sandwiches', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 5, 3, 'Pollo y pescado', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 6, 3, 'Parrilla', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 7, 3, 'Costillas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 8, 3, 'Hamburguesas', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 9, 3, 'Platos infantiles', 1);
  INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (10, 3, 'Postres', 1);
  
  COMMIT;

  -- TABLA productos
    
  --tipos entrantes
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bacon and Cheese Fries', 'Descripción del producto', '2.90', '5.45', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Flautas Santa Fe', 'Descripción del producto', '2.85', '5.35', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Combo de Quesadillas', 'Descripción del producto', '3.20', '6.40', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Aros de Cebolla', 'Descripción del producto', '2.30', '4.65', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers de Queso Grand Central', 'Descripción del producto', '2.65', '5.35', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hollywood Combo', 'Descripción del producto', '4.45', '8.95', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Macho Nachos Supreme', 'Descripción del producto', '2.8', '5.95', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Choice Chicken Fingers', 'Descripción del producto', '2.6', '5.35', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Alitas de Pollo Duke´S Baby Wings', 'Descripción del producto', '2.25', '4.55', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Academy Potato Skins', 'Descripción del producto', '3.00', '6.00', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers de Mozarella', 'Descripción del producto', '2.55', '5.35', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Jalapeños Tahoe', 'Descripción del producto', '3.15', '6.35', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Macho Nachos', 'Descripción del producto', '2.32', '4.65', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Tortita de Trigo Cinematic Chili Chicken', 'Descripción del producto', '3.05', '6.15', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Sopa de cebolla', 'Descripción del producto', '2.30', '4.65', 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Quesadilla Monterrey', 'Descripción del producto', '2.7', '5.20', 500, 1, 3, 50, 10, 2, 1);
  
  COMMIT;

  --tipos ensaladas
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Santa Mónica Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Caesar Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Camembert Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Tara Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Foster´S Super Chef Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Olivia´S Love Salad', 'Descripción del producto', '3.50', '7.55', 500, 2, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos texmex 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fajitas El Paso', 'Descripción del producto', '8.8', '17.65', 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Center Stage Cajun Pasta ', 'Descripción del producto', '3.7', '7.40', 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Burrito Pancho ', 'Descripción del producto', '3.8', '7.70', 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Al Sur De La Frontera ', 'Descripción del producto', '4.8', '9.65', 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Chili Con Carne Rio Grande ', 'Descripción del producto', '3.15', '6.30', 500, 3, 3, 50, 10, 2, 1);
   
   COMMIT;

  --tipos sandwiches
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cotton Club Sandwich', 'Descripción del producto', '4.0', '8.00', 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Philly Cheese Steak Sandwich', 'Descripción del producto', '4.20', '8.40', 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Caesar Sandwich ', 'Descripción del producto', '4.10', '8.20', 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Turkey Sandwich', 'Descripción del producto', '3.70', '7.45', 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gran Studio Sandwich', 'Descripción del producto', '4.20', '8.40', 500, 4, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos pollo/pescado  
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo Sunset Boulevard', 'Descripción del producto', '4.50', '9.05', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo a la Barbacoa', 'Descripción del producto', '4.30', '8.60', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo Beverly Hills', 'Descripción del producto', '4.50', '9.05', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Teriyaki Chicken Brochette', 'Descripción del producto', '4.60', '9.20', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Merluza Grill', 'Descripción del producto', '5.50', '11.95', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Salmón Papillón', 'Descripción del producto', '5.70', '11.95', 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El Último Emperador', 'Descripción del producto', '5.50', '11.55', 500, 5, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos parrilla 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Filet Mignon Supreme', 'Descripción del producto', '7.60', '15.20', 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El Neoyorkino Buey', 'Descripción del producto', '7.20', '14.55', 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El Ranchero', 'Descripción del producto', '5.00', '10.00', 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Liteing Delight', 'Descripción del producto', '4.50', '9.05', 500, 6, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos costillas 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas California Honey', 'Descripción del producto', '4.40', '8.95', 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Bar B-Q', 'Descripción del producto', '4.40', '8.95', 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Cajun Style', 'Descripción del producto', '4.40', '8.95', 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Costillas Tex Hot Pepper', 'Descripción del producto', '4.40', '8.95', 500, 7, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos hamburguesas 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Director´S Choice', 'Descripción del producto', '3.85', '7.90', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Chicken Burguer', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Onion Patty Melt', 'Descripción del producto', '4.05', '8.15', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cheeseburger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Champiburger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bacon Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bar B-Q Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Todo Americano Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hawaiian Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'ChiliBurger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Roquefort Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Mariachi Burger', 'Descripción del producto', '3.60', '7.20', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gourmet Mediterranian Burger', 'Descripción del producto', '4.90', '9.85', 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gourmet Le Grand Chef', 'Descripción del producto', '4.90', '9.85', 500, 8, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos platos infantiles 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'CheeseBurger', 'Descripción del producto', '2.10', '4.35', 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers De Pollo', 'Descripción del producto', '2.10', '4.35', 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'De Luxe Sandwich', 'Descripción del producto', '2.00', '4.05', 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bocaditos De Merluza Rebozada', 'Descripción del producto', '2.10', '4.35', 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bocaditos Fingers De Queso', 'Descripción del producto', '2.10', '4.35', 500, 9, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos bebidas- Refrescos   
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Lata', 'Descripción del producto', '0.7', '1.4', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Botella 500ml', 'Descripción del producto', '0.90', '1.9', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Jarra 1l', 'Descripción del producto', '1.42', '2.95', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Lata', 'Descripción del producto', '0.7', '1.4', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Botella 500ml', 'Descripción del producto', '0.9', '1.9', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Jarra 1l', 'Descripción del producto', '1.42', '2.95', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Lata', 'Descripción del producto', '0.7', '1.4', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Botella 500ml', 'Descripción del producto', '0.9', '1.9', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Jarra 1l', 'Descripción del producto', '1.42', '2.95', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Lata', 'Descripción del producto', '0.7', '1.4', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Botella 500ml', 'Descripción del producto', '0.9', '1.9', 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Jarra 1l', 'Descripción del producto', '1.42', '2.95', 500, 1, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos Agua  
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Agua 500ml', 'Descripción del producto', '0.7', '1.25', 500, 3, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Agua 1l', 'Descripción del producto', '0.92', '2.00', 500, 3, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos Cerveza 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Lata', 'Descripción del producto', '0.70', '1.5', 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Tercio 33ml', 'Descripción del producto', '0.70', '1.5', 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Pinta 0.5L', 'Descripción del producto', '1.42', '2.95', 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Jarra 1L', 'Descripción del producto', '2.5', '5', 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Barril 2.5L', 'Descripción del producto', '3.85', '8', 500, 2, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos postres 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Choco Cheese Cake', 'Descripción del producto', '1.95', '3.95', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pastel de Chocolate', 'Descripción del producto', '1.95', '3.95', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Brownies', 'Descripción del producto', '2.00', '4.20', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Sunny Pancakes', 'Descripción del producto', '1.90', '3.80', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Combo De Postres', 'Descripción del producto', '3.80', '7.60', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'The Stars Apangled Banana Split', 'Descripción del producto', '2.00', '4.20', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Helado Supremo', 'Descripción del producto', '2.00', '4.20', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Viva Tiramisu', 'Descripción del producto', '1.95', '3.95', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Profiteroles Al Estilo New Orleans', 'Descripción del producto', '1.90', '3.80', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'New:Oreo Cookie Sundae', 'Descripción del producto', '1.95', '4.15', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hawaian Paradise', 'Descripción del producto', '1.95', '4.00', 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Action Apple Pie', 'Descripción del producto', '1.90', '3.80', 500, 10, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos Guarniciones
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Ensalada de col', 'Descripción del producto', '0', '0', 500, 1, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Ensalada de frijoles', 'Descripción del producto', '0', '0', 500, 1, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Patats fritas', 'Descripción del producto', '0', '0', 500, 2, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Patats asadas', 'Descripción del producto', '0', '0', 500, 2, 1, 50, 10, 2, 1);

  COMMIT;
  
  -- TABLA guarniciones (hamburguesas)

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 48,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 48,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 48, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 48, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 49,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 49,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 49, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 49, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 50,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 50,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 50, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 50, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 51,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 51,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 51, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 51, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 52,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 52,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 52, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 52, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 53,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 53,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 53, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 53, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 54,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 54,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 54, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 54, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 55,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 55,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 55, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 55, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 56,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 56,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 56, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 56, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 57,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 57,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 57, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 57, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 58,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 58,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 58, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 58, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 59,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 59,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 59, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 59, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 60,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 60,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 60, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 60, 101);

  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 61,  98);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 61,  99);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 61, 100);
  INSERT INTO guarniciones (codigo_producto, codigo_guarnicion) VALUES ( 61, 101);
  
  COMMIT;

-- PEDIDOS --
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('05/01/2012', 'DD-MM-YY'), 'B79265914', '0', 1);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('09/03/2012', 'DD-MM-YY'), 'A28006013', '0', 0);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('14/02/2012', 'DD-MM-YY'), 'A08000820', '0', 1);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('10/03/2012', 'DD-MM-YY'), 'A09006172', '0', 0);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('24/02/2012', 'DD-MM-YY'), 'A78593084', '0', 1);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('13/03/2012', 'DD-MM-YY'), 'A28099015', '0', 0);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('07/03/2012', 'DD-MM-YY'), 'B79265914', '0', 1);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('12/03/2012', 'DD-MM-YY'), 'A28006013', '0', 0);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('21/01/2012', 'DD-MM-YY'), 'A08000820', '0', 1);
INSERT INTO PEDIDOS VALUES(SecPedidos.NextVal, TO_DATE('14/03/2012', 'DD-MM-YY'), 'A09006172', '0', 0);

COMMIT;




-- LINEAS_PEDIDO --
-- PEDIDO 1 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  1,  1, '14,50', 5);
INSERT INTO LINEAS_PEDIDO VALUES(2,  1, 17, '35,00', 10);
INSERT INTO LINEAS_PEDIDO VALUES(3,  1, 23, '61,60', 7);
INSERT INTO LINEAS_PEDIDO VALUES(4,  1, 28, '40,00', 10);
-- PEDIDO 2 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  2, 33, '90,00', 20);
INSERT INTO LINEAS_PEDIDO VALUES(2,  2, 40, '76,00', 10);
INSERT INTO LINEAS_PEDIDO VALUES(3,  2, 44, '22,00', 5);
INSERT INTO LINEAS_PEDIDO VALUES(4,  2, 48, '172,50', 15);
-- PEDIDO 3 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  3, 62, '14,70', 7);
INSERT INTO LINEAS_PEDIDO VALUES(2,  3, 67, '35,00', 50);
-- PEDIDO 4 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  4, 79, '35,00', 50);
INSERT INTO LINEAS_PEDIDO VALUES(2,  4, 81, '35,00', 50);
-- PEDIDO 5 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  5, 86, '9,75', 5);
INSERT INTO LINEAS_PEDIDO VALUES(2,  5,  2, '28,50', 10);
INSERT INTO LINEAS_PEDIDO VALUES(3,  5, 18, '28,00', 8);
-- PEDIDO 6 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  6, 24, '18,50', 5);
INSERT INTO LINEAS_PEDIDO VALUES(2,  6, 29, '37,80', 9);
INSERT INTO LINEAS_PEDIDO VALUES(3,  6, 34, '21,50', 5);
-- PEDIDO 7 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  7, 41, '36,00', 5);
INSERT INTO LINEAS_PEDIDO VALUES(2,  7, 45, '44,00', 10);
INSERT INTO LINEAS_PEDIDO VALUES(3,  7, 49, '10,80', 3);
-- PEDIDO 8 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  8, 63, '10,50', 5);
INSERT INTO LINEAS_PEDIDO VALUES(2,  8, 68, '36,00', 40);
-- PEDIDO 9 --
INSERT INTO LINEAS_PEDIDO VALUES(1,  9, 80, '21,60', 30);
INSERT INTO LINEAS_PEDIDO VALUES(2,  9, 82, '70,00', 100);
-- PEDIDO 10 --
INSERT INTO LINEAS_PEDIDO VALUES(1, 10, 87, '15,60', 8);
INSERT INTO LINEAS_PEDIDO VALUES(2, 10,  3, '32,00', 10);
INSERT INTO LINEAS_PEDIDO VALUES(3, 10, 19, '17,50', 5);

COMMIT;

-- TICKETS --
INSERT INTO TICKETS VALUES (SecTickets.NextVal, 1, SYSDATE, '0,00');
INSERT INTO TICKETS VALUES (SecTickets.NextVal, 1, SYSDATE, '0,00');

COMMIT;

-- LINEAS_TICKET --
-- TICKET 1 --
INSERT INTO LINEAS_TICKET VALUES(1, 1, 'El Ranchero', 1, 0, '10,00', 8);
INSERT INTO LINEAS_TICKET VALUES(2, 1, 'Teriyaki Chicken Brochette', 1, 0, '9,20', 8);
INSERT INTO LINEAS_TICKET VALUES(3, 1, 'Foster´S Super Chef Salad', 1, 0, '7,55', 8);
-- TICKET 2 --
INSERT INTO LINEAS_TICKET VALUES(1, 2, 'Burrito Pancho', 1, 0, '7,70', 8);
INSERT INTO LINEAS_TICKET VALUES(2, 2, 'Olivia´S Love Salad', 1, 0, '7,55', 8);

COMMIT;

-- COMANDAS --
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 1, 1);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 1, 1);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 2, 2);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 2, 2);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 3, 3);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 3, 3);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 1, 4);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal, NULL, 1, 4);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal,    1, 4, 5);
INSERT INTO COMANDAS VALUES(SecComandas.NextVal,    2, 4, 5);

COMMIT;

-- LINEAS_COMANDA --
-- COMANDA 1 --
INSERT INTO LINEAS_COMANDA VALUES(1, 1, 15, 0);
INSERT INTO LINEAS_COMANDA VALUES(2, 1, 48, 0);
INSERT INTO LINEAS_COMANDA VALUES(3, 1, 53, 0);

-- COMANDA 2 --
INSERT INTO LINEAS_COMANDA VALUES(1,  2, 25, 0);
INSERT INTO LINEAS_COMANDA VALUES(2,  2, 97, 0);
INSERT INTO LINEAS_COMANDA VALUES(3,  2, 62, 0);
INSERT INTO LINEAS_COMANDA VALUES(4,  2, 42, 0);

-- COMANDA 3 --
INSERT INTO LINEAS_COMANDA VALUES(1,  3,  38, 0);
INSERT INTO LINEAS_COMANDA VALUES(2,  3,  81, 0);
INSERT INTO LINEAS_COMANDA VALUES(3,  3,  62, 0);

-- COMANDA 4 --
INSERT INTO LINEAS_COMANDA VALUES(1,  4,  10, 0);
INSERT INTO LINEAS_COMANDA VALUES(2,  4,   2, 0);
INSERT INTO LINEAS_COMANDA VALUES(3,  4,   9, 0);
INSERT INTO LINEAS_COMANDA VALUES(4,  4,  78, 0);

-- COMANDA 5 --
INSERT INTO LINEAS_COMANDA VALUES(1,  5,   5, 1);
INSERT INTO LINEAS_COMANDA VALUES(2,  5,  21, 1);
INSERT INTO LINEAS_COMANDA VALUES(3,  5, 101, 1);

-- COMANDA 6 --
INSERT INTO LINEAS_COMANDA VALUES(1,  6,  91, 1);
INSERT INTO LINEAS_COMANDA VALUES(2,  6,  27, 1);
INSERT INTO LINEAS_COMANDA VALUES(3,  6,  53, 1);
INSERT INTO LINEAS_COMANDA VALUES(4,  6,  61, 1);

-- COMANDA 7 --
INSERT INTO LINEAS_COMANDA VALUES(1,  7,  88, 0);
INSERT INTO LINEAS_COMANDA VALUES(2,  7,  77, 0);

-- COMANDA 8 --
INSERT INTO LINEAS_COMANDA VALUES(1,  8,  22, 0);
INSERT INTO LINEAS_COMANDA VALUES(2,  8,  35, 0);
INSERT INTO LINEAS_COMANDA VALUES(3,  8,  56, 0);

-- COMANDA 9 --
INSERT INTO LINEAS_COMANDA VALUES(1,  9,  42, 1);
INSERT INTO LINEAS_COMANDA VALUES(2,  9,  36, 1);
INSERT INTO LINEAS_COMANDA VALUES(3,  9,  21, 1);
-- COMANDA 10 --
INSERT INTO LINEAS_COMANDA VALUES(1, 10,  25, 1);
INSERT INTO LINEAS_COMANDA VALUES(2, 10,  22, 1);

COMMIT;

-- FACTURAS --
INSERT INTO FACTURAS VALUES(SecFacturas.NextVal, 1);
INSERT INTO FACTURAS VALUES(SecFacturas.NextVal, 2);

COMMIT;