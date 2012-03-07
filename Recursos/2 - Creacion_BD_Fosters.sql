/*
Created: 13/03/2011
Modified: 13/03/2011
Model: RE Oracle 10g
Database: Fosters
*/


-- Create sequences section -------------------------------------------------

CREATE SEQUENCE "FOSTERS"."SeqProducto"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqCategoria"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqTamanyo"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqIVA"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqMenu"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqOferta"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqTipoOferta"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqAlbaran"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqLineaAlbaran"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqPedido"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqLineaPedido"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqProveedor"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqComanda"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqLineaComanda"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqMesa"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqEstadoMesa"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqHistoricoMesa"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqEmpleado"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqTipoPago"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqTicket"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqArticuloTicket"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

CREATE SEQUENCE "FOSTERS"."SeqRango"
 INCREMENT BY 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20
/

-- Create tables section -------------------------------------------------

-- Table FOSTERS.ALBARAN_ENTRADA

CREATE TABLE "FOSTERS"."ALBARAN_ENTRADA"(
  "ID_ALBARAN" Number CONSTRAINT "SYS_C005918" NOT NULL,
  "FECHA" Date CONSTRAINT "SYS_C005919" NOT NULL,
  "ID_PROVEEDOR" Number CONSTRAINT "SYS_C005920" NOT NULL
)
/

-- Add keys for table FOSTERS.ALBARAN_ENTRADA

ALTER TABLE "FOSTERS"."ALBARAN_ENTRADA" ADD CONSTRAINT "PKAlbaranEntrada" PRIMARY KEY ("ID_ALBARAN")
/

-- Table FOSTERS.CATEGORIA

CREATE TABLE "FOSTERS"."CATEGORIA"(
  "ID_CATEGORIA" Number CONSTRAINT "SYS_C005898" NOT NULL,
  "NOMBRE_CATEGORIA" Varchar2(30 ) CONSTRAINT "SYS_C005899" NOT NULL
)
/

-- Add keys for table FOSTERS.CATEGORIA

ALTER TABLE "FOSTERS"."CATEGORIA" ADD CONSTRAINT "PKCategoria" PRIMARY KEY ("ID_CATEGORIA")
/

-- Table FOSTERS.COMANDA

CREATE TABLE "FOSTERS"."COMANDA"(
  "ID_COMANDA" Number CONSTRAINT "SYS_C005956" NOT NULL,
  "ID_MESA" Number CONSTRAINT "SYS_C005957" NOT NULL,
  "FECHA_COMANDA" Date CONSTRAINT "SYS_C005958" NOT NULL
)
/

-- Add keys for table FOSTERS.COMANDA

ALTER TABLE "FOSTERS"."COMANDA" ADD CONSTRAINT "PKComanda" PRIMARY KEY ("ID_COMANDA")
/

-- Table FOSTERS.EMPLEADO

CREATE TABLE "FOSTERS"."EMPLEADO"(
  "ID_EMPLEADO" Number CONSTRAINT "SYS_C005980" NOT NULL,
  "NOMBRE_EMPLEADO" Varchar2(30 ) CONSTRAINT "SYS_C005981" NOT NULL,
  "APELLIDOS" Varchar2(60 ) CONSTRAINT "SYS_C005982" NOT NULL,
  "TELEFONO" Number(9,0) CONSTRAINT "SYS_C005983" NOT NULL,
  "TELEFONO2" Number(9,0),
  "DIRECCION" Varchar2(200 ) CONSTRAINT "SYS_C005984" NOT NULL,
  "EMAIL" Varchar2(120 ),
  "ID_RANGO" Number CONSTRAINT "SYS_C005985" NOT NULL,
  "NIF" Varchar2(9 )
)
/

-- Add keys for table FOSTERS.EMPLEADO

ALTER TABLE "FOSTERS"."EMPLEADO" ADD CONSTRAINT "PKEmpleado" PRIMARY KEY ("ID_EMPLEADO")
/

-- Table FOSTERS.EMPRESA

CREATE TABLE "FOSTERS"."EMPRESA"(
  "NOMBRE_EMPRESA" Varchar2(30 ) CONSTRAINT "SYS_C005987" NOT NULL,
  "DIRECCION" Varchar2(200 ) CONSTRAINT "SYS_C005988" NOT NULL,
  "NIF" Varchar2(9 ) CONSTRAINT "SYS_C005989" NOT NULL,
  "TELEFONO" Number(9,0) CONSTRAINT "SYS_C005990" NOT NULL,
  "EMAIL" Varchar2(120 )
)
/

-- Table FOSTERS.ESTADO_MESA

CREATE TABLE "FOSTERS"."ESTADO_MESA"(
  "ID_ESTADO" Number CONSTRAINT "SYS_C005945" NOT NULL,
  "NOMBRE_ESTADO" Varchar2(30 ) CONSTRAINT "SYS_C005946" NOT NULL
)
/

-- Add keys for table FOSTERS.ESTADO_MESA

ALTER TABLE "FOSTERS"."ESTADO_MESA" ADD CONSTRAINT "PKEstadoMesa" PRIMARY KEY ("ID_ESTADO")
/

-- Table FOSTERS.HISTORICO_MESA

CREATE TABLE "FOSTERS"."HISTORICO_MESA"(
  "NUM_REGISTRO" Number CONSTRAINT "SYS_C005951" NOT NULL,
  "ID_MESA" Number CONSTRAINT "SYS_C005952" NOT NULL,
  "ID_ESTADO" Number CONSTRAINT "SYS_C005953" NOT NULL,
  "FECHA" Date CONSTRAINT "SYS_C005954" NOT NULL
)
/

-- Add keys for table FOSTERS.HISTORICO_MESA

ALTER TABLE "FOSTERS"."HISTORICO_MESA" ADD CONSTRAINT "PKHistoricoMesa" PRIMARY KEY ("NUM_REGISTRO")
/

-- Table FOSTERS.IVA

CREATE TABLE "FOSTERS"."IVA"(
  "ID_IVA" Number CONSTRAINT "SYS_C005904" NOT NULL,
  "VALOR" Number(5,2) CONSTRAINT "SYS_C005905" NOT NULL
)
/

-- Add keys for table FOSTERS.IVA

ALTER TABLE "FOSTERS"."IVA" ADD CONSTRAINT "PKIva" PRIMARY KEY ("ID_IVA")
/

-- Table FOSTERS.LINEA_ALBARAN

CREATE TABLE "FOSTERS"."LINEA_ALBARAN"(
  "ID_LINEA" Number CONSTRAINT "SYS_C005922" NOT NULL,
  "ID_ALBARAN" Number CONSTRAINT "SYS_C005923" NOT NULL,
  "CANTIDAD" Number(10,0) CONSTRAINT "SYS_C005924" NOT NULL,
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C005925" NOT NULL
)
/

-- Add keys for table FOSTERS.LINEA_ALBARAN

ALTER TABLE "FOSTERS"."LINEA_ALBARAN" ADD CONSTRAINT "PKLineaAlbaran" PRIMARY KEY ("ID_LINEA","ID_ALBARAN")
/

-- Table FOSTERS.LINEA_COMANDA

CREATE TABLE "FOSTERS"."LINEA_COMANDA"(
  "ID_LINEA" Number CONSTRAINT "SYS_C005960" NOT NULL,
  "ID_COMANDA" Number CONSTRAINT "SYS_C005961" NOT NULL,
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C005962" NOT NULL,
  "NOMBRE_COMENSAL" Varchar2(30 ) CONSTRAINT "SYS_C005963" NOT NULL,
  "NOTA" Varchar2(255 ),
  "CANTIDAD" Number(10,0)
)
/

