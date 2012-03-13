Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase Producto
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Producto

#Region "Constantes"
  Private Const _INSERT As String = "GestionProductos.Insertar"
  Private Const _DELETE As String = "GestionProductos.Borrar"
  Private Const _UPDATE As String = "GestionProductos.Modificar"
  Private Const _INSERT_GUARNICION As String = "GestionProductos.InsertarGuarnicion"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Nombre As String
  Private _Descripcion As String
  Private _PrecioCoste As Single
  Private _PVP As Single
  Private _Calorias As Integer
  Private _Stock As Integer
  Private _StockMinimo As Integer
  Private _Activo As Boolean
  Private _Guarniciones As List(Of Producto)
  Private _SubCategoria As SubCategoria
  Private _IVA As TipoIVA
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Nombre = "Desconocido"
    Me._Descripcion = "Desconocida"
    Me._PrecioCoste = 0.0F
    Me._PVP = 0.0F
    Me._Calorias = 0
    Me._Stock = 0
    Me._StockMinimo = 0
    Me._Activo = True
    Me._Guarniciones = New List(Of Producto)
    Me._SubCategoria = New SubCategoria
    Me._IVA = New TipoIVA
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal descripcion As String, ByVal coste As Single, ByVal pvp As Single, ByVal calorias As Integer, ByVal stock As Integer, ByVal minimo As Integer, ByVal activo As Boolean, ByVal guarniciones As List(Of Producto), ByVal subcategoria As SubCategoria, ByVal iva As TipoIVA)
    Me._Codigo = codigo
    Me._Nombre = nombre
    Me._Descripcion = descripcion
    Me._PrecioCoste = coste
    Me._PVP = pvp
    Me._Calorias = calorias
    Me._Stock = stock
    Me._StockMinimo = minimo
    Me._Activo = activo
    Me._Guarniciones = guarniciones
    Me._SubCategoria = subcategoria
    Me._IVA = iva
  End Sub
#End Region

