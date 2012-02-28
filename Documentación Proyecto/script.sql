
    drop table productos_pedir;
    drop table stock_minimo;
    drop table comandas;
    drop table lineas_comanda;
    drop table estados_comanda;
    drop table mesas;
    drop table estados_mesa;
    drop table lineas_factura;
    drop table facturas;
    drop table tipo_pago;
    drop table guarniciones;
    drop table lineas_pedido; 
    drop table pedidos;
    drop table productos; 
    drop table proveedores;
    drop table subcategorias;
    drop table categorias;
    
    CREATE TABLE categorias
    (
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

    CREATE TABLE proveedores(
        cif VARCHAR2(15) ,
        nombre VARCHAR2(30) not null,
        direccion VARCHAR2(200) not null, 
        telefono VARCHAR2(20) not null,
        activo number(1) not null,
        CONSTRAINT PK_PROVEEDORES PRIMARY KEY (cif),
        CONSTRAINT UK_PROVEEDORES UNIQUE (nombre)
    );
    
    CREATE TABLE productos(
        codigo number(8),
        nombre varchar2(30) not null,
        descripcion varchar2(200) not null,
        precio_coste number(5,2) not null,
        pvp number(5,2) not null,
        calorias number(4) not null,
        codigo_subcategoria number(3) not null,
        codigo_categoria number(3) not null,
        cantidad number(4) not null,    
        activo number(1) not null,
        CONSTRAINT PK_PRODUCTOS PRIMARY KEY (codigo),
        CONSTRAINT UK_PRODUCTOS UNIQUE (nombre),
        CONSTRAINT FK_PRODUCTOS FOREIGN KEY (codigo_subcategoria, codigo_categoria) REFERENCES subcategorias (codigo, codigo_categoria)
    );
    
    CREATE TABLE pedidos(
        codigo number(8),
        fecha  DATE not null,
        cif_proveedor  not null,
        precio_total number(12,2) not null,
        recibido number(1) not null,
        CONSTRAINT PK_PEDIDOS PRIMARY KEY (codigo),
        CONSTRAINT FK_PEDIDOS FOREIGN KEY (cif_proveedor) REFERENCES proveedores (cif)
    );
     
    CREATE TABLE lineas_pedido(
        codigo_pedido number(8),
        numero number(3),
        codigo_producto number(8) not null,
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
        codigo number(3),
        nombre varchar2(30),
        CONSTRAINT PK_TIPO_PAGO PRIMARY KEY (codigo),
        CONSTRAINT UK_TIPO_PAGO UNIQUE (nombre)
    );
    
    CREATE TABLE facturas(
        codigo number(8),
        fecha  date not null,
        precio_total number(6,2) not null,
        codigo_tipo_pago number(3) not null,
        CONSTRAINT PK_FACTURAS PRIMARY KEY (codigo),
        CONSTRAINT FK_FACTURAS FOREIGN KEY (codigo_tipo_pago) REFERENCES tipos_pago (codigo)
    );
    
    CREATE TABLE lineas_factura(
        codigo_factura number(8),
        numero number(3),
        codigo_producto number(8) not null,
        cantidad number(2) not null,
        descuento number(3),
        CONSTRAINT PK_LINEAS_FACTURA PRIMARY KEY (numero, codigo_factura),
        CONSTRAINT FK_LINEAS_FACTURA FOREIGN KEY (codigo_factura) REFERENCES facturas (codigo),
        CONSTRAINT FK_LINEAS_FACTURA_2 FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
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
        codigo_estado number(3) not null,
        codigo_mesa number(3) not null,
        CONSTRAINT PK_COMANDAS PRIMARY KEY (codigo),
        CONSTRAINT FK_COMANDAS FOREIGN KEY (codigo_estado) REFERENCES estados_comanda (codigo),
        CONSTRAINT FK_COMANDAS_2 FOREIGN KEY (codigo_mesa) REFERENCES estados_mesa (codigo)
    );
    
    CREATE TABLE lineas_comanda(
        codigo_comanda number(8),
        numero number(3),
        codigo_producto number(8) not null,
        CONSTRAINT PK_LINEAS_COMANDA PRIMARY KEY (numero, codigo_comanda),
        CONSTRAINT FK_LINEAS_COMANDA FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );
    
    CREATE TABLE stock_minimo(
        codigo_producto number(8),
        minimo number(3) not null,
        cantidad_pedir number(4) not null,
        CONSTRAINT PK_STOCK_MINIMO PRIMARY KEY (codigo_producto),
        CONSTRAINT FK_STOCK_MINIMO FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );
    
    CREATE TABLE productos_pedir(
        codigo_producto number(8),
        CONSTRAINT PK_PRODUCTOS_PEDIR PRIMARY KEY (codigo_producto),
        CONSTRAINT FK_PRODUCTOS_PEDIR FOREIGN KEY (codigo_producto) REFERENCES productos (codigo)
    );


    commit;