-- Add keys for table FOSTERS.LINEA_COMANDA

ALTER TABLE "FOSTERS"."LINEA_COMANDA" ADD CONSTRAINT "PKLineaComanda" PRIMARY KEY ("ID_LINEA","ID_COMANDA")
/

-- Table FOSTERS.LINEA_PEDIDO

CREATE TABLE "FOSTERS"."LINEA_PEDIDO"(
  "ID_LINEA" Number CONSTRAINT "SYS_C005932" NOT NULL,
  "ID_PEDIDO" Number CONSTRAINT "SYS_C005933" NOT NULL,
  "CANTIDAD" Number(10,0) CONSTRAINT "SYS_C005934" NOT NULL,
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C005935" NOT NULL
)
/

-- Add keys for table FOSTERS.LINEA_PEDIDO

ALTER TABLE "FOSTERS"."LINEA_PEDIDO" ADD CONSTRAINT "PKLineaPedido" PRIMARY KEY ("ID_LINEA","ID_PEDIDO")
/

-- Table FOSTERS.LINEA_TICKET

CREATE TABLE "FOSTERS"."LINEA_TICKET"(
  "ID_LINEA" Number CONSTRAINT "SYS_C006019" NOT NULL,
  "ID_TICKET" Number CONSTRAINT "SYS_C006020" NOT NULL,
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C006021" NOT NULL,
  "PRECIO_LINEA" Number(10,2) CONSTRAINT "SYS_C006022" NOT NULL
)
/

-- Add keys for table FOSTERS.LINEA_TICKET

ALTER TABLE "FOSTERS"."LINEA_TICKET" ADD CONSTRAINT "PKLineaTicket" PRIMARY KEY ("ID_TICKET","ID_LINEA")
/

-- Table FOSTERS.MENU_PRODUCTO

CREATE TABLE "FOSTERS"."MENU_PRODUCTO"(
  "ID_MENU" Number CONSTRAINT "SYS_C005907" NOT NULL,
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C005908" NOT NULL
)
/

-- Add keys for table FOSTERS.MENU_PRODUCTO

ALTER TABLE "FOSTERS"."MENU_PRODUCTO" ADD CONSTRAINT "PKMenuProducto" PRIMARY KEY ("ID_MENU","ID_PRODUCTO")
/

-- Table FOSTERS.MESA

CREATE TABLE "FOSTERS"."MESA"(
  "ID_MESA" Number CONSTRAINT "SYS_C005948" NOT NULL,
  "ID_ESTADO" Number
)
/

-- Add keys for table FOSTERS.MESA

ALTER TABLE "FOSTERS"."MESA" ADD CONSTRAINT "PKMesa" PRIMARY KEY ("ID_MESA")
/

-- Table FOSTERS.OFERTA

CREATE TABLE "FOSTERS"."OFERTA"(
  "ID_OFERTA" Number CONSTRAINT "SYS_C005910" NOT NULL,
  "FECHA_INICIO" Date CONSTRAINT "SYS_C005911" NOT NULL,
  "FECHA_FIN" Date CONSTRAINT "SYS_C005912" NOT NULL,
  "ID_TIPO_OFERTA" Number CONSTRAINT "SYS_C005913" NOT NULL
)
/

-- Add keys for table FOSTERS.OFERTA

ALTER TABLE "FOSTERS"."OFERTA" ADD CONSTRAINT "PKOferta" PRIMARY KEY ("ID_OFERTA")
/

-- Table FOSTERS.PEDIDO

CREATE TABLE "FOSTERS"."PEDIDO"(
  "ID_PEDIDO" Number CONSTRAINT "SYS_C005927" NOT NULL,
  "FECHA" Date CONSTRAINT "SYS_C005928" NOT NULL,
  "ID_PROVEEDOR" Number CONSTRAINT "SYS_C005929" NOT NULL,
  "RECIBIDO" Integer CONSTRAINT "SYS_C005930" NOT NULL
)
/

-- Add keys for table FOSTERS.PEDIDO

ALTER TABLE "FOSTERS"."PEDIDO" ADD CONSTRAINT "PKPedido" PRIMARY KEY ("ID_PEDIDO")
/

-- Table FOSTERS.PRODUCTO

CREATE TABLE "FOSTERS"."PRODUCTO"(
  "ID_PRODUCTO" Number CONSTRAINT "SYS_C005888" NOT NULL,
  "NOMBRE_PRODUCTO" Varchar2(50 ) CONSTRAINT "SYS_C005889" NOT NULL,
  "DESCRIPCION" Varchar2(255 ),
  "FOTO" Varchar2(255 ),
  "PRECIO_COMPRA" Number(10,2) CONSTRAINT "SYS_C005890" NOT NULL,
  "PRECIO_BASE" Number(10,2) CONSTRAINT "SYS_C005891" NOT NULL,
  "PRECIO_VENTA" Number(10,2) CONSTRAINT "SYS_C005892" NOT NULL,
  "ID_IVA" Number CONSTRAINT "SYS_C005893" NOT NULL,
  "ID_CATEGORIA" Number CONSTRAINT "SYS_C005894" NOT NULL,
  "ID_TAMANYO" Number,
  "STOCK" Number CONSTRAINT "SYS_C005895" NOT NULL,
  "STOCK_RIESGO" Number CONSTRAINT "SYS_C005896" NOT NULL,
  "ID_OFERTA" Number,
  "ESMENU" Number DEFAULT 0,
  "ACTIVO" Number DEFAULT 1
)
/

-- Add keys for table FOSTERS.PRODUCTO

ALTER TABLE "FOSTERS"."PRODUCTO" ADD CONSTRAINT "PKProducto" PRIMARY KEY ("ID_PRODUCTO")
/

-- Table FOSTERS.PROVEEDOR

CREATE TABLE "FOSTERS"."PROVEEDOR"(
  "ID_PROVEEDOR" Number CONSTRAINT "SYS_C005937" NOT NULL,
  "NOMBRE_PROVEEDOR" Varchar2(30 ) CONSTRAINT "SYS_C005938" NOT NULL,
  "DIRECCION" Varchar2(200 ) CONSTRAINT "SYS_C005939" NOT NULL,
  "NIF" Varchar2(9 ) CONSTRAINT "SYS_C005940" NOT NULL,
  "TELEFONO" Number(9,0) CONSTRAINT "SYS_C005941" NOT NULL,
  "EMAIL" Varchar2(120 ),
  "CONTACTO" Varchar2(30 ),
  "ACTIVO" Number(2,0)
)
/

-- Add keys for table FOSTERS.PROVEEDOR

ALTER TABLE "FOSTERS"."PROVEEDOR" ADD CONSTRAINT "PKProveedor" PRIMARY KEY ("ID_PROVEEDOR")
/

-- Table FOSTERS.RANGO

CREATE TABLE "FOSTERS"."RANGO"(
  "ID_RANGO" Number CONSTRAINT "SYS_C005976" NOT NULL,
  "NOMBRE_RANGO" Varchar2(30 ) CONSTRAINT "SYS_C005977" NOT NULL,
  "PRIORIDAD" Number CONSTRAINT "SYS_C005978" NOT NULL
)
/