#Region "Propiedades"
  ''' <summary>
  ''' Propiedad del atributo "_Codigo"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Codigo() As Integer
    Get
      Return Me._Codigo
    End Get
    Set(ByVal value As Integer)
      Me._Codigo = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Nombre"
  ''' </summary>
  ''' <value>Una cadena con el valor que se le asignará al atributo</value>
  ''' <returns>Una cadena con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Nombre() As String
    Get
      Return Me._Nombre
    End Get
    Set(ByVal value As String)
      Me._Nombre = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Descripcion"
  ''' </summary>
  ''' <value>Una cadena con el valor que se le asignará al atributo</value>
  ''' <returns>Una cadena con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Descripcion() As String
    Get
      Return Me._Descripcion
    End Get
    Set(ByVal value As String)
      Me._Descripcion = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_PrecioCoste"
  ''' </summary>
  ''' <value>Un single con el valor que se le asignará al atributo</value>
  ''' <returns>Un single con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property PrecioCoste() As Single
    Get
      Return Me._PrecioCoste
    End Get
    Set(ByVal value As Single)
      Me._PrecioCoste = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_PVP"
  ''' </summary>
  ''' <value>Un single con el valor que se le asignará al atributo</value>
  ''' <returns>Un single con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property PVP() As Single
    Get
      Return Me._PVP
    End Get
    Set(ByVal value As Single)
      Me._PVP = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Calorias"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Calorias() As Integer
    Get
      Return Me._Calorias
    End Get
    Set(ByVal value As Integer)
      Me._Calorias = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Stock"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Stock() As Integer
    Get
      Return Me._Stock
    End Get
    Set(ByVal value As Integer)
      Me._Stock = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_StockMinimo"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property StockMinimo() As Integer
    Get
      Return Me._StockMinimo
    End Get
    Set(ByVal value As Integer)
      Me._StockMinimo = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Activo"
  ''' </summary>
  ''' <value>Un boolean con el valor que se le asignará al atributo</value>
  ''' <returns>Un boolean con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Activo() As Boolean
    Get
      Return Me._Activo
    End Get
    Set(ByVal value As Boolean)
      Me._Activo = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Guarniciones"
  ''' </summary>
  ''' <value>Una lista de productos con el valor que se le asignará al atributo</value>
  ''' <returns>Una lista de productos con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Guarniciones() As List(Of Producto)
    Get
      Return Me._Guarniciones
    End Get
    Set(ByVal value As List(Of Producto))
      Me._Guarniciones = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_SubCategoria"
  ''' </summary>
  ''' <value>Una sub categoria con el valor que se le asignará al atributo</value>
  ''' <returns>Una sub categoria con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property SubCategoria() As SubCategoria
    Get
      Return Me._SubCategoria
    End Get
    Set(ByVal value As SubCategoria)
      Me._SubCategoria = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_IVA"
  ''' </summary>
  ''' <value>Un tipo de IVA con el valor que se le asignará al atributo</value>
  ''' <returns>Un tipo de IVA con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property IVA() As TipoIVA
    Get
      Return Me._IVA
    End Get
    Set(ByVal value As TipoIVA)
      Me._IVA = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga todos los productos almacenados
  ''' </summary>
  ''' <returns>Una lista de productos</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar() As List(Of Producto)
    Dim Productos As New List(Of Producto)
    Dim OrigenDatos As New BBDD
    Dim LectorProductos As OracleDataReader
    Dim LectorGuarniciones As OracleDataReader

    If OrigenDatos.Conectar Then
      LectorProductos = OrigenDatos.Consultar("SELECT * FROM Productos ORDER BY codigo")

      If LectorProductos IsNot Nothing AndAlso LectorProductos.HasRows Then
        While LectorProductos.Read
          Dim Nuevo As New Producto
          Nuevo._Codigo = CInt(LectorProductos(0))
          Nuevo._Nombre = CStr(LectorProductos(1))
          Nuevo._Descripcion = CStr(LectorProductos(2))
          Nuevo._PrecioCoste = CSng(LectorProductos(3))
          Nuevo._PVP = CSng(LectorProductos(4))
          Nuevo._Calorias = CInt(LectorProductos(5))
          Nuevo._SubCategoria = SubCategoria.Cargar(CInt(LectorProductos(6)), Categoria.Cargar(CInt(LectorProductos(7))))
          Nuevo._Stock = CInt(LectorProductos(8))
          Nuevo._StockMinimo = CInt(LectorProductos(9))
          Nuevo._IVA = TipoIVA.Cargar(CInt(LectorProductos(10)))
          Nuevo._Activo = CBool(CInt(LectorProductos(11)))

          LectorGuarniciones = OrigenDatos.Consultar("SELECT codigo_guarnicion FROM Guarniciones WHERE codigo_producto = " & Nuevo._Codigo)

          If LectorGuarniciones IsNot Nothing AndAlso LectorGuarniciones.HasRows Then
            While LectorGuarniciones.Read
              Nuevo._Guarniciones.Add(Producto.Cargar(CInt(LectorGuarniciones(0))))
            End While

            LectorGuarniciones.Close()
          End If

            Productos.Add(Nuevo)
        End While

        LectorProductos.Close()
      Else
        Productos = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Productos = Nothing
    End If

    Return Productos
  End Function


    ''' <summary>
    ''' Carga todos los productos almacenados
    ''' </summary>
    ''' <returns>Una lista de productos</returns>
    ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal SubCategoria As SubCategoria) As List(Of Producto)
    Dim Productos As New List(Of Producto)
    Dim OrigenDatos As New BBDD
    Dim LectorProductos As OracleDataReader
    Dim LectorGuarniciones As OracleDataReader

    If OrigenDatos.Conectar Then
      LectorProductos = OrigenDatos.Consultar("SELECT * FROM Productos where codigo_categoria = " & _
                                              CStr(SubCategoria.Categoria.Codigo) & " AND codigo_subcategoria = " & _
                                              CStr(SubCategoria.Codigo) & " ORDER BY codigo")

      If LectorProductos IsNot Nothing AndAlso LectorProductos.HasRows Then
        While LectorProductos.Read
          Dim Nuevo As New Producto
          Nuevo._Codigo = CInt(LectorProductos(0))
          Nuevo._Nombre = CStr(LectorProductos(1))
          Nuevo._Descripcion = CStr(LectorProductos(2))
          Nuevo._PrecioCoste = CSng(LectorProductos(3))
          Nuevo._PVP = CSng(LectorProductos(4))
          Nuevo._Calorias = CInt(LectorProductos(5))
          Nuevo._SubCategoria = SubCategoria
          Nuevo._Stock = CInt(LectorProductos(8))
          Nuevo._StockMinimo = CInt(LectorProductos(9))
          Nuevo._IVA = TipoIVA.Cargar(CInt(LectorProductos(10)))
          Nuevo._Activo = CBool(CInt(LectorProductos(11)))

          LectorGuarniciones = OrigenDatos.Consultar("SELECT codigo_guarnicion FROM Guarniciones WHERE codigo_producto = " & Nuevo._Codigo)

          If LectorGuarniciones IsNot Nothing AndAlso LectorGuarniciones.HasRows Then
            While LectorGuarniciones.Read
              Nuevo._Guarniciones.Add(Producto.Cargar(CInt(LectorGuarniciones(0))))
            End While

            LectorGuarniciones.Close()
          End If

          Productos.Add(Nuevo)
        End While

        LectorProductos.Close()
      Else
        Productos = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Productos = Nothing
    End If

    Return Productos
  End Function


  ''' <summary>
  ''' Carga un producto dado un código
  ''' </summary>
  ''' <param name="codigo">Código del producto a buscar</param>
  ''' <returns>El producto encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As Producto
    Dim Producto As New Producto

    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Productos WHERE codigo = " & codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Producto._Codigo = CInt(Lector(0))
        Producto._Nombre = CStr(Lector(1))
        Producto._Descripcion = CStr(Lector(2))
        Producto._PrecioCoste = CSng(Lector(3))
        Producto._PVP = CSng(Lector(4))
        Producto._Calorias = CInt(Lector(5))
        Producto._SubCategoria = SubCategoria.Cargar(CInt(Lector(6)), Categoria.Cargar(CInt(Lector(7))))
        Producto._Stock = CInt(Lector(8))
        Producto._StockMinimo = CInt(Lector(9))
        Producto._IVA = TipoIVA.Cargar(CInt(Lector(10)))
        Producto._Activo = CBool(CInt(Lector(11)))
        Lector.Close()
      Else
        Producto = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Producto = Nothing
    End If

    Return Producto
  End Function

  ''' <summary>
  ''' Carga todos los productos almacenados
  ''' </summary>
  ''' <returns>Un DataSet con todos los productos</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Productos As New DataSet

    Productos = BBDD.CargarDatos("Productos")

    Return Productos
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Productos con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="productos">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal productos As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 45, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("descripcion", OracleDbType.Varchar2, 200, "descripcion")
    Adaptador.UpdateCommand.Parameters.Add("precio_coste", OracleDbType.Double, 5, "precio_coste")
    Adaptador.UpdateCommand.Parameters.Add("pvp", OracleDbType.Double, 5, "pvp")
    Adaptador.UpdateCommand.Parameters.Add("calorias", OracleDbType.Int32, 3, "calorias")
    Adaptador.UpdateCommand.Parameters.Add("codigo_subcategoria", OracleDbType.Int16, 3, "codigo_subcategoria")
    Adaptador.UpdateCommand.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3, "codigo_categoria")
    Adaptador.UpdateCommand.Parameters.Add("stock", OracleDbType.Int32, 3, "stock")
    Adaptador.UpdateCommand.Parameters.Add("stock_minimo", OracleDbType.Int32, 3, "stock_minimo")
    Adaptador.UpdateCommand.Parameters.Add("codigo_tipo_iva", OracleDbType.Int16, 3, "codigo_tipo_iva")
    Adaptador.UpdateCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(productos, "Productos")

      If CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value) > 0 Or CInt(Adaptador.UpdateCommand.Parameters("Resultado").Value) > 0 Then
        Ok = True
      Else
        Ok = False
      End If
    Catch ex As Exception
      Ok = False
    End Try

    Return Ok
  End Function

  ''' <summary>
  ''' Inserta el Producto en la base de datos
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta</author>
  Public Function Insertar() As Boolean
    Dim Ok As Boolean
    Dim CodigoProducto As Integer
    Dim OrigenDatos As New BBDD
    Dim Comando As New OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("nombre", OracleDbType.Varchar2, 45).Value = Me._Nombre
      Comando.Parameters.Add("descripcion", OracleDbType.Varchar2, 200).Value = Me._Descripcion
      Comando.Parameters.Add("precio_coste", OracleDbType.Double, 5).Value = Me._PrecioCoste
      Comando.Parameters.Add("pvp", OracleDbType.Double, 5).Value = Me._PVP
      Comando.Parameters.Add("calorias", OracleDbType.Int32, 3).Value = Me._Calorias
      Comando.Parameters.Add("codigo_subcategoria", OracleDbType.Int16, 3).Value = Me._SubCategoria.Codigo
      Comando.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3).Value = Me._SubCategoria.Categoria.Codigo
      Comando.Parameters.Add("stock", OracleDbType.Int32, 3).Value = Me._Stock
      Comando.Parameters.Add("stock_minimo", OracleDbType.Int32, 3).Value = Me._StockMinimo
      Comando.Parameters.Add("codigo_tipo_iva", OracleDbType.Int16, 3).Value = Me._IVA.Codigo
      Comando.Parameters.Add("activo", OracleDbType.Int16, 1).Value = CInt(Me._Activo)
      Comando.CommandType = CommandType.StoredProcedure
      CodigoProducto = OrigenDatos.Modificar(Comando)

      If CodigoProducto > 0 Then
        Me._Codigo = CodigoProducto
        Ok = True

        For Each producto As Producto In Me._Guarniciones
          Comando = New OracleCommand(_INSERT_GUARNICION, OrigenDatos.Conexion)
          Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
          Comando.Parameters.Add("codigo_producto", OracleDbType.Int32, 8).Value = Me._Codigo
          Comando.Parameters.Add("codigo_guarnicion", OracleDbType.Int32, 8).Value = producto._Codigo
          Comando.CommandType = CommandType.StoredProcedure

          If Not CBool(Comando.Parameters("Resultado").Value) Then
            Ok = False
          End If
        Next
      Else
        Ok = False
      End If

      OrigenDatos.Desconectar()
      OrigenDatos.Dispose()
    Else
      Ok = False
    End If

    Return Ok
  End Function
#End Region

#Region "Destructores"
  ''' <summary>
  ''' Destructor manual
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub Dispose()
    Me._Codigo = -1
    Me._Nombre = ""
    Me._Descripcion = ""
    Me._PrecioCoste = -1.0F
    Me._PVP = -1.0F
    Me._Calorias = -1
    Me._Stock = -1
    Me._StockMinimo = -1
    Me._Activo = False
    Me._Guarniciones.Clear()
    Me._SubCategoria.Dispose()
    Me._IVA.Dispose()
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Nombre = ""
    Me._Descripcion = ""
    Me._PrecioCoste = -1.0F
    Me._PVP = -1.0F
    Me._Calorias = -1
    Me._Stock = -1
    Me._StockMinimo = -1
    Me._Activo = False
    Me._Guarniciones.Clear()
    Me._SubCategoria.Dispose()
    Me._IVA.Dispose()
  End Sub
#End Region
End Class
