Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase LineaPedido
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class LineaPedido

#Region "Constantes"
  Private Const _INSERT As String = "GestionPedidos.InsertarLinea"
  Private Const _DELETE As String = "GestionPedidos.BorrarLinea"
  Private Const _UPDATE As String = "GestionPedidos.ModificarLinea"
#End Region

#Region "Variables"
  Private _Numero As Integer
  Private _Producto As Producto
  Private _Cantidad As Integer
  Private _Precio As String
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Numero = 0
    Me._Producto = New Producto
    Me._Cantidad = 0
    Me._Precio = "0"
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal numero As Integer, ByVal producto As Producto, ByVal cantidad As Integer, ByVal precio As String)
    Me._Numero = numero
    Me._Producto = producto
    Me._Cantidad = cantidad
    Me._Precio = precio
  End Sub
#End Region

#Region "Propiedades"
  ''' <summary>
  ''' Propiedad del atributo "_Numero"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Numero() As Integer
    Get
      Return Me._Numero
    End Get
    Set(ByVal value As Integer)
      Me._Numero = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Producto"
  ''' </summary>
  ''' <value>Un producto con el valor que se le asignará al atributo</value>
  ''' <returns>Un producto con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Producto() As Producto
    Get
      Return Me._Producto
    End Get
    Set(ByVal value As Producto)
      Me._Producto = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Cantidad"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Cantidad() As Integer
    Get
      Return Me._Cantidad
    End Get
    Set(ByVal value As Integer)
      Me._Cantidad = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Precio"
  ''' </summary>
  ''' <value>Un single con el valor que se le asignará al atributo</value>
  ''' <returns>Un string con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Precio() As String
    Get
      Return Me._Precio
    End Get
    Set(ByVal value As String)
      Me._Precio = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga todas las líneas de pedido almacenadas dado un pedido
  ''' </summary>
  ''' <param name="pedido">Pedido a buscar</param>
  ''' <returns>Un DataSet con todas las líneas</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function Cargar(ByVal pedido As Pedido) As DataSet
    Dim Lineas As New DataSet

    Lineas = BBDD.CargarDatos("Lineas_Pedido", "codigo_pedido = " & pedido.Codigo)

    Return Lineas
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Lineas_Pedido con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="lineas">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal lineas As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo_pedido", OracleDbType.Int16, 3, "codigo_pedido")
    Adaptador.DeleteCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("codigo_producto", OracleDbType.Int32, 8, "codigo_producto")
    Adaptador.UpdateCommand.Parameters.Add("precio", OracleDbType.Varchar2, 10, "precio")
    Adaptador.UpdateCommand.Parameters.Add("cantidad", OracleDbType.Int16, 4, "cantidad")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      If Adaptador.Update(lineas, "Lineas_Pedido") > 0 Then
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
  ''' Inserta la línea de pedido en la base de datos
  ''' </summary>
  ''' <param name="pedido">Pedido al que pertenece la línea</param>
  ''' <returns>Un boleean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta</author>
  Public Function Insertar(ByVal pedido As Pedido) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_pedido", OracleDbType.Int32, 8).Value = pedido.Codigo
      Comando.Parameters.Add("codigo_producto", OracleDbType.Int32, 8).Value = Me._Producto.Codigo
      Comando.Parameters.Add("precio", OracleDbType.Varchar2, 10).Value = Me._Precio
      Comando.Parameters.Add("cantidad", OracleDbType.Int32, 4).Value = Me._Cantidad
      Comando.CommandType = CommandType.StoredProcedure

      If OrigenDatos.Modificar(Comando) <> 0 Then
        Ok = True
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
    Me._Numero = -1
    Me._Producto.Dispose()
    Me._Cantidad = -1
    Me._Precio = "-1"
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Numero = -1
    Me._Producto.Dispose()
    Me._Cantidad = -1
    Me._Precio = "-1"
  End Sub
#End Region
End Class