-- Add keys for table FOSTERS.RANGO

ALTER TABLE "FOSTERS"."RANGO" ADD CONSTRAINT "PKRangoEmpleados" PRIMARY KEY ("ID_RANGO")
/

-- Table FOSTERS.TAMANYO

CREATE TABLE "FOSTERS"."TAMANYO"(
  "ID_TAMANYO" Number CONSTRAINT "SYS_C005901" NOT NULL,
  "NOMBRE_TAMANYO" Varchar2(30 ) CONSTRAINT "SYS_C005902" NOT NULL
)
/

-- Add keys for table FOSTERS.TAMANYO

ALTER TABLE "FOSTERS"."TAMANYO" ADD CONSTRAINT "PKTamanyo" PRIMARY KEY ("ID_TAMANYO")
/

-- Table FOSTERS.TICKET

CREATE TABLE "FOSTERS"."TICKET"(
  "ID_TICKET" Number CONSTRAINT "SYS_C005966" NOT NULL,
  "FECHA" Date CONSTRAINT "SYS_C005967" NOT NULL,
  "NOMBRE_COMENSAL" Varchar2(30 ) CONSTRAINT "SYS_C005968" NOT NULL,
  "ID_TIPO_PAGO" Number CONSTRAINT "SYS_C005969" NOT NULL,
  "ID_COMANDA" Number CONSTRAINT "SYS_C006015" NOT NULL
)
/

-- Add keys for table FOSTERS.TICKET

ALTER TABLE "FOSTERS"."TICKET" ADD CONSTRAINT "PKTicker" PRIMARY KEY ("ID_TICKET")
/

-- Table FOSTERS.TIPO_OFERTA

CREATE TABLE "FOSTERS"."TIPO_OFERTA"(
  "ID_TIPO_OFERTA" Number CONSTRAINT "SYS_C005915" NOT NULL,
  "DESCRIPCION" Varchar2(255 ) CONSTRAINT "SYS_C005916" NOT NULL
)
/

-- Add keys for table FOSTERS.TIPO_OFERTA

ALTER TABLE "FOSTERS"."TIPO_OFERTA" ADD CONSTRAINT "PKTipoOferta" PRIMARY KEY ("ID_TIPO_OFERTA")
/

-- Table FOSTERS.TIPO_PAGO

CREATE TABLE "FOSTERS"."TIPO_PAGO"(
  "ID_TIPO_PAGO" Number CONSTRAINT "SYS_C005943" NOT NULL,
  "TIPO" Varchar2(30 )
)
/

-- Add keys for table FOSTERS.TIPO_PAGO

ALTER TABLE "FOSTERS"."TIPO_PAGO" ADD CONSTRAINT "PKTipoPago" PRIMARY KEY ("ID_TIPO_PAGO")
/

-- Create packages section -------------------------------------------------

CREATE PACKAGE "FOSTERS"."GEST_EMPLEADO"
AS
    --cursor a devolver
    TYPE T_CURSOR IS REF CURSOR;

    --insertar nuevo empleado
    PROCEDURE insertar_Empleado(nombre empleado.NOMBRE_EMPLEADO%type, apellidosE empleado.APELLIDOS%type, 
                                telefonoE empleado.TELEFONO%type, tfijoE empleado.TELEFONO2%type,
                                direccionE empleado.DIRECCION%type, emailE empleado.EMAIL%type, 
                                idRangoE empleado.ID_RANGO%type, dni empleado.NIF%type);
     
    --modificar nuevo empleado
    PROCEDURE modificar_Empleado(idE empleado.ID_EMPLEADO%type, nombre empleado.NOMBRE_EMPLEADO%type, 
                                apellidosE empleado.APELLIDOS%type, telefonoE empleado.TELEFONO%type, 
                                tfijoE empleado.TELEFONO2%type, direccionE empleado.DIRECCION%type,
                                emailE empleado.EMAIL%type, idRangoE empleado.ID_RANGO%type, dni empleado.NIF%type);
                                
     --borrar empleado
    PROCEDURE borrar_Empleado(idE empleado.ID_EMPLEADO%type);
    
    --devuelve los nombres y rango de los empleados
    PROCEDURE Obtener_Empleados(cur1 OUT T_CURSOR);
    
    --devuelve todos los datos de un empleado segun su id
	PROCEDURE datos_Empleado(idE empleado.ID_EMPLEADO%type, cur1 OUT T_CURSOR);             
    
    --devuelve el rango de un empleado
    FUNCTION devuelve_Rango(idE empleado.ID_EMPLEADO%type) return empleado.ID_RANGO%type;
    
    --insertar nuevo rango
    PROCEDURE insertar_Rango(nombreR rango.NOMBRE_RANGO%type, prioridadR rango.PRIORIDAD%type);
    
    --modificar nuevo rango
    PROCEDURE modificar_Rango(idR rango.ID_RANGO%type, nombreR rango.NOMBRE_RANGO%type, prioridadR rango.PRIORIDAD%type);
    
   --consultar nuevo rango
    FUNCTION consultar_Rango(idR rango.ID_RANGO%type) RETURN rango.PRIORIDAD%type;                           
