

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
    
    --entrantes - 8 3
    
     
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   1, 'Bacon and Cheese Fries', '',  2.90, 5.45, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   2, 'Flautas Santa Fe', '', 2.85, 5.35, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   3, 'Combo de Quesadillas', '', 3.20, 6.40, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   4, 'Aros de Cebolla', '', 2.30, 4.65, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   5, 'Fingers de Queso Grand Central', '', 2.65, 5.35, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   6, 'Hollywood Combo', '',  4.45, 8.95, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   7, 'Macho Nachos Supreme', '', 2.8, 5.95,  3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (   9, 'Choice Chicken Fingers', '', 2.6, 5.35,  8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  10, 'Alitas de Pollo Duke"S Baby Wings', '', 2.25 4.55, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  11, 'Academy Potato Skins', '', 3, 6.00, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  12, 'Fingers de Mozarella', '', 2.55, 5.35, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  13, 'Jalapeños Tahoe', '', 3.15, 6.35, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  14, 'Macho Nachos', '', 2.32, 4.65, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  15, 'Tortita de Trigo Cinematic Chili Chicken', '', 6.15, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  16, 'Sopa de cebolla', '', 4.65, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  17, 'Quesadilla Monterrey', '', 2.7, 5.20, 8, 3, 50, 1);

    --ensaladas - 1 1
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  18, 'Santa Mónica Salad', '', 3.50, 7.55, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  19, 'Caesar Salad', '', 3.50, 7.55, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  20, 'Camembert Salad', '', 3.50, 7.55, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  22, 'Tara Salad', '',  3.50, 7.55, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  23, 'Foster´S Super Chef Salad', '', 3.50, 7.55, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  24, 'Olivia´S Love Salad', '',  3.50, 7.55, 1, 1, 50, 1);


    -- texmex - 10  3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  26, 'Fajitas El Paso', '', 8.8, 17.65,  10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  27, 'Center Stage Cajun Pasta ', '', 3.7, 7.40,  10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  28, 'Burrito Pancho ', '', 3.8, 7.70, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  29, 'Al Sur De La Frontera ', '', 4.8, 9.65, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  30, 'Chili Con Carne Rio Grande ', '', 3.15, 6.30,  10, 3, 50, 1);
     

    -- sandwiches - 11   3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  32, 'Cotton Club Sandwich', '', 4.0, 8.00,  11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  33, 'Philly Cheese Steak Sandwich', '', 4.20,  8.40,  11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  34, 'Caesar Sandwich ', '', 4.10, 8.20,  11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  35, 'Turkey Sandwich', '', 3.70, 7.45,  11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  36, 'Cotton Club Sandwich', '', 4.00,  8.00, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  37, 'Gran Studio Sandwich', '', 4.20, 8.40,  11, 3, 50, 1);

    -- pollo/pescado - 12  3  
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  38, 'Pollo Sunset Boulevard', '',  9.05, 12, 3, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  39, 'Pollo a la Barbacoa', '',  8.60, 1, 5, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  40, 'Pollo Beverly Hills', '',  9.05, 1, 5, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  41, 'Teriyaki Chicken Brochette', '',  9.20, 1, 5, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  42, 'Merluza Grill', '',  11.95, 1, 5, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  43, 'Salmón Papillón', '',  11.95, 1, 5, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  44, 'El Último Emperador', '', , 11.55, 1, 5, 1, 50, 5, 1, 0, 1); 

    -- parrila -- 6
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  45, 'Filet Mignon Supreme', '', '', 0, 0, 15.20, 1, 6, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  46, 'El Neoyorkino Buey', '', '', 0, 0, 12.45, 1, 6, 1, 50, 5, 1, 0, 1);   
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  47, 'El Neoyorkino Buey', '', '', 0, 0, 14.55, 1, 6, 2, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  48, 'El Ranchero', '', '', 0, 0, 10.00, 1, 6, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  49, 'Liteing Delight', '', '', 0, 0, 9.05, 1, 6, 1, 50, 5, 1, 0, 1); 


    -- costillas --7  
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  50, 'Costillas California Honey', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  51, 'Costillas California Honey', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  52, 'Costillas Bar B-Q', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  53, 'Costillas Bar B-Q', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  54, 'Costillas Cajun Style', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  55, 'Costillas Cajun Style', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  56, 'Costillas Costillas Tex Hot Pepper', '', '', 0, 0, 8.95, 1, 7, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  57, 'Costillas Costillas Tex Hot Pepper', '', '', 0, 0, 12.65, 1, 7, 2, 50, 5, 1, 0, 1); 

    -- hamburguesas --8  
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  58, 'Director´S Choice', '', '', 0, 0, 7.90, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  61, 'Chicken Burguer', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  62, 'Onion Patty Melt', '', '', 0, 0, 8.15, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  63, 'Cheeseburger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  66, 'Champiburger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  69, 'Bacon Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  72, 'Bar B-Q Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  75, 'Todo Americano Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  78, 'Hawaiian Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  81, 'ChiliBurger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  84, 'Roquefort Burger', '', '', 0, 0, 7.20, 1, 8, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  87, 'Mariachi Burger', '', '', 0, 0, 7.20, 1, 8, 1,50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  90, 'Gourmet Mediterranian Burger', '', '', 0, 0, 9.85, 1, 8, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  91, 'Gourmet Le Grand Chef', '', '', 0, 0, 9.85, 1, 8, 1, 50, 5, 1, 0, 1);

    --platos infantiles --9 
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  92, 'Hamburguesas', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  93, 'CheeseBurger', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  94, 'Fingers De Pollo', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  95, 'De Luxe Sandwich', '', '', 0, 0, 4.05, 1, 9, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  96, 'Bocaditos De Merluza Rebozada', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  97, 'Bocaditos Fingers De Queso', '', '', 0, 0, 4.35, 1, 9, 1, 50, 5, 1, 0, 1);  


    --bebidas- -10
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  98, 'Cocacola Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  99, 'Cocacola Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 100, 'Cocacola Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 101, 'Cocacola Ligth Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 102, 'Cocacola Ligth Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 103, 'Cocacola Ligth Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 104, 'Fanta Naranja Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 105, 'Fanta Naranja Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 106, 'Fanta Naranja Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 107, 'Fanta Limon Lata', 'Bebida Refrescante', '', 0, 0, 1.4, 1, 10, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 108, 'Fanta Limon Botella 500ml', 'Bebida Refrescante', '', 0, 0, 1.9, 1, 10, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 109, 'Fanta Limon Jarra 1l', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 110, 'Agua 500ml', 'Bebida Refrescante', '', 0, 0, 1.25, 1, 10, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 111, 'Agua 1l', 'Bebida Refrescante', '', 0, 0, 2.00, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 112, 'Cerveza Lata', 'Bebida Refrescante', '', 0, 0, 1.5, 1, 10, 1, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 113, 'Cerveza Tercio 33ml', 'Bebida Refrescante', '', 0, 0, 1.5, 1, 10, 2, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 114, 'Cerveza Pinta 0.5L', 'Bebida Refrescante', '', 0, 0, 2.95, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 115, 'Cerveza Jarra 1L', 'Bebida Refrescante', '', 0, 0, 5, 1, 10, 3, 50, 5, 1, 0, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 116, 'Cerveza Barril 2.5L', 'Bebida Refrescante', '', 0, 0, 8, 1, 10, 3, 50, 5, 1, 0, 1);


    --postres --11
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 117, 'Choco Cheese Cake', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 118, 'Pastel de Chocolate', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 119, 'Brownies', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 121, 'Sunny Pancakes', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 122, 'Combo De Postres', '', '', 0, 0, 7.60, 1, 11, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 123, 'The Stars Apangled Banana Split', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 124, 'Helado Supremo', '', '', 0, 0, 4.20, 1, 11, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 125, 'Viva Tiramisu', '', '', 0, 0, 3.95, 1, 11, 1, 50, 5, 1, 0, 1);  
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 126, 'Profiteroles Al Estilo New Orleans', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 127, 'New:Oreo Cookie Sundae', '', '', 0, 0, 4.15, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 128, 'Hawaian Paradise', '', '', 0, 0, 4.00, 1, 11, 1, 50, 5, 1, 0, 1); 
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 129, 'Action Apple Pie', '', '', 0, 0, 3.80, 1, 11, 1, 50, 5, 1, 0, 1);

    
    
    COMMIT;
