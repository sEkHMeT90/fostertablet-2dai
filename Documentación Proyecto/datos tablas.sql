

    -- Estados de mesa
    INSERT INTO estados_mesa (codigo, nombre) VALUES (1, 'Libre');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (2, 'Ocupada');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (3, 'Esperando pedido');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (4, 'Esperando ticket');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (5, 'Esperando cobro');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (6, 'Esperando camarero');
    INSERT INTO estados_mesa (codigo, nombre) VALUES (7, 'Por limpiar');


    -- Estados de comanda
    INSERT INTO estados_comanda (codigo, nombre) VALUES (1, 'Pendiente');
    INSERT INTO estados_comanda (codigo, nombre) VALUES (2, 'En proceso');
    INSERT INTO estados_comanda (codigo, nombre) VALUES (3, 'Entregada');
    INSERT INTO estados_comanda (codigo, nombre) VALUES (4, 'Pagada');
    
    
    -- Tipos de pago
    INSERT INTO tipos_pago (codigo, nombre) VALUES (1, 'Efectivo');
    INSERT INTO tipos_pago (codigo, nombre) VALUES (2, 'Tarjeta');
    INSERT INTO tipos_pago (codigo, nombre) VALUES (3, 'Checkes de comida');
    
    
    -- Mesas
    INSERT INTO mesa (codigo, codigo_estado) VALUES (1, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (2, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (3, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (4, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (5, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (6, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (7, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (8, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (9, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES (10, 1);
    
    
    -- Proveedores
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('B79265914', 'Coca-Cola', 'C/Ribera Loira 20-22, Madrid', 902199202, 1);
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('A28006013', 'Heineken', 'Avda de Andalucía, Nº 1, Sevilla', 902460555,  1);
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('A08000820', 'Estrella Damm', 'C/ Rosselló nº 515, Barcelona', 902300125,  1); 
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('A09006172', 'Bezoya', 'Avda Manoteras 24, Madrid', 912035500, 1);
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('A78593084', 'Frigo', 'Avda. Diagonal 569 Barcelona', 902013456, 1);
    INSERT INTO proveedor (cif, nombre, direccion, telefono, activo) VALUES ('A78593084', 'Heinz', 'Ctra.Rincón de Soto a Corella,La Rioja', 902945184, 1);
    
    
    -- Categorías
    
    INSERT INTO categorias (codigo, nombre, activo) VALUES (1, 'Guarnición', 1);
    INSERT INTO categorias (codigo, nombre, activo) VALUES (2, 'Bebidas', 1);
    INSERT INTO categorias (codigo, nombre, activo) VALUES (3, 'Platos', 1);
    
    
    -- Subcategorias
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 1, 'Ensaladas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 1, 'Patatas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 3, 1, 'Pan', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 4, 2, 'Refrescos', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 5, 2, 'Bebidas alcohólicas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 6, 2, 'Agua', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 7, 2, 'Cafes e infusiones', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 8, 3, 'Entrantes', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 9, 3, 'Ensaladas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (10, 3, 'Tex Mex', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (11, 3, 'Sandwiches', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (12, 3, 'Pollo y pescado', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (13, 3, 'Parrilla', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (14, 3, 'Costillas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (15, 3, 'Hamburguesas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (16, 3, 'Platos infantiles', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES (17, 3, 'Postres', 1);
    
    
    
    -- SIN CAMBIAR 
    
    --entrantes - 1
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bacon and Cheese Fries', '', '', 0, 0, 5.45, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Flautas Santa Fe', '', '', 0, 0, 5.35, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Combo de Quesadillas', '', '', 0, 0, 6.40, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Aros de Cebolla', '', '', 0, 0, 4.65, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fingers de Queso Grand Central', '', '', 0, 50, 5.35, 1, 1, 1, 0, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hollywood Combo', '', '', 0, 0, 8.95, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Macho Nachos Supreme', '', '', 0, 0, 5.95, 1, 1, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Macho Nachos Supreme', '', '', 0, 0, 5.95, 1, 1, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Choice Chicken Fingers', '', '', 0, 0, 5.35, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Alitas de Pollo Duke"S Baby Wings', '', '', 0, 0, 4.55, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Academy Potato Skins', '', '', 0, 0, 6.00, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fingers de Mozarella', '', '', 0, 0, 5.35, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Jalapeños Tahoe', '', '', 0, 0, 6.35, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Macho Nachos', '', '', 0, 0, 4.65, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Tortita de Trigo Cinematic Chili Chicken', '', '', 0, 0, 6.15, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Sopa de cebolla', '', '', 0, 0, 4.65, 1, 1, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Quesadilla Monterrey', '', '', 0, 0, 5.20, 1, 1, 1, 50, 5, 1, 0, 1);

commit;

--ensaladas -2
insert into producto values(FOSTERS."SeqProducto".nextval, 'Santa Mónica Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Caesar Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Camembert Salad', '', '', 0, 0, 7.55, 1,2, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Caesar Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Tara Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Foster"S Super Chef Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Olivia"S Love Salad', '', '', 0, 0, 7.55, 1, 2, 1, 50, 5, 1, 0, 1); 

commit;

-- texmex -3 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fajitas El Paso ', '', '', 0, 0, 11.65, 1, 3, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fajitas El Paso', '', '', 0, 0, 17.65, 1, 3, 2, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Center Stage Cajun Pasta ', '', '', 0, 0, 7.40, 1, 3, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Burrito Pancho ', '', '', 0, 0, 7.70, 1, 3, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Al Sur De La Frontera ', '', '', 0, 0, 9.65, 1, 3, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Chili Con Carne Rio Grande ', '', '', 0, 0, 6.30, 1, 3, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Chili Con Carne Rio Grande ', '', '', 0, 0, 4.50, 1, 3, 1, 50, 5, 1, 0, 1);  
 
commit;

-- sandwiches -4 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cotton Club Sandwich', '', '', 0, 0, 8.00, 1, 4, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Philly Cheese Steak Sandwich', '', '', 0, 0, 8.40, 1, 4, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Caesar Sandwich ', '', '', 0, 0, 8.20, 1, 4, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Turkey Sandwich', '', '', 0, 0, 7.45, 1, 4, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cotton Club Sandwich', '', '', 0, 0, 8.00, 1, 4, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Gran Studio Sandwich', '', '', 0, 0, 8.40, 1, 4, 1, 50, 5, 1, 0, 1); 

commit;

-- pollo/pescado -5  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Pollo Sunset Boulevard', '', '', 0, 0, 9.05, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Pollo a la Barbacoa', '', '', 0, 0, 8.60, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Pollo Beverly Hills', '', '', 0, 0, 9.05, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Teriyaki Chicken Brochette', '', '', 0, 0, 9.20, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Merluza Grill', '', '', 0, 0, 11.95, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Salmón Papillón', '', '', 0, 0, 11.95, 1, 5, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'El Último Emperador', '', '', 0, 0, 11.55, 1, 5, 1, 50, 5, 1, 0, 1); 

commit;

-- parrila --6
insert into producto values(FOSTERS."SeqProducto".nextval, 'Filet Mignon Supreme', '', '', 0, 0, 15.20, 1, 6, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'El Neoyorkino Buey', '', '', 0, 0, 12.45, 1, 6, 1, 50, 5, 1, 0, 1);   
insert into producto values(FOSTERS."SeqProducto".nextval, 'El Neoyorkino Buey', '', '', 0, 0, 14.55, 1, 6, 2, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'El Ranchero', '', '', 0, 0, 10.00, 1, 6, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Liteing Delight', '', '', 0, 0, 9.05, 1, 6, 1, 50, 5, 1, 0, 1); 

commit;

-- costillas --7 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas California Honey', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas California Honey', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Bar B-Q', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Bar B-Q', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Cajun Style', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Cajun Style', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Costillas Tex Hot Pepper', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Costillas Costillas Tex Hot Pepper', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 

commit;

-- hamburguesas --8 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Director"S Choice', '', '', 0, 0, 7.90, 1, 8, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Director"S Choice', '', '', 0, 0, 9.50, 1, 8, 2, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Director"S Choice', '', '', 0, 0, 10.55, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Chicken Burguer', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Onion Patty Melt', '', '', 0, 0, 8.15, 1, 8, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cheeseburger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cheeseburger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cheeseburger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Champiburger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Champiburger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Champiburger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bacon Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bacon Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bacon Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bar B-Q Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bar B-Q Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bar B-Q Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Todo Americano Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Todo Americano Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Todo Americano Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hawaiian Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hawaiian Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hawaiian Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'ChiliBurger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'ChiliBurger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'ChiliBurger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Roquefort Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Roquefort Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Roquefort Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Mariachi Burger', '', '', 0, 0, 7.20, 1, 8, 1,50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Mariachi Burger', '', '', 0, 0, 9.05, 1, 8, 2, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Mariachi Burger', '', '', 0, 0, 10.05, 1, 8, 3, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Gourmet Mediterranian Burger', '', '', 0, 0, 9.85, 1, 8, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Gourmet Le Grand Chef', '', '', 0, 0, 9.85, 1, 8, 1, 50, 5, 1, 0, 1);

commit;

--platos infantiles --9 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hamburguesas', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'CheeseBurger', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fingers De Pollo', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'De Luxe Sandwich', '', '', 0, 0, 4.05, 1, 9, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bocaditos De Merluza Rebozada', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Bocaditos Fingers De Queso', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  

commit;

--bebidas- -10
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Ligth Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Ligth Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cocacola Ligth Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Naranja Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Naranja Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Naranja Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Limon Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Limon Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Fanta Limon Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Agua 500ml', 'Bebida Refrescante', '', 0, 0, 1.25, 1, 10, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Agua 1l', 'Bebida Refrescante', '', 0, 0, 2.00, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cerveza Lata', 'Bebida Refrescante', '', 0, 0, 1.5, 1, 10, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cerveza Tercio 33ml', 'Bebida Refrescante', '', 0, 0, 1.5, 1, 10, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cerveza Pinta 0.5L', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cerveza Jarra 1L', 'Bebida Refrescante', '', 0, 0, 5, 1, 10, 3, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Cerveza Barril 2.5L', 'Bebida Refrescante', '', 0, 0, 8, 1, 10, 3, 50, 5, 1, 0, 1);

commit;

--postres --11
insert into producto values(FOSTERS."SeqProducto".nextval, 'Choco Cheese Cake', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Pastel de Chocolate', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Brownies', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Brownies', '', '', 0, 0, 4.95, 1, 11, 2, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Sunny Pancakes', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Combo De Postres', '', '', 0, 0, 7.60, 1, 11, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'The Stars Apangled Banana Split', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Helado Supremo', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Viva Tiramisu', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1);  
insert into producto values(FOSTERS."SeqProducto".nextval, 'Profiteroles Al Estilo New Orleans', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'New:Oreo Cookie Sundae', '', '', 0, 0, 4.15, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Hawaian Paradise', '', '', 0, 0, 4.00, 1, 11, 1, 50, 5, 1, 0, 1); 
insert into producto values(FOSTERS."SeqProducto".nextval, 'Action Apple Pie', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1);
insert into producto values(FOSTERS."SeqProducto".nextval, 'Action Apple Pie', '', '', 0, 0, 4.55, 1, 11, 2, 50, 5, 1, 0, 1); 

    
    
    COMMIT;