END; 
/
CREATE PACKAGE BODY "FOSTERS"."GEST_EMPLEADO"
AS
    --DECLARACIONES LOCALES
    FUNCTION buscar_empleado_por_dni (dni empleado.NIF%type) return empleado.ID_EMPLEADO%type;
            
    --****************** 
    --DESARROLLO DE LAS FUNCIONES
    
    --insertar nuevo empleado
    PROCEDURE insertar_Empleado(nombre empleado.NOMBRE_EMPLEADO%type, apellidosE empleado.APELLIDOS%type, 
                                telefonoE empleado.TELEFONO%type, tfijoE empleado.TELEFONO2%type,
                                direccionE empleado.DIRECCION%type, emailE empleado.EMAIL%type, 
                                idRangoE empleado.ID_RANGO%type, dni empleado.NIF%type)
    IS
        numEmpleado empleado.ID_EMPLEADO%type;
    BEGIN
        numEmpleado := buscar_empleado_por_dni(dni);
        
        --si el numero es 0 es que no existe, lo insertamos
        if numempleado = 0 then
            insert into empleado values(FOSTERS."SeqEmpleado".nextval, nombre, apellidosE, telefonoE, tfijoE, direccionE, emailE, idRangoE, dni);
        end if;

		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END insertar_Empleado;
    
    
     --modificar nuevo empleado
    PROCEDURE modificar_Empleado(idE empleado.ID_EMPLEADO%type, nombre empleado.NOMBRE_EMPLEADO%type, 
                                apellidosE empleado.APELLIDOS%type, telefonoE empleado.TELEFONO%type, 
                                tfijoE empleado.TELEFONO2%type, direccionE empleado.DIRECCION%type,
                                emailE empleado.EMAIL%type, idRangoE empleado.ID_RANGO%type, dni empleado.NIF%type)     
    IS
    BEGIN
        --como ya existe, modificas las cosas por las nuevas
        update empleado set NOMBRE_EMPLEADO = nombre, APELLIDOS = apellidosE, TELEFONO = telefonoE,
                            TELEFONO2 = tfijoE, DIRECCION = direccionE, EMAIL = emailE, ID_RANGO = idRangoE, NIF = dni
                        where ID_empleado = idE;
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END modificar_Empleado;
    
    
    --borrar empleado
    PROCEDURE borrar_Empleado(idE empleado.ID_EMPLEADO%type)
     IS
    BEGIN
        --modifico el estado y lo pongo a inactivo
        delete from empleado where ID_EMPLEADO = idE;
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END borrar_Empleado;
    
        --devuelve los nombres y rango de los empleados
    PROCEDURE Obtener_Empleados(cur1 OUT T_CURSOR)
    IS
				
    BEGIN
        --curor que devuelve llos empelados
        OPEN cur1 FOR
		select ID_EMPLEADO, NOMBRE_EMPLEADO, ID_RANGO
		from empleado
        order by NOMBRE_EMPLEADO ASC;
        
        commit;
    
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END Obtener_Empleados;
    
    
    --devuelve todos los datos de un empleado segun su id
	PROCEDURE datos_Empleado(idE empleado.ID_EMPLEADO%type, cur1 OUT T_CURSOR)
    IS
				
    BEGIN
        --curor que devuelve los empleados activos segun la categoria
        OPEN cur1 FOR
		select *
		from empleado
		where ID_EMPLEADO = idE;
    
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END datos_Empleado;   
                                    

     --devuelve el rango de un empleado
    FUNCTION devuelve_Rango(idE empleado.ID_EMPLEADO%type)  return empleado.ID_RANGO%type
    IS
        rangoEmple empleado.ID_RANGO%type;
    BEGIN
		select ID_RANGO into rangoEmple from empleado where ID_EMPLEADO = idE;
		return rangoEmple;
	   
    --para cualquier problema devuelve 0  
    EXCEPTION	 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			return 0;
    
    END devuelve_Rango;
    
    
    --insertar nuevo rango
    PROCEDURE insertar_Rango(nombreR rango.NOMBRE_RANGO%type, prioridadR rango.PRIORIDAD%type)
    IS

    BEGIN
        insert into rango values(FOSTERS."SeqRango".nextval, nombreR, prioridadR);
     
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END insertar_Rango;
    
    
     --modificar nuevo rango
    PROCEDURE modificar_Rango(idR rango.ID_RANGO%type, nombreR rango.NOMBRE_RANGO%type, prioridadR rango.PRIORIDAD%type)
    IS

    BEGIN
        update rango set NOMBRE_RANGO = nombreR, PRIORIDAD = prioridadR where ID_RANGO = idR;
     
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END modificar_Rango;
    
   --consultar nuevo rango
    FUNCTION consultar_Rango(idR rango.ID_RANGO%type) RETURN rango.PRIORIDAD%type
    IS

       prioridadR rango.PRIORIDAD%type;
    BEGIN
        select PRIORIDAD into prioridadR from rango where ID_RANGO = idR;
        return prioridadR;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			return 0;
    
    END consultar_Rango;  
    
    --****************** 
    --DESARROLLO DE LAS FUNCIONES LOCALES
	
    --buscar por nombre
   FUNCTION buscar_empleado_por_dni (dni empleado.NIF%type) return empleado.ID_EMPLEADO%type
    IS
        numEmpleado empleado.ID_EMPLEADO%type;
    BEGIN
        select ID_EMPLEADO into numEmpleado from empleado where NIF = dni;
        return numEmpleado;
        
        --para cualquier excepcion devuelve 0
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			return 0;
    END buscar_empleado_por_dni;
    
END gest_Empleado; 
/

CREATE PACKAGE "FOSTERS"."GEST_MESA"
AS
    
    --cursor a devolver
    TYPE T_CURSOR IS REF CURSOR;

    --insertar mesa
    PROCEDURE insertar_Mesa( idE mesa.ID_ESTADO%type);
    
    --insertar nuevo producto
    PROCEDURE cambiar_Estado(idM mesa.ID_MESA%type);
    
  --insertar comanda
   FUNCTION insertar_Comanda (idM comanda.ID_MESA%type) RETURN comanda.ID_COMANDA%type;
   
   --consultar comanda
    --PROCEDURE consultar_Comanda (idC comanda.ID_COMANDA%type, cur1 OUT T_CURSOR );
  
   
   --insertar linea comanda
   PROCEDURE insertar_LineaComanda (idLinea linea_comanda.ID_LINEA%type, idComanda linea_comanda.ID_COMANDA%type, idProducto linea_comanda.ID_PRODUCTO%type,
                                    cantidad linea_comanda.CANTIDAD%type, nombreComensal linea_comanda.NOMBRE_COMENSAL%type,notica linea_comanda.NOTA%type);
                                    
   --consultar las lineas de comanda
    --PROCEDURE consultar_LineaComanda (idL linea_comanda.ID_LINEA%type, cur1 OUT T_CURSOR );
   PROCEDURE insertar_Ticket (VarIdComanda comanda.ID_COMANDA%type, VarTipoPago Tipo_pago.ID_TIPO_PAGO%type ); 
   
   PROCEDURE consultar_Comanda (idC comanda.ID_COMANDA%type, cur1 OUT T_CURSOR );                                             
END; 
/
CREATE PACKAGE BODY "FOSTERS"."GEST_MESA"
AS
    --DECLARACIONES LOCALES
            
    --****************** 
    --DESARROLLO DE LAS FUNCIONES
    
    --insertar mesa
    PROCEDURE insertar_Mesa( idE mesa.ID_ESTADO%type)
    IS
    BEGIN
        insert into mesa values(FOSTERS."SeqMesa".nextval, idE);

		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END insertar_Mesa;

    
    --cambiar estado de la mesa
    PROCEDURE cambiar_Estado(idM mesa.ID_MESA%type)
    IS
        estado mesa.ID_ESTADO%type;
    BEGIN
        select ID_ESTADO into estado from mesa where ID_MESA = idM;
        
        case estado
            when 1 then --libre pasa a ocupada
                update mesa set ID_ESTADO = 2 where ID_MESA = idM;
                
            when 2 then --ocupada a limpieza
                update mesa set ID_ESTADO = 3 where ID_MESA = idM;
                
            when 3 then --limpieza a libre
               update mesa set ID_ESTADO = 1 where ID_MESA = idM;
               
            else --revervada o inabilitada a libre
                update mesa set ID_ESTADO = 1 where ID_MESA = idM;
        end case;
		commit;
           
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM); 
			ROLLBACK;
		
	END cambiar_Estado;
    
    
    --insertar comanda
	FUNCTION insertar_Comanda (idM comanda.ID_MESA%type) RETURN comanda.ID_COMANDA%type
    IS 
        numComanda comanda.ID_COMANDA%type;
    BEGIN
		insert into COMANDA values(FOSTERS."SeqComanda".nextval, idM, sysdate);
        commit;
        
        select max(ID_COMANDA) into numComanda from comanda;
        
        return numComanda;
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
            return 0;
    END insertar_Comanda;
    
    
   
   --insertar linea comanda
   PROCEDURE insertar_LineaComanda (idLinea linea_comanda.ID_LINEA%type, idComanda linea_comanda.ID_COMANDA%type, idProducto linea_comanda.ID_PRODUCTO%type,
                                    cantidad linea_comanda.CANTIDAD%type, nombreComensal linea_comanda.NOMBRE_COMENSAL%type,notica linea_comanda.NOTA%type)
    IS
        cantidadAlmacen producto.STOCK%type;  
    BEGIN
                
    
        select STOCK into cantidadAlmacen from producto where ID_PRODUCTO = idProducto;
        
        --Resto el produto
        update producto set STOCK = cantidadAlmacen - cantidad
                        where ID_PRODUCTO = idProducto;
        --inserto la linea
		insert into LINEA_COMANDA VALUES(idLinea, idComanda, idProducto,  nombreComensal, notica,  cantidad);
		commit;
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END insertar_LineaComanda;
   
       --insertar comanda
	PROCEDURE insertar_Ticket (VarIdComanda comanda.ID_COMANDA%type, VarTipoPago Tipo_pago.ID_TIPO_PAGO%type ) 
    IS 
        
        cursor miCursor is
            SELECT ID_LINEA , ID_PRODUCTO  FROM LINEA_COMANDA WHERE ID_COMANDA =  VarIdComanda;
            
        numTicket ticket.ID_TICKET%type;
        varPrecio linea_ticket.PRECIO_LINEA%type;
        varCur miCursor%ROWTYPE;

    BEGIN
		insert into TICKET values(FOSTERS."SeqTicket".nextval, sysdate, 'Común',VarTipoPago, VarIdComanda);
        commit;
        
        select max(ID_TICKET) into numTicket from ticket;
        
        open miCursor;
        fetch miCursor into varCur; 
        while miCursor%Found loop
        
        
    
            select PRECIO_VENTA into varPrecio from producto where ID_PRODUCTO  = varCur.ID_PRODUCTO;
        
            insert into LINEA_TICKET values(varCur.ID_LINEA, numTicket, varCur.ID_PRODUCTO,varPrecio);
        

        
		    fetch miCursor into varCur; 

        end loop;
        close miCursor;  
    
    commit;
        
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END insertar_Ticket;
    
        --consulta cada comanda
    PROCEDURE consultar_Comanda (idC comanda.ID_COMANDA%type, cur1 OUT T_CURSOR )
    IS
		
    BEGIN
        --curor que devuelve las lineas de comanda
       OPEN cur1 FOR
        select linea_comanda.NOMBRE_COMENSAL, sum(linea_comanda.cantidad * (producto.PRECIO_VENTA))
        from linea_comanda, producto
        where ID_COMANDA = idC and linea_comanda.ID_PRODUCTO = producto.ID_PRODUCTO
        group by (linea_comanda.NOMBRE_COMENSAL);
		        
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END consultar_Comanda;
    
   
   
    --consulta el pedido de cada comensal segun la comanda
