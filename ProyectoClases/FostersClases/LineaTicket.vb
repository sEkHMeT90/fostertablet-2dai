Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase LineaTicket
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class LineaTicket

#Region "Constantes"
  Private Const _INSERT As String = "GestionTickets.InsertarLinea"
  Private Const _DELETE As String = "GestionTickets.BorrarLinea"
  Private Const _UPDATE As String = "GestionTickets.ModificarLinea"
#End Region

#Region "Variables"
  Private _Numero As Integer
  Private _NombreProducto As String
  Private _Cantidad As Integer
  Private _Descuento As Integer
  Private _IVA As Integer
  Private _Precio As String
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Numero = 0
    Me._NombreProducto = "Desconocido"
    Me._Cantidad = 0
    Me._Descuento = 0
    Me._IVA = 0
    Me._Precio = "0"
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal numero As Integer, ByVal producto As String, ByVal cantidad As Integer, ByVal descuento As Integer, ByVal iva As Integer, ByVal precio As String)
    Me._Numero = numero
    Me._NombreProducto = producto
    Me._Cantidad = cantidad
    Me._Descuento = descuento
    Me._IVA = iva
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
  ''' Propiedad del atributo "_NombreProducto"
  ''' </summary>
  ''' <value>Un producto con el valor que se le asignará al atributo</value>
  ''' <returns>Un producto con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property NombreProducto() As String
    Get
      Return Me._NombreProducto
    End Get
    Set(ByVal value As String)
      Me._NombreProducto = value
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
  ''' Propiedad del atributo "_Descuento"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Descuento() As Integer
    Get
      Return Me._Descuento
    End Get
    Set(ByVal value As Integer)
      Me._Descuento = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_IVA"
  ''' </summary>
  ''' <value>Un entero con el valor que se le asignará al atributo</value>
  ''' <returns>Un entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property IVA() As Integer
    Get
      Return Me._IVA
    End Get
    Set(ByVal value As Integer)
      Me._IVA = value
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
  ''' Carga todas las líneas de ticket almacenadas dado un ticket
  ''' </summary>
  ''' <param name="ticket">Ticket a buscar</param>
  ''' <returns>Lista de líneas del ticket encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal ticket As Ticket) As List(Of LineaTicket)
    Dim Lineas As New List(Of LineaTicket)
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT numero, nombre_producto, cantidad, descuento, precio, iva FROM Lineas_Ticket WHERE codigo_ticket = " & ticket.Codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        While Lector.Read
          Dim Nueva As New LineaTicket
          Nueva._Numero = CInt(Lector(0))
          Nueva._NombreProducto = CStr(Lector(1))
          Nueva._Cantidad = CInt(Lector(2))
          Nueva._Descuento = CInt(Lector(3))
          Nueva._Precio = CStr(Lector(4))
          Nueva._IVA = CInt(Lector(5))
          Lineas.Add(Nueva)
        End While
        Lector.Close()
      Else
        Lineas = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Lineas = Nothing
    End If

    Return Lineas
  End Function

  ''' <summary>
  ''' Carga todas las líneas de ticket almacenadas dado un ticket
  ''' </summary>
  ''' <param name="ticket">Ticket a buscar</param>
  ''' <returns>Un DataSet con todas las líneas del ticket encontrado</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos(ByVal ticket As Ticket) As DataSet
    Dim Lineas As New DataSet

    Lineas = BBDD.CargarDatos("Lineas_Ticket", "codigo_ticket = " & ticket.Codigo)

    Return Lineas
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Lineas_Ticket con los cambios de un DataSet dado
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
    Adaptador.DeleteCommand.Parameters.Add("codigo_ticket", OracleDbType.Int32, 8, "codigo_ticket")
    Adaptador.DeleteCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("nombre_producto", OracleDbType.Varchar2, 55, "nombre_producto")
    Adaptador.UpdateCommand.Parameters.Add("cantidad", OracleDbType.Int32, 2, "cantidad")
    Adaptador.UpdateCommand.Parameters.Add("descuento", OracleDbType.Int32, 3, "descuento")
    Adaptador.UpdateCommand.Parameters.Add("precio", OracleDbType.Varchar2, 10, "precio")
    Adaptador.UpdateCommand.Parameters.Add("iva", OracleDbType.Int32, 3, "iva")
    Adaptador.UpdateCommand.Parameters.Add("codigo_ticket", OracleDbType.Int32, 8, "codigo_ticket")
    Adaptador.UpdateCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      If Adaptador.Update(lineas, "Lineas_Ticket") > 0 Then
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
  ''' Inserta la línea de ticket en la base de datos
  ''' </summary>
  ''' <param name="ticket">Ticket al que pertenece la línea</param>
  ''' <returns>Un boleean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta</author>
  Public Function Insertar(ByVal ticket As Ticket) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar() Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_ticket", OracleDbType.Int32, 8).Value = ticket.Codigo
      Comando.Parameters.Add("nombre_producto", OracleDbType.Varchar2, 55).Value = Me._NombreProducto
      Comando.Parameters.Add("descuento", OracleDbType.Int32, 3).Value = Me._Descuento
      Comando.Parameters.Add("precio", OracleDbType.Varchar2, 10).Value = Me._Precio
      Comando.Parameters.Add("iva", OracleDbType.Int32, 3).Value = Me._IVA
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
    Me._NombreProducto = ""
    Me._Cantidad = -1
    Me._Descuento = -1
    Me._IVA = -1
    Me._Precio = "-1"
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Numero = -1
    Me._NombreProducto = ""
    Me._Cantidad = -1
    Me._Descuento = -1
    Me._IVA = -1
    Me._Precio = "-1"
  End Sub
#End Region
End Class
