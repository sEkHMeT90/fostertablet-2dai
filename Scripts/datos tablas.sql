

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
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28006013', 'Heineken', 'Avda de Andaluc�a, N� 1, Sevilla', 902460555,  1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A08000820', 'Estrella Damm', 'C/ Rossell� n� 515, Barcelona', 902300125,  1); 
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A09006172', 'Bezoya', 'Avda Manoteras 24, Madrid', 912035500, 1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A78593084', 'Frigo', 'Avda. Diagonal 569 Barcelona', 902013456, 1);
  INSERT INTO proveedores (cif, nombre, direccion, telefono, activo) VALUES ('A28099015', 'Heinz', 'Ctra.Rinc�n de Soto a Corella,La Rioja', 902945184, 1);
  
  COMMIT;
  
  -- TABLA Categor�as
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Guarnici�n', 1);
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Bebidas', 1);
  INSERT INTO categorias (codigo, nombre, activo) VALUES ( SecCategorias.NextVal, 'Platos', 1);
  
  COMMIT;
  
  -- TABLA Subcategorias
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
  
  COMMIT;

  -- TABLA productos
    
  --tipos entrantes
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bacon and Cheese Fries', 'Descripci�n del producto',  2.90, 5.45, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Flautas Santa Fe', 'Descripci�n del producto', 2.85, 5.35, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Combo de Quesadillas', 'Descripci�n del producto', 3.20, 6.40, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Aros de Cebolla', 'Descripci�n del producto', 2.30, 4.65, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers de Queso Grand Central', 'Descripci�n del producto', 2.65, 5.35, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hollywood Combo', 'Descripci�n del producto',  4.45, 8.95, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Macho Nachos Supreme', 'Descripci�n del producto', 2.8, 5.95, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Choice Chicken Fingers', 'Descripci�n del producto', 2.6, 5.35, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Alitas de Pollo Duke�S Baby Wings', 'Descripci�n del producto', 2.25, 4.55, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Academy Potato Skins', 'Descripci�n del producto', 3.00, 6.00, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers de Mozarella', 'Descripci�n del producto', 2.55, 5.35, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Jalape�os Tahoe', 'Descripci�n del producto', 3.15, 6.35, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Macho Nachos', 'Descripci�n del producto', 2.32, 4.65, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Tortita de Trigo Cinematic Chili Chicken', 'Descripci�n del producto', 3.05, 6.15, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Sopa de cebolla', 'Descripci�n del producto', 2.30, 4.65, 500, 1, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Quesadilla Monterrey', 'Descripci�n del producto', 2.7, 5.20, 500, 1, 3, 50, 10, 2, 1);
  
  COMMIT;

  --tipos ensaladas
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Santa M�nica Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Caesar Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Camembert Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Tara Salad', 'Descripci�n del producto',  3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Foster�S Super Chef Salad', 'Descripci�n del producto', 3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Olivia�S Love Salad', 'Descripci�n del producto',  3.50, 7.55, 500, 2, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos texmex 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fajitas El Paso', 'Descripci�n del producto', 8.8, 17.65, 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Center Stage Cajun Pasta ', 'Descripci�n del producto', 3.7, 7.40, 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Burrito Pancho ', 'Descripci�n del producto', 3.8, 7.70, 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Al Sur De La Frontera ', 'Descripci�n del producto', 4.8, 9.65, 500, 3, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Chili Con Carne Rio Grande ', 'Descripci�n del producto', 3.15, 6.30, 500, 3, 3, 50, 10, 2, 1);
   
   COMMIT;

  --tipos sandwiches
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cotton Club Sandwich', 'Descripci�n del producto', 4.0, 8.00, 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Philly Cheese Steak Sandwich', 'Descripci�n del producto', 4.20,  8.40, 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Caesar Sandwich ', 'Descripci�n del producto', 4.10, 8.20, 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Turkey Sandwich', 'Descripci�n del producto', 3.70, 7.45, 500, 4, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gran Studio Sandwich', 'Descripci�n del producto', 4.20, 8.40, 500, 4, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos pollo/pescado  
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo Sunset Boulevard', 'Descripci�n del producto', 4.50,  9.05, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo a la Barbacoa', 'Descripci�n del producto', 4.30, 8.60, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pollo Beverly Hills', 'Descripci�n del producto', 4.50, 9.05, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Teriyaki Chicken Brochette', 'Descripci�n del producto', 4.60, 9.20, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Merluza Grill', 'Descripci�n del producto', 5.50, 11.95, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Salm�n Papill�n', 'Descripci�n del producto', 5.70, 11.95, 500, 5, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El �ltimo Emperador', 'Descripci�n del producto', 5.50, 11.55, 500, 5, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos parrilla 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Filet Mignon Supreme', 'Descripci�n del producto', 7.60, 15.20, 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El Neoyorkino Buey', 'Descripci�n del producto', 7.20, 14.55, 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'El Ranchero', 'Descripci�n del producto', 5.00, 10.00, 500, 6, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Liteing Delight', 'Descripci�n del producto', 4.50, 9.05, 500, 6, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos costillas 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas California Honey', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Bar B-Q', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Cajun Style', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Costillas Costillas Tex Hot Pepper', 'Descripci�n del producto', 4.40, 8.95, 500, 7, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos hamburguesas 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Director�S Choice', 'Descripci�n del producto', 3.85, 7.90, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Chicken Burguer', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Onion Patty Melt', 'Descripci�n del producto', 4.05, 8.15, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cheeseburger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Champiburger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bacon Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bar B-Q Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Todo Americano Burger', 'Descripci�n del producto', 3.60, 7.20,  500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hawaiian Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'ChiliBurger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Roquefort Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Mariachi Burger', 'Descripci�n del producto', 3.60, 7.20, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gourmet Mediterranian Burger', 'Descripci�n del producto', 4.90, 9.85, 500, 8, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Gourmet Le Grand Chef', 'Descripci�n del producto', 4.90, 9.85, 500, 8, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos platos infantiles 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'CheeseBurger', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fingers De Pollo', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'De Luxe Sandwich', 'Descripci�n del producto', 2.00, 4.05, 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bocaditos De Merluza Rebozada', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Bocaditos Fingers De Queso', 'Descripci�n del producto', 2.10, 4.35, 500, 9, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos bebidas- Refrescos   
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Botella 500ml', 'Descripci�n del producto', 0.90, 1.9, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cocacola Ligth Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Naranja Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Lata', 'Descripci�n del producto', 0.7, 1.4, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Botella 500ml', 'Descripci�n del producto', 0.9, 1.9, 500, 1, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Fanta Limon Jarra 1l', 'Descripci�n del producto', 1.42, 2.95, 500, 1, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos Agua  
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Agua 500ml', 'Descripci�n del producto', 0.7, 1.25, 500, 3, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Agua 1l', 'Descripci�n del producto', 0.92, 2.00, 500, 3, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos Cerveza 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Lata', 'Descripci�n del producto', 0.70, 1.5, 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Tercio 33ml', 'Descripci�n del producto', 0.70, 1.5, 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Pinta 0.5L', 'Descripci�n del producto', 1.42, 2.95, 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Jarra 1L', 'Descripci�n del producto', 2.5, 5, 500, 2, 2, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Cerveza Barril 2.5L', 'Descripci�n del producto', 3.85, 8, 500, 2, 2, 50, 10, 2, 1);

  COMMIT;

  --tipos postres 
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Choco Cheese Cake', 'Descripci�n del producto', 1.95, 3.95, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Pastel de Chocolate', 'Descripci�n del producto', 1.95, 3.95,500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Brownies', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Sunny Pancakes', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Combo De Postres', 'Descripci�n del producto', 3.80, 7.60, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'The Stars Apangled Banana Split', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Helado Supremo', 'Descripci�n del producto', 2.00, 4.20, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Viva Tiramisu', 'Descripci�n del producto', 1.95, 3.95, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Profiteroles Al Estilo New Orleans', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'New:Oreo Cookie Sundae', 'Descripci�n del producto', 1.95, 4.15, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Hawaian Paradise', 'Descripci�n del producto',  1.95, 4.00, 500, 10, 3, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Action Apple Pie', 'Descripci�n del producto', 1.90, 3.80, 500, 10, 3, 50, 10, 2, 1);

  COMMIT;

  --tipos Guarniciones
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Ensalada de col', 'Descripci�n del producto', 0, 0, 500, 1, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Ensalada de frijoles', 'Descripci�n del producto', 0, 0, 500, 1, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Patats fritas', 'Descripci�n del producto', 0, 0, 500, 2, 1, 50, 10, 2, 1);
  INSERT INTO productos (codigo, nombre, descripcion, precio_coste, pvp, calorias, codigo_subcategoria, codigo_categoria, stock, stock_minimo, codigo_tipo_iva, activo) VALUES ( SecProductos.NextVal, 'Patats asadas', 'Descripci�n del producto', 0, 0, 500, 2, 1, 50, 10, 2, 1);

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