--    PROCEDURE consultar_LineaComanda (idcomanda linea_comanda.id_comanda%TYPE, comensal linea_comanda.nombre_comensal%TYPE, cur1 OUT T_CURSOR)
--    IS
--		
--    BEGIN
--        --curor que devuelve las lineas de comanda
--       OPEN cur1 FOR
--		select *
--		from linea_comanda
--		where (ID_COMANDA = idComanda) and (NOMBRE_COMENSAL = comensal);
--		        
--    EXCEPTION 
--		WHEN OTHERS THEN
--			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
--    END consulta_lineas_comanda;
    
END gest_Mesa; 
/

CREATE PACKAGE "FOSTERS"."GEST_PRODUCTO"
AS

    --cursor a devolver
    TYPE T_CURSOR IS REF CURSOR;
    
    --insertar nuevo producto
    PROCEDURE insertar_Producto(nombre producto.NOMBRE_PRODUCTO%type, descripcion producto.DESCRIPCION%type, 
                                foto producto.FOTO%type, precioCompra producto.PRECIO_COMPRA%type,
                                idIva producto.ID_IVA%type, idCategoria producto.ID_CATEGORIA%type, 
                                idTamanyo producto.ID_TAMANYO%type, menu producto.ESMENU%type);
                                
    PROCEDURE insertar_Producto(nombre producto.NOMBRE_PRODUCTO%type, descripcion producto.DESCRIPCION%type, 
                            foto producto.FOTO%type, precioCompra producto.PRECIO_COMPRA%type,
                            precioBase producto.PRECIO_BASE%type, precioVenta producto.PRECIO_VENTA%type,
                            idIva producto.ID_IVA%type, idCategoria producto.ID_CATEGORIA%type, 
                            idTamanyo producto.ID_TAMANYO%type, varStock producto.STOCK%type,
                            varStockRiesgo producto.STOCK%type, varOferta producto.ID_OFERTA%type,
                            menu producto.ESMENU%type);
                                
    --borrar producto
    PROCEDURE borrar_Producto(idP producto.ID_PRODUCTO%type);
    
   --insertar nueva categoria
   PROCEDURE insertar_Categoria (nombre categoria.nombre_categoria%TYPE);
    
	--comprobar stock
    FUNCTION comprobar_Stock (idP producto.ID_PRODUCTO%type) return producto.STOCK%type;
	
    --comprobar stock de riesgo (devuelve -1 si hay que pedir)
    FUNCTION comprobar_StockRiesgo (idP producto.ID_PRODUCTO%type) return producto.STOCK%type;
    
    --anyadir stock
    PROCEDURE anyadir_Stock_Producto(idP producto.ID_PRODUCTO%type, cantidad producto.STOCK%type);    
       
    --cambiar precio por Venta
    PROCEDURE cambiar_Precios_por_Venta;
	
	--devuelve los productos segun su categoria
	PROCEDURE productos_por_Categoria(idCategoria producto.ID_CATEGORIA%type, cur1 OUT T_CURSOR);
	
	--devuelve todos los datos de un producto segun su id
	PROCEDURE datos_Producto(idP producto.ID_PRODUCTO%type, cur1 OUT T_CURSOR);
    
    --devuelve los datos de las categorias
    PROCEDURE Obtener_Categorias(cur1 OUT T_CURSOR);
    
       --insertar Tipo de Oferta
   PROCEDURE insertar_TipoOferta (varDescripcion tipo_oferta.DESCRIPCION%type);
   
   --insertar Una Oferta
   PROCEDURE insertar_Oferta (varFechaInicio oferta.FECHA_INICIO%type, varFechaFin oferta.FECHA_FIN%type,
                                    varTipo oferta.ID_TIPO_OFERTA%type);
   
   PROCEDURE quitar_Stock_Producto(idP producto.ID_PRODUCTO%type, cantidad producto.STOCK%type);
   
