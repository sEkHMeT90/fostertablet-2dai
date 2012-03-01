

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
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 1, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 2, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 3, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 4, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 5, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 6, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 7, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 8, 1);
    INSERT INTO mesa (codigo, codigo_estado) VALUES ( 9, 1);
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
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  1, 'Bacon and Cheese Fries', 'Descripción del producto',  2.90, 5.45, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  2, 'Flautas Santa Fe', 'Descripción del producto', 2.85, 5.35, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  3, 'Combo de Quesadillas', 'Descripción del producto', 3.20, 6.40, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  4, 'Aros de Cebolla', 'Descripción del producto', 2.30, 4.65, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  5, 'Fingers de Queso Grand Central', 'Descripción del producto', 2.65, 5.35, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  6, 'Hollywood Combo', 'Descripción del producto',  4.45, 8.95, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  7, 'Macho Nachos Supreme', 'Descripción del producto', 2.8, 5.95, 500,  3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  8, 'Choice Chicken Fingers', 'Descripción del producto', 2.6, 5.35, 500,  8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (  9, 'Alitas de Pollo Duke"S Baby Wings', 'Descripción del producto', 2.25, 4.55, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 10, 'Academy Potato Skins', 'Descripción del producto', 3.00, 6.00, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 11, 'Fingers de Mozarella', 'Descripción del producto', 2.55, 5.35, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 12, 'Jalapeños Tahoe', 'Descripción del producto', 3.15, 6.35, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 13, 'Macho Nachos', 'Descripción del producto', 2.32, 4.65, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 14, 'Tortita de Trigo Cinematic Chili Chicken', 'Descripción del producto', 6.15, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 15, 'Sopa de cebolla', 'Descripción del producto', 4.65, 500, 8, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 16, 'Quesadilla Monterrey', 'Descripción del producto', 2.7, 5.20, 500, 8, 3, 50, 1);

    --ensaladas - 1 1
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 17, 'Santa Mónica Salad', 'Descripción del producto', 3.50, 7.55, 500, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 18, 'Caesar Salad', 'Descripción del producto', 3.50, 7.55, 500, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 19, 'Camembert Salad', 'Descripción del producto', 3.50, 7.55, 500, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 20, 'Tara Salad', 'Descripción del producto',  3.50, 7.55, 500, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 21, 'Foster´S Super Chef Salad', 'Descripción del producto', 3.50, 7.55, 500, 1, 1, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 22, 'Olivia´S Love Salad', 'Descripción del producto',  3.50, 7.55, 500, 1, 1, 50, 1);


    -- texmex - 10  3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 23, 'Fajitas El Paso', 'Descripción del producto', 8.8, 17.65, 500, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 24, 'Center Stage Cajun Pasta ', 'Descripción del producto', 3.7, 7.40, 500, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 25, 'Burrito Pancho ', 'Descripción del producto', 3.8, 7.70, 500, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 26, 'Al Sur De La Frontera ', 'Descripción del producto', 4.8, 9.65, 500, 10, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 27, 'Chili Con Carne Rio Grande ', 'Descripción del producto', 3.15, 6.30, 500, 10, 3, 50, 1);
     

    -- sandwiches - 11   3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 28, 'Cotton Club Sandwich', 'Descripción del producto', 4.0, 8.00, 500, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 29, 'Philly Cheese Steak Sandwich', 'Descripción del producto', 4.20,  8.40, 500, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 30, 'Caesar Sandwich ', 'Descripción del producto', 4.10, 8.20, 500, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 31, 'Turkey Sandwich', 'Descripción del producto', 3.70, 7.45, 500, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 32, 'Cotton Club Sandwich', 'Descripción del producto', 4.00, 8.00, 500, 11, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 33, 'Gran Studio Sandwich', 'Descripción del producto', 4.20, 8.40, 500, 11, 3, 50, 1);

    -- pollo/pescado - 12  3  
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 34, 'Pollo Sunset Boulevard', 'Descripción del producto', 4.50,  9.05, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 35, 'Pollo a la Barbacoa', 'Descripción del producto', 4.30, 8.60, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 36, 'Pollo Beverly Hills', 'Descripción del producto', 4.50, 9.05, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 37, 'Teriyaki Chicken Brochette', 'Descripción del producto', 4.60, 9.20, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 38, 'Merluza Grill', 'Descripción del producto', 5.50, 11.95, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 39, 'Salmón Papillón', 'Descripción del producto', 5.70, 11.95, 500, 12, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 40, 'El Último Emperador', 'Descripción del producto', 5.50, 11.55, 500, 12, 3, 50, 1);

    -- parrilla --  13    3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 41, 'Filet Mignon Supreme', 'Descripción del producto', 7.60, 15.20, 500, 13, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 42, 'El Neoyorkino Buey', 'Descripción del producto', 7.20, 14.55, 500, 13, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 43, 'El Ranchero', 'Descripción del producto', 5.00, 10.00, 500, 13, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 44, 'Liteing Delight', 'Descripción del producto', 4.50, 9.05, 500, 13, 3, 50, 1);

    -- costillas --   14 3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 45, 'Costillas California Honey', 'Descripción del producto', 4.40, 8.95, 500, 14, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 46, 'Costillas Bar B-Q', 'Descripción del producto', 4.40, 8.95, 500, 14, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 47, 'Costillas Cajun Style', 'Descripción del producto', 4.40, 8.95, 500, 14, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 48, 'Costillas Costillas Tex Hot Pepper', 'Descripción del producto', 4.40, 8.95, 500, 14, 3, 50, 1);

    -- hamburguesas --   15 3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 49, 'Director´S Choice', 'Descripción del producto', 3.85, 7.90, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 50, 'Chicken Burguer', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 51, 'Onion Patty Melt', 'Descripción del producto', 4.05, 8.15, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 52, 'Cheeseburger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 53, 'Champiburger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 54, 'Bacon Burger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 55, 'Bar B-Q Burger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 56, 'Todo Americano Burger', 'Descripción del producto', 3.60, 7.20,  500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 57, 'Hawaiian Burger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 60, 'ChiliBurger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 61, 'Roquefort Burger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 62, 'Mariachi Burger', 'Descripción del producto', 3.60, 7.20, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 63, 'Gourmet Mediterranian Burger', 'Descripción del producto', 4.90, 9.85, 500, 15, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 64, 'Gourmet Le Grand Chef', 'Descripción del producto', 4.90, 9.85, 500, 15, 3, 50, 1);

    --platos infantiles --  16   3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 65, 'Hamburguesas', 'Descripción del producto', 'Descripción del producto', 2.10, 4.35, 500, 16, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 66, 'CheeseBurger', 'Descripción del producto', 'Descripción del producto', 2.10, 4.35, 500, 16, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 67, 'Fingers De Pollo', 'Descripción del producto', 2.10, 4.35, 500, 16, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 68, 'De Luxe Sandwich', 'Descripción del producto', 2.00, 4.05, 500, 16, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 69, 'Bocaditos De Merluza Rebozada', 'Descripción del producto', 2.10, 4.35, 500, 16, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 70, 'Bocaditos Fingers De Queso', 'Descripción del producto', 2.10, 4.35, 500, 16, 3, 50, 1);


    --bebidas- Refrescos -  4   2
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 71, 'Cocacola Lata', 'Descripción del producto', 0.7, 1.4, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 72, 'Cocacola Botella 500ml', 'Descripción del producto', 0.90, 1.9, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 73, 'Cocacola Jarra 1l', 'Descripción del producto', 1.45, 2.95, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 74, 'Cocacola Ligth Lata', 'Descripción del producto', 0.7, 1.4, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 75, 'Cocacola Ligth Botella 500ml', 'Descripción del producto', 0.9, 1.9, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 76, 'Cocacola Ligth Jarra 1l', 'Descripción del producto', 1.45, 2.95, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 77, 'Fanta Naranja Lata', 'Descripción del producto', 0.7, 1.4, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 78, 'Fanta Naranja Botella 500ml', 'Descripción del producto', 0.9, 1.9, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 79, 'Fanta Naranja Jarra 1l', 'Descripción del producto', 1.45, 2.95, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 80, 'Fanta Limon Lata', 'Descripción del producto', 0.7, 1.4, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 81, 'Fanta Limon Botella 500ml', 'Descripción del producto', 0.9, 1.9, 500, 4, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 82, 'Fanta Limon Jarra 1l', 'Descripción del producto', 1.45, 2.95, 500, 4, 2, 50, 1);
        
    -- Agua   6   2
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 83, 'Agua 500ml', 'Descripción del producto', 0.7, 1.25, 500, 6, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 84, 'Agua 1l', 'Descripción del producto', 0.95, 2.00, 500, 6, 2, 50, 1);
    
    -- Cerveza   5   2
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 85, 'Cerveza Lata', 'Descripción del producto', 0.70, 1.5, 500, 5, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 86, 'Cerveza Tercio 33ml', 'Descripción del producto', 0.70, 1.5, 500, 5, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 87, 'Cerveza Pinta 0.5L', 'Descripción del producto', 1.45, 2.95, 500, 5, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 88, 'Cerveza Jarra 1L', 'Descripción del producto', 2.5, 5, 500, 5, 2, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 89, 'Cerveza Barril 2.5L', 'Descripción del producto', 3.85, 8, 500, 5, 2, 50, 1);


    --postres -- 17  3
    
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 90, 'Choco Cheese Cake', 'Descripción del producto', 1.95, 3.95, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 91, 'Pastel de Chocolate', 'Descripción del producto', 1.95, 3.95,500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 92, 'Brownies', 'Descripción del producto', 2.00, 4.20, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 93, 'Sunny Pancakes', 'Descripción del producto', 1.90, 3.80, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 94, 'Combo De Postres', 'Descripción del producto', 3.80, 7.60, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 95, 'The Stars Apangled Banana Split', 'Descripción del producto', 2.00, 4.20, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 96, 'Helado Supremo', 'Descripción del producto', 2.00, 4.20, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 97, 'Viva Tiramisu', 'Descripción del producto', 1.95, 3.95, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 98, 'Profiteroles Al Estilo New Orleans', 'Descripción del producto', 1.90, 3.80, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES ( 99, 'New:Oreo Cookie Sundae', 'Descripción del producto', 1.95, 4.15, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (100, 'Hawaian Paradise', 'Descripción del producto',  1.95, 4.00, 500, 17, 3, 50, 1);
    INSERT INTO producto (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, cantidad, activo) VALUES (101, 'Action Apple Pie', 'Descripción del producto', 1.90, 3.80, 500, 17, 3, 50, 1);

    
    COMMIT;
