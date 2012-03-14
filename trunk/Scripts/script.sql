
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
        precio_coste number(5,2) not null,
        pvp number(5,2) not null,
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
        precio_total number(12,2) not null,
        recibido number(1) not null,
        CONSTRAINT PK_PEDIDOS PRIMARY KEY (codigo),
        CONSTRAINT FK_PEDIDOS FOREIGN KEY (cif_proveedor) REFERENCES proveedores (cif)
    );
    
    CREATE TABLE lineas_pedido(
        numero number(3),
        codigo_pedido number(8),
        codigo_producto number(8) not null,
        precio number(6,2) not null,
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
        total number(6,2) not null,
        CONSTRAINT PK_TICKETS PRIMARY KEY (codigo),
        CONSTRAINT FK_TICKETS FOREIGN KEY (codigo_tipo_pago) REFERENCES tipos_pago (codigo)
    );
    
    CREATE TABLE lineas_ticket(
        numero number(4),
        codigo_ticket number(8),
        nombre_producto varchar2(55) not null,
        cantidad number(2) not null,
        descuento number(3) not null,
        precio number(6,2) not null,
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