END; 
/
CREATE PACKAGE BODY "FOSTERS"."GEST_PRODUCTO"
AS
    --DECLARACIONES LOCALES
    --buscar por nombre
    FUNCTION buscar_producto_por_nombre (nombre producto.NOMBRE_PRODUCTO%type) return producto.ID_PRODUCTO%type;
    
    --cambiar precio
    PROCEDURE cambiar_Precios (idP producto.ID_PRODUCTO%type, precioCompra producto.PRECIO_COMPRA%type, idIva producto.ID_IVA%type) ;
    
        
    --****************** 
    --DESARROLLO DE LAS FUNCIONES

    --insertar nuevo producto
    PROCEDURE insertar_Producto(nombre producto.NOMBRE_PRODUCTO%type, descripcion producto.DESCRIPCION%type, 
                                foto producto.FOTO%type, precioCompra producto.PRECIO_COMPRA%type,
                                idIva producto.ID_IVA%type, idCategoria producto.ID_CATEGORIA%type, 
                                idTamanyo producto.ID_TAMANYO%type, menu producto.ESMENU%type)
    IS
        numProducto producto.ID_PRODUCTO%type;
    BEGIN
        numProducto := buscar_producto_por_nombre (nombre);
        
        --si el numero es 0 es que no existe, lo insertamos
        if numProducto = 0 then
            insert into producto values(FOSTERS."SeqProducto".nextval, nombre, descripcion, foto, precioCompra,
                                         0, 0, idIva, idCategoria, idTamanyo, 0, 5, 0, menu, 1);
        else
            --si existe, modificas las cosas por las nuevas
            update producto set DESCRIPCION = descripcion, FOTO = foto, PRECIO_COMPRA = precioCompra,
                                ID_IVA = idIva, ID_CATEGORIA = idCategoria, ID_TAMANYO = idTamanyo, ESMENU = menu, ACTIVO = 1
                            where ID_PRODUCTO = numProducto;
        end if;
        
        --cambiamos el precio de base y el de venta
        cambiar_Precios (numProducto, precioCompra, idIva);
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END insertar_Producto;
       
    --insertar nuevo producto
    PROCEDURE insertar_Producto(nombre producto.NOMBRE_PRODUCTO%type, descripcion producto.DESCRIPCION%type, 
                                foto producto.FOTO%type, precioCompra producto.PRECIO_COMPRA%type,
                                precioBase producto.PRECIO_BASE%type, precioVenta producto.PRECIO_VENTA%type,
                                idIva producto.ID_IVA%type, idCategoria producto.ID_CATEGORIA%type, 
                                idTamanyo producto.ID_TAMANYO%type, varStock producto.STOCK%type,
                                varStockRiesgo producto.STOCK%type, varOferta producto.ID_OFERTA%type,
                                menu producto.ESMENU%type)
    IS

    BEGIN
        
        --si el numero es 0 es que no existe, lo insertamos

            insert into producto values(FOSTERS."SeqProducto".nextval, nombre, descripcion, foto, precioCompra,
                                         precioBase, precioVenta, idIva, idCategoria, idTamanyo, varStock, 
                                         varStockRiesgo, varOferta, menu, 1);

		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    
    END insertar_Producto;  
     
    --borrar producto
    PROCEDURE borrar_Producto (idP producto.ID_PRODUCTO%type)
     IS
    BEGIN
        --modifico el estado y lo pongo a inactivo
        update producto set ACTIVO = 0 where ID_PRODUCTO = idP;
		commit;
		
    EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END borrar_Producto;
    
    
    --insertar una nueva categoria
	PROCEDURE insertar_Categoria(nombre CATEGORIA.NOMBRE_CATEGORIA%TYPE)
    IS  
    BEGIN
		insert into CATEGORIA values(FOSTERS."SeqCategoria".nextval, nombre);
		commit;
    EXCEPTION	 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END insertar_Categoria;
    
    
	--comprobar stock
    FUNCTION comprobar_Stock (idP producto.ID_PRODUCTO%type) return producto.STOCK%type
    IS
        cantidad producto.STOCK%type;
    BEGIN
        select STOCK into cantidad from producto where ID_PRODUCTO = idP;
		return cantidad;
    
	--para cualquier problema devuelve 0
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);	
			return 0;
    END comprobar_Stock;
	
	
    --comprobar stock de riesgo
    FUNCTION comprobar_StockRiesgo (idP producto.ID_PRODUCTO%type) return producto.STOCK%type
    IS
        cantidad producto.STOCK%type;
        cantidadRiesgo producto.STOCK%type;
        nombre producto.NOMBRE_PRODUCTO%type;
    BEGIN
        select STOCK into cantidad from producto where ID_PRODUCTO = idP;
        select STOCK_RIESGO into cantidadRiesgo from producto where ID_PRODUCTO = idP;
        
        --si la cantidad es igual que la de rioesgo devuelvo -1
        if cantidad = cantidadRiesgo then
            cantidad :=  -1;
        end if;
        
        return cantidad;
    
    --para cualquier problema devuelve 0
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
            return 0;
    END comprobar_StockRiesgo;
    
	
    --anyadir stock
    PROCEDURE anyadir_Stock_Producto(idP producto.ID_PRODUCTO%type, cantidad producto.STOCK%type)
    IS
    BEGIN
        --modifico el estado y lo pongo a inactivo
        update producto set STOCK = cantidad where ID_PRODUCTO = idP;
		commit;
		
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END anyadir_Stock_Producto;

	
	--cambiar precio por Venta
    PROCEDURE cambiar_Precios_por_Venta
    IS
        --saco un cursor para obtener el precio venta de cada uno
        cursor cur is 
	    select PRECIO_VENTA, rowid from producto;
        
        --saco las variables
        precioBase producto.PRECIO_BASE%type;
        precioCompra producto.PRECIO_COMPRA%type;
        
    BEGIN
         --recorro el cursor
        FOR v_reg IN cur LOOP
            --modifico el precio base
            precioBase := v_reg.PRECIO_VENTA / 1.18;
            update  producto set PRECIO_BASE = precioBase where rowid = v_reg.rowid;
            
            --modifico el precio compra
            precioCompra := precioBase / 1.5;
             update  producto set PRECIO_COMPRA = precioCompra where rowid = v_reg.rowid;
        
        END LOOP;
        
		commit;
		
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);	
			ROLLBACK;
    END cambiar_Precios_por_Venta;

	
	--devuelve los productos segun su categoria
	PROCEDURE productos_por_Categoria(idCategoria producto.ID_CATEGORIA%type, cur1 OUT T_CURSOR)
    IS
				
    BEGIN
        --curor que devuelve los productos activos segun la categoria
        OPEN cur1 FOR
		select ID_PRODUCTO, NOMBRE_PRODUCTO, PRECIO_VENTA, NOMBRE_TAMANYO, FOTO
		from producto, tamanyo
		where (ID_CATEGORIA = idCategoria) and (ACTIVO = 1) and (producto.ID_TAMANYO = tamanyo.ID_TAMANYO) and (producto.STOCK > 0)
        order by NOMBRE_PRODUCTO ASC;
        
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END productos_por_Categoria;
	
	
	--devuelve todos los datos de un producto segun su id
	PROCEDURE datos_Producto(idP producto.ID_PRODUCTO%type, cur1 OUT T_CURSOR)
    IS
				
    BEGIN
        --curor que devuelve los productos activos segun la categoria
        OPEN cur1 FOR
		select ID_PRODUCTO, NOMBRE_PRODUCTO, DESCRIPCION, FOTO, PRECIO_VENTA, ID_TAMANYO, ID_OFERTA, ESMENU
		from producto
		where (ID_PRODUCTO = idP) and (ACTIVO = 1);
    
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END datos_Producto;

		--devuelve todos los datos de un producto segun su id
	PROCEDURE Obtener_Categorias(cur1 OUT T_CURSOR)
    IS
				
    BEGIN
        --curor que devuelve los productos activos segun la categoria
        OPEN cur1 FOR
		select *
		from categoria
        order by NOMBRE_CATEGORIA ASC;
        
        commit;
    
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
    END Obtener_Categorias;
    
   --insertar Tipo de Oferta
   PROCEDURE insertar_TipoOferta (varDescripcion tipo_oferta.DESCRIPCION%type)
   IS  
   
   BEGIN
        insert into tipo_oferta values(FOSTERS."SeqTipoOferta".nextval, varDescripcion);
		commit;
   EXCEPTION	 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
   END insertar_TipoOferta;
   
   --insertar Una Oferta
   PROCEDURE insertar_Oferta (varFechaInicio oferta.FECHA_INICIO%type, varFechaFin oferta.FECHA_FIN%type,
                                    varTipo oferta.ID_TIPO_OFERTA%type)
   IS  
   BEGIN
		insert into oferta values(FOSTERS."SeqOferta".nextval, varFechaInicio,varFechaFin,varTipo);
		commit;
   EXCEPTION	 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
   END insertar_Oferta;
   
    --****************** 
    --DESARROLLO DE LAS FUNCIONES LOCALES
	
    --buscar por nombre
    FUNCTION buscar_producto_por_nombre (nombre producto.NOMBRE_PRODUCTO%type) return producto.ID_PRODUCTO%type
    IS
        numProduct producto.ID_PRODUCTO%type;
    BEGIN
        select ID_PRODUCTO into numProduct from producto where NOMBRE_PRODUCTO = nombre;
        return numProduct;
        
        --para cualquier excepcion devuelve 0
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			return 0;
    END buscar_producto_por_nombre;

	
    --cambiar precio
    PROCEDURE cambiar_Precios (idP producto.ID_PRODUCTO%type, precioCompra producto.PRECIO_COMPRA%type, idIva producto.ID_IVA%type)
    IS
        valorIva iva.VALOR%type;
        precioBase producto.PRECIO_BASE%type;
    BEGIN
        --modifico el precio base y el de venta
        update producto set precio_base = (precioCompra + ((precioCompra * 50)/100)) where ID_PRODUCTO = idP;
        
        select VALOR into valorIva from iva where ID_IVA = idIva;
        select PRECIO_BASE into precioBase from producto where ID_PRODUCTO = idP;
        
        update producto set precio_venta = (precioBase + ((precioBase * valorIva)/100)) where ID_PRODUCTO = idP;
        
		commit;
		
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END cambiar_Precios;
    
    
        --quitar stock
    PROCEDURE quitar_Stock_Producto(idP producto.ID_PRODUCTO%type, cantidad producto.STOCK%type)
    IS
        cantidadAlmacen producto.STOCK%type;
    BEGIN
        select STOCK into cantidadAlmacen from producto where ID_PRODUCTO = idP;
        
        --modifico el estado y lo pongo a inactivo
        update producto set STOCK = cantidadAlmacen - cantidad
                        where ID_PRODUCTO = idP;
		commit;
		
    EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Error: ' || SQLCODE || SQLERRM);
			ROLLBACK;
    END quitar_Stock_Producto;

