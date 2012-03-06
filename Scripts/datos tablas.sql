

    -- Estados de mesas
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
    
    
    -- Tipos de iva
    INSERT INTO tipos_iva (codigo, nombre, porcentaje) VALUES (1, 'Sin IVA', 0);
    INSERT INTO tipos_iva (codigo, nombre, porcentaje) VALUES (2, 'Restaurante', 8);
    
    
    -- mesass
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 1, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 2, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 3, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 4, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 5, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 6, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 7, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 8, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES ( 9, 1);
    INSERT INTO mesas (codigo, codigo_estado) VALUES (10, 1);
    
    
    -- proveedoreses
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('B79265914', 'Coca-Cola', 'C/Ribera Loira 20-22, Madrid', 902199202, 1);
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28006013', 'Heineken', 'Avda de Andaluc�a, N� 1, Sevilla', 902460555,  1);
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A08000820', 'Estrella Damm', 'C/ Rossell� n� 515, Barcelona', 902300125,  1); 
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A09006172', 'Bezoya', 'Avda Manoteras 24, Madrid', 912035500, 1);
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A78593084', 'Frigo', 'Avda. Diagonal 569 Barcelona', 902013456, 1);
    INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28099015', 'Heinz', 'Ctra.Rinc�n de Soto a Corella,La Rioja', 902945184, 1);
    
    
    -- Categor�as
    
    INSERT INTO categorias (codigo, nombre, activo) VALUES (1, 'Guarnici�n', 1);
    INSERT INTO categorias (codigo, nombre, activo) VALUES (2, 'Bebidas', 1);
    INSERT INTO categorias (codigo, nombre, activo) VALUES (3, 'Platos', 1);
    
    
    -- Subcategorias
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 1, 'Mini Ensaladas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 1, 'Patatas', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 3, 1, 'Pan', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 1, 2, 'Refrescos', 1);
    INSERT INTO subcategorias (codigo, codigo_categoria, nombre, activo) VALUES ( 2, 2, 'Bebidas alcoh�licas', 1);
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
    
    
    
    -- SIN CAMBIAR 
    
    --entrantes
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 1, 'Bacon and Cheese Fries', 'Descripci�n del producto',  2.90, 5.45, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 2, 'Flautas Santa Fe', 'Descripci�n del producto', 2.85, 5.35, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 3, 'Combo de Quesadillas', 'Descripci�n del producto', 3.20, 6.40, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 4, 'Aros de Cebolla', 'Descripci�n del producto', 2.30, 4.65, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 5, 'Fingers de Queso Grand Central', 'Descripci�n del producto', 2.65, 5.35, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 6, 'Hollywood Combo', 'Descripci�n del producto',  4.45, 8.95, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 7, 'Macho Nachos Supreme', 'Descripci�n del producto', 2.8, 5.95, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 8, 'Choice Chicken Fingers', 'Descripci�n del producto', 2.6, 5.35, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( 9, 'Alitas de Pollo Duke�S Baby Wings', 'Descripci�n del producto', 2.25, 4.55, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (10, 'Academy Potato Skins', 'Descripci�n del producto', 3.00, 6.00, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (11, 'Fingers de Mozarella', 'Descripci�n del producto', 2.55, 5.35, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (12, 'Jalape�os Tahoe', 'Descripci�n del producto', 3.15, 6.35, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (13, 'Macho Nachos', 'Descripci�n del producto', 2.32, 4.65, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (14, 'Tortita de Trigo Cinematic Chili Chicken', 'Descripci�n del producto', 3.05, 6.15, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (15, 'Sopa de cebolla', 'Descripci�n del producto', 2.30, 4.65, 500, 1, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (16, 'Quesadilla Monterrey', 'Descripci�n del producto', 2.7, 5.20, 500, 1, 3, 50, 10, 2, 1);

    --ensaladas
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (17, 'Santa M�nica Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (18, 'Caesar Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (19, 'Camembert Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (20, 'Tara Salad', 'Descripci�n del producto',  3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (21, 'Foster�S Super Chef Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (22, 'Olivia�S Love Salad', 'Descripci�n del producto',  3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);


    -- texmex 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (23, 'Fajitas El Paso', 'Descripci�n del producto', 8.8, 17.65, 500, 3, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (24, 'Center Stage Cajun Pasta ', 'Descripci�n del producto', 3.7, 7.40, 500, 3, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (25, 'Burrito Pancho ', 'Descripci�n del producto', 3.8, 7.70, 500, 3, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (26, 'Al Sur De La Frontera ', 'Descripci�n del producto', 4.8, 9.65, 500, 3, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (27, 'Chili Con Carne Rio Grande ', 'Descripci�n del producto', 3.15, 6.30, 500, 3, 3, 50, 10, 2, 1);
     

    -- sandwiches
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (28, 'Cotton Club Sandwich', 'Descripci�n del producto', 4.0, 8.00, 500, 4, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (29, 'Philly Cheese Steak Sandwich', 'Descripci�n del producto', 4.20,  8.40, 500, 4, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (30, 'Caesar Sandwich ', 'Descripci�n del producto', 4.10, 8.20, 500, 4, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (31, 'Turkey Sandwich', 'Descripci�n del producto', 3.70, 7.45, 500, 4, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (32, 'Gran Studio Sandwich', 'Descripci�n del producto', 4.20, 8.40, 500, 4, 3, 50, 10, 2, 1);

    -- pollo/pescado  
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (33, 'Pollo Sunset Boulevard', 'Descripci�n del producto', 4.50,  9.05, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (34, 'Pollo a la Barbacoa', 'Descripci�n del producto', 4.30, 8.60, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (35, 'Pollo Beverly Hills', 'Descripci�n del producto', 4.50, 9.05, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (36, 'Teriyaki Chicken Brochette', 'Descripci�n del producto', 4.60, 9.20, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (37, 'Merluza Grill', 'Descripci�n del producto', 5.50, 11.95, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (38, 'Salm�n Papill�n', 'Descripci�n del producto', 5.70, 11.95, 500, 5, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (39, 'El �ltimo Emperador', 'Descripci�n del producto', 5.50, 11.55, 500, 5, 3, 50, 10, 2, 1);

    -- parrilla 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (40, 'Filet Mignon Supreme', 'Descripci�n del producto', 7.60, 15.20, 500, 6, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (41, 'El Neoyorkino Buey', 'Descripci�n del producto', 7.20, 14.55, 500, 6, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (42, 'El Ranchero', 'Descripci�n del producto', 5.00, 10.00, 500, 6, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (43, 'Liteing Delight', 'Descripci�n del producto', 4.50, 9.05, 500, 6, 3, 50, 10, 2, 1);

    -- costillas 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (44, 'Costillas California Honey', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (45, 'Costillas Bar B-Q', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (46, 'Costillas Cajun Style', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (47, 'Costillas Costillas Tex Hot Pepper', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
    
    -- hamburguesas 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (48, 'Director�S Choice', 'Descripci�n del producto', 3.85, 7.90, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (49, 'Chicken Burguer', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (50, 'Onion Patty Melt', 'Descripci�n del producto', 4.05, 8.15, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (51, 'Cheeseburger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (52, 'Champiburger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (53, 'Bacon Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (54, 'Bar B-Q Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (55, 'Todo Americano Burger', 'Descripci�n del producto', 3.60, 7.20,  500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (56, 'Hawaiian Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (57, 'ChiliBurger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (58, 'Roquefort Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (59, 'Mariachi Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (60, 'Gourmet Mediterranian Burger', 'Descripci�n del producto', 4.90, 9.85, 500, 8, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (61, 'Gourmet Le Grand Chef', 'Descripci�n del producto', 4.90, 9.85, 500, 8, 3, 50, 10, 2, 1);

    --platos infantiles 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (62, 'CheeseBurger', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (63, 'Fingers De Pollo', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (64, 'De Luxe Sandwich', 'Descripci�n del producto', 2.00, 4.05, 500, 9, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (65, 'Bocaditos De Merluza Rebozada', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (66, 'Bocaditos Fingers De Queso', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);


    --bebidas- Refrescos 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (67, 'Cocacola Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (68, 'Cocacola Botella 500ml', 'Descripci�n del producto', 0.90, 1.9, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (69, 'Cocacola Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (70, 'Cocacola Ligth Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (71, 'Cocacola Ligth Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (72, 'Cocacola Ligth Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (73, 'Fanta Naranja Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (74, 'Fanta Naranja Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (75, 'Fanta Naranja Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (76, 'Fanta Limon Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (77, 'Fanta Limon Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (78, 'Fanta Limon Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
        
    -- Agua  
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (79, 'Agua 500ml', 'Descripci�n del producto', 0.7, 1.25, 500, 3, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (80, 'Agua 1l', 'Descripci�n del producto', 0.92, 2.00, 500, 3, 2, 50, 10, 2, 1);
    
    -- Cerveza 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (81, 'Cerveza Lata', 'Descripci�n del producto', 0.70, 1.5, 500, 2, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (82, 'Cerveza Tercio 33ml', 'Descripci�n del producto', 0.70, 1.5, 500, 2, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (83, 'Cerveza Pinta 0.5L', 'Descripci�n del producto', 1.42, 2.95, 500, 2, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (84, 'Cerveza Jarra 1L', 'Descripci�n del producto', 2.5, 5, 500, 2, 2, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (85, 'Cerveza Barril 2.5L', 'Descripci�n del producto', 3.85, 8, 500, 2, 2, 50, 10, 2, 1);


    --postres 
    
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (86, 'Choco Cheese Cake', 'Descripci�n del producto', 1.95, 3.95, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (87, 'Pastel de Chocolate', 'Descripci�n del producto', 1.95, 3.95,500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (88, 'Brownies', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (89, 'Sunny Pancakes', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (90, 'Combo De Postres', 'Descripci�n del producto', 3.80, 7.60, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (91, 'The Stars Apangled Banana Split', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (92, 'Helado Supremo', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (93, 'Viva Tiramisu', 'Descripci�n del producto', 1.95, 3.95, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (94, 'Profiteroles Al Estilo New Orleans', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (95, 'New:Oreo Cookie Sundae', 'Descripci�n del producto', 1.95, 4.15, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (96, 'Hawaian Paradise', 'Descripci�n del producto',  1.95, 4.00, 500, 10, 3, 50, 10, 2, 1);
    INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES (97, 'Action Apple Pie', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);

    
    COMMIT;
