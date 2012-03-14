Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase Pedido
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Pedido

#Region "Constantes"
  Private Const _INSERT As String = "GestionPedidos.Insertar"
  Private Const _DELETE As String = "GestionPedidos.Borrar"
  Private Const _UPDATE As String = "GestionPedidos.Modificar"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Fecha As DateTime
  Private _Proveedor As Proveedor
  Private _PrecioTotal As Single
  Private _Recibido As Boolean
  Private _Lineas As List(Of LineaPedido)
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Fecha = Now
    Me._Proveedor = New Proveedor
    Me._PrecioTotal = 0.0F
    Me._Recibido = True
    Me._Lineas = New List(Of LineaPedido)
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal fecha As DateTime, ByVal proveedor As Proveedor, ByVal precio As Single, ByVal recibido As Boolean, ByVal lineas As List(Of LineaPedido))
    Me._Codigo = codigo
    Me._Fecha = fecha
    Me._Proveedor = proveedor
    Me._PrecioTotal = precio
    Me._Recibido = recibido
    Me._Lineas = lineas
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
  ''' Propiedad del atributo "_Fecha"
  ''' </summary>
  ''' <value>Una fecha con el valor que se le asignará al atributo</value>
  ''' <returns>Una fecha con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Fecha() As DateTime
    Get
      Return Me._Fecha
    End Get
    Set(ByVal value As DateTime)
      Me._Fecha = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Proveedor"
  ''' </summary>
  ''' <value>Un proveedor con el valor que se le asignará al atributo</value>
  ''' <returns>Un proveedor con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Proveedor() As Proveedor
    Get
      Return Me._Proveedor
    End Get
    Set(ByVal value As Proveedor)
      Me._Proveedor = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_PrecioTotal"
  ''' </summary>
  ''' <value>Un single con el valor que se le asignará al atributo</value>
  ''' <returns>Un single con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property PrecioTotal() As Single
    Get
      Return Me._PrecioTotal
    End Get
    Set(ByVal value As Single)
      Me._PrecioTotal = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Recibido"
  ''' </summary>
  ''' <value>Un boolean con el valor que se le asignará al atributo</value>
  ''' <returns>Un boolean con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Recibido() As Boolean
    Get
      Return Me._Recibido
    End Get
    Set(ByVal value As Boolean)
      Me._Recibido = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Lineas"
  ''' </summary>
  ''' <value>La lista con las líneas del pedido</value>
  ''' <returns>Una lista de lineas con el valor del atributo</returns>
  ''' <author>David Martínez Pérez</author>
  Public Property Lineas() As List(Of LineaPedido)
    Get
      Return Me._Lineas
    End Get
    Set(ByVal value As List(Of LineaPedido))
      Me._Lineas = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga todos los pedidos almacenados
  ''' </summary>
  ''' <returns>Un DataSet con todos los pedidos</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Pedidos As New DataSet

    Pedidos = BBDD.CargarDatos("Pedidos")

    Return Pedidos
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Pedidos con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="pedidos">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal pedidos As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("fecha", OracleDbType.Date, 0, "fecha")
    Adaptador.UpdateCommand.Parameters.Add("cif_proveedor", OracleDbType.Varchar2, 15, "cif_proveedor")
    Adaptador.UpdateCommand.Parameters.Add("precio_total", OracleDbType.Double, 3, "precio_total")
    Adaptador.UpdateCommand.Parameters.Add("recibido", OracleDbType.Int16, 1, "recibido")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int32, 8, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(pedidos, "Pedidos")

      If CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
         CInt(Adaptador.UpdateCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Then
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
  ''' Inserta el pedido en la base de datos
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta</author>
  Public Function Insertar() As Boolean
    Dim Ok As Boolean
    Dim CodigoPedido As Integer
    Dim OrigenDatos As New BBDD
    Dim Comando As New OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("fecha", OracleDbType.Date).Value = Me._Fecha
      Comando.Parameters.Add("cif_proveedor", OracleDbType.Varchar2, 15).Value = Me._Proveedor.CIF
      Comando.Parameters.Add("precio_total", OracleDbType.Double).Value = Me._PrecioTotal
      Comando.Parameters.Add("recibido", OracleDbType.Int16, 1).Value = 0
      CodigoPedido = OrigenDatos.Modificar(Comando)

      If CodigoPedido > 0 Then
        Me._Codigo = CodigoPedido
        Ok = True

        For Each linea As LineaPedido In Me._Lineas
          If Not linea.Insertar(Me) Then
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
    Me._Fecha = #1/1/1990#
    Me._Proveedor.Dispose()
    Me._PrecioTotal = -1.0F
    Me._Recibido = False
    Me._Lineas.Clear()
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Fecha = #1/1/1990#
    Me._Proveedor.Dispose()
    Me._PrecioTotal = -1.0F
    Me._Recibido = False
    Me._Lineas.Clear()
  End Sub
#End Region  
End Class