END gest_Producto; 
/

-- Create relationships section ------------------------------------------------- 

ALTER TABLE "FOSTERS"."LINEA_COMANDA" ADD CONSTRAINT "Compone de" FOREIGN KEY ("ID_PRODUCTO") REFERENCES "FOSTERS"."PRODUCTO" ("ID_PRODUCTO")
/

ALTER TABLE "FOSTERS"."LINEA_COMANDA" ADD CONSTRAINT "Componen de" FOREIGN KEY ("ID_COMANDA") REFERENCES "FOSTERS"."COMANDA" ("ID_COMANDA")
/

ALTER TABLE "FOSTERS"."COMANDA" ADD CONSTRAINT "Mesas tienen" FOREIGN KEY ("ID_MESA") REFERENCES "FOSTERS"."MESA" ("ID_MESA")
/

ALTER TABLE "FOSTERS"."TICKET" ADD CONSTRAINT "Se asocia con una" FOREIGN KEY ("ID_COMANDA") REFERENCES "FOSTERS"."COMANDA" ("ID_COMANDA")
/

ALTER TABLE "FOSTERS"."TICKET" ADD CONSTRAINT "Se cobran con un" FOREIGN KEY ("ID_TIPO_PAGO") REFERENCES "FOSTERS"."TIPO_PAGO" ("ID_TIPO_PAGO")
/

ALTER TABLE "FOSTERS"."ALBARAN_ENTRADA" ADD CONSTRAINT "Tiene Albaran" FOREIGN KEY ("ID_PROVEEDOR") REFERENCES "FOSTERS"."PROVEEDOR" ("ID_PROVEEDOR")
/

ALTER TABLE "FOSTERS"."PRODUCTO" ADD CONSTRAINT "Tiene Categoria" FOREIGN KEY ("ID_CATEGORIA") REFERENCES "FOSTERS"."CATEGORIA" ("ID_CATEGORIA")
/

ALTER TABLE "FOSTERS"."MESA" ADD CONSTRAINT "Tiene estado" FOREIGN KEY ("ID_ESTADO") REFERENCES "FOSTERS"."ESTADO_MESA" ("ID_ESTADO")
/

ALTER TABLE "FOSTERS"."PRODUCTO" ADD CONSTRAINT "Tiene IVA" FOREIGN KEY ("ID_IVA") REFERENCES "FOSTERS"."IVA" ("ID_IVA")
/

ALTER TABLE "FOSTERS"."LINEA_ALBARAN" ADD CONSTRAINT "Tiene Lineas" FOREIGN KEY ("ID_ALBARAN") REFERENCES "FOSTERS"."ALBARAN_ENTRADA" ("ID_ALBARAN")
/

ALTER TABLE "FOSTERS"."LINEA_PEDIDO" ADD CONSTRAINT "Tiene LineasPedidas" FOREIGN KEY ("ID_PEDIDO") REFERENCES "FOSTERS"."PEDIDO" ("ID_PEDIDO")
/

ALTER TABLE "FOSTERS"."PRODUCTO" ADD CONSTRAINT "Tiene Oferta" FOREIGN KEY ("ID_OFERTA") REFERENCES "FOSTERS"."OFERTA" ("ID_OFERTA")
/

ALTER TABLE "FOSTERS"."PEDIDO" ADD CONSTRAINT "Tiene Pedidos" FOREIGN KEY ("ID_PROVEEDOR") REFERENCES "FOSTERS"."PROVEEDOR" ("ID_PROVEEDOR")
/

ALTER TABLE "FOSTERS"."LINEA_TICKET" ADD CONSTRAINT "Tiene producto" FOREIGN KEY ("ID_PRODUCTO") REFERENCES "FOSTERS"."PRODUCTO" ("ID_PRODUCTO")
/

ALTER TABLE "FOSTERS"."LINEA_ALBARAN" ADD CONSTRAINT "Tiene Productos" FOREIGN KEY ("ID_PRODUCTO") REFERENCES "FOSTERS"."PRODUCTO" ("ID_PRODUCTO")
/

ALTER TABLE "FOSTERS"."LINEA_PEDIDO" ADD CONSTRAINT "Tiene ProductosPedidos" FOREIGN KEY ("ID_PRODUCTO") REFERENCES "FOSTERS"."PRODUCTO" ("ID_PRODUCTO")
/

ALTER TABLE "FOSTERS"."EMPLEADO" ADD CONSTRAINT "Tiene Rango" FOREIGN KEY ("ID_RANGO") REFERENCES "FOSTERS"."RANGO" ("ID_RANGO")
/

ALTER TABLE "FOSTERS"."PRODUCTO" ADD CONSTRAINT "Tiene Tamanyo" FOREIGN KEY ("ID_TAMANYO") REFERENCES "FOSTERS"."TAMANYO" ("ID_TAMANYO")
/

ALTER TABLE "FOSTERS"."LINEA_TICKET" ADD CONSTRAINT "Tiene ticket" FOREIGN KEY ("ID_TICKET") REFERENCES "FOSTERS"."TICKET" ("ID_TICKET")
/

ALTER TABLE "FOSTERS"."OFERTA" ADD CONSTRAINT "Tiene Tipos" FOREIGN KEY ("ID_TIPO_OFERTA") REFERENCES "FOSTERS"."TIPO_OFERTA" ("ID_TIPO_OFERTA")
/



-- Insertar -------------------------------------------------

-- IVA
--insert into iva values(FOSTERS."SeqIVA".nextval, valor);
insert into iva values(FOSTERS."SeqIVA".nextval, 18.00);

commit;

--EMPRESA
--insert into empresa values(nombre Varchar2, direccion Varchar2, nif varchar2, telefono Number, email varchar);
insert into empresa values('Fosters Hollywood', 'Camino de la Zarzuela 1 280323 MADRID', 'A28374619', 666666666, 'atencionalcliente@zena.com');

commit;

--- RANGO
--insert into RANGO values (FOSTERS."SeqRango".nextval, 'nombre;
insert into RANGO values (FOSTERS."SeqRango".nextval, 'Auxiliar', 1);
insert into RANGO values (FOSTERS."SeqRango".nextval, 'Limpieza', 1);
insert into RANGO values (FOSTERS."SeqRango".nextval, 'Encargado', 2);
insert into RANGO values (FOSTERS."SeqRango".nextval, 'Jefe de Tienda', 3);

commit;

--EMPLEADOS
--insert into empleado values(id Number, nombre Varchar2, apellidos Varchar2, nick Varchar2, password Varchar2, telefono Varchar2, teleffijo Varchar, email Varchar2, direccion Varchar2, rango Integer);
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Juan Pablo', 'Sáez Belló', 620388679, 967894367, 'avenida del progreso núm 5, quinto edificio', 'jaipe89@foster.com', 1, 'A1111111A');
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Francisco Javier', 'Asensi Benito', 678657275, 965555555, 'avenida del suceso núm 8, cuarto edificio', 'francis@foster.com', 1, 'B2222222B'); 
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Estibaliz', 'Garcia Diego', 658934645, 964444444, 'avenida de la constacia núm 7, tercer edificio','estickyiki@foster.com', 3, 'C3333333C'); 
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Helios' ,'Pastor Aracil', 678562345, 963333333, 'avenida de la superación núm 3, primer edificio', 'ishelios@fostr.com', 3, 'C4444444D'); 
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Alejandro', 'Ferrándiz Lillo', 652906288, 962222222, 'avenida de la suerte núm 8, octavo eficio', 'lex4eva@foster.com', 1, 'E5555555E');
insert into empleado values (FOSTERS."SeqEmpleado".nextval, 'Juan Antonio', 'Domenech Rubio', 666782147, 961111111, 'avenida de la maldad núm 5, séptimo edificio', 'thenewis@foster.com', 4, 'F6666666F'); 

commit;

--ESTADO MESA
--insert into estado_mesa(id Number, nombre Varchar2); 
insert into estado_mesa values(FOSTERS."SeqEstadoMesa".nextval, 'Libre');  
insert into estado_mesa values(FOSTERS."SeqEstadoMesa".nextval, 'Ocupada'); 
insert into estado_mesa values(FOSTERS."SeqEstadoMesa".nextval, 'Limpieza');
insert into estado_mesa values(FOSTERS."SeqEstadoMesa".nextval, 'Reservada'); 
insert into estado_mesa values(FOSTERS."SeqEstadoMesa".nextval, 'Inhabilitada');      

commit;

--MESA
--insert into mesa values(FOSTERS."SeqMesa".nextval, capacidad, idEstado); 
insert into mesa values(FOSTERS."SeqMesa".nextval, 1);
insert into mesa values(FOSTERS."SeqMesa".nextval, 1);
insert into mesa values(FOSTERS."SeqMesa".nextval, 1);
insert into mesa values(FOSTERS."SeqMesa".nextval, 1);
insert into mesa values(FOSTERS."SeqMesa".nextval, 1);

commit;

--TIPO_PAGO
--insert into tipo_pago values(FOSTERS."SeqTipoPago".nextval, nombre)
insert into tipo_pago values(FOSTERS."SeqTipoPago".nextval, 'Efectivo');
insert into tipo_pago values(FOSTERS."SeqTipoPago".nextval, 'Tarjeta');
insert into tipo_pago values(FOSTERS."SeqTipoPago".nextval, 'Checkes de comida');

commit;

--PROVEEDOR
--insert into proveedor values(id number, nombre Varchar2, direccion Varchar2, nif varchar2, telefono Number, email varchar, contacto Varchar2);
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Coca-Cola', 'C/Ribera Loira 20-22, Madrid', 'B79265914', 902199202, 'contacto@cocacola.es', '', 1);
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Heineken', 'Avda de Andalucía, Nº 1, Sevilla ', 'A28006013', 902460555, 'info@clubheineken.es', '', 1);
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Estrella Damm', 'C/ Rosselló nº 515, Barcelona', 'A08000820', 902300125, 'www.damm.es','', 1); 
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Bezoya', 'Avda Manoteras 24, Madrid', 'A09006172', 912035500, 'webmaster@lechepascual.com ','', 1); 
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Frigo', 'Avda. Diagonal 569 Barcelona', 'A78593084', 902013456, '', '', 1); 
insert into proveedor values(FOSTERS."SeqProveedor".nextval, 'Heinz', 'Ctra.Rincón de Soto a Corella,La Rioja', 'A78593084', 902945184, 'consumidores.servicio@es.hjheinz.com', '', 1); 

commit;

--TAMANYO
--insert into tamanyo values(FOSTERS."SeqTamanyo".nextval, nombre);
insert into tamanyo values(FOSTERS."SeqTamanyo".nextval, 'Pequeño');
insert into tamanyo values(FOSTERS."SeqTamanyo".nextval, 'Mediano');
insert into tamanyo values(FOSTERS."SeqTamanyo".nextval, 'Grande');

commit;

--CATEGORIA
--insert into categoria values(FOSTERS."SeqCategoria".nextval, nombre);
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Entrantes');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Ensaladas');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Tex Mex');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Sandwiches');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Pollo y Pescado');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Parrilla');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Costillas');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Hamburguesas');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Platos Infantiles');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Bebidas');
insert into categoria values(FOSTERS."SeqCategoria".nextval, 'Postres');



commit;

--TIPO OFERTA
--insert into TIPO_oferta values (FOSTERS."SeqTipoOferta".nextval, nombre);
insert into TIPO_oferta values (FOSTERS."SeqTipoOferta".nextval, 'Sin oferta');

commit;

--OFERTAS
--insert into oferta values (FOSTERS."SeqOferta".nextval, fechaInicio, fechafin, id);
insert into oferta values (FOSTERS."SeqOferta".nextval, sysdate, sysdate+10, 1);


commit;

--PRODUCTO
--insert into producto values(id Number, nombre Varchar2, descripcion Varchar2, foto Varchar2, precio_compra Number, precio_base Number, _
-- precio_venta Number, odIva Number, idCategoria Number, idTamanyo Number, stock Number, stockRiesgo Number, idOferta Number, menu number, idestado number);

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

commit;


UPDATE producto SET foto = 'bigtimeribs.png' where ID_CATEGORIA = 7;
UPDATE producto SET foto = 'sinfotografia.png' where ID_CATEGORIA <> 7;

--cambiamos el de todos con un procedure
--excute package gest_Producto.cambiar_Precios_por_Venta;

commit;
