Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase LineaComanda
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class LineaComanda

#Region "Constantes"
  Private Const _INSERT As String = "GestionComandas.InsertarLinea"
  Private Const _DELETE As String = "GestionComandas.BorrarLinea"
  Private Const _UPDATE As String = "GestionComandas.ModificarLinea"
#End Region

#Region "Variables"
  Private _Numero As Integer
  Private _Producto As Producto
  Private _Entregada As Boolean
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Numero = 0
    Me._Producto = New Producto
    Me._Entregada = False
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal numero As Integer, ByVal producto As Producto)
    Me._Numero = numero
    Me._Producto = producto
    Me._Entregada = False
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
  ''' Propiedad del atributo "_Entregada"
  ''' </summary>
  ''' <value>Un boolean con el valor que se le asignará al atributo</value>
  ''' <returns>Un boolean con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Entregada() As Boolean
    Get
      Return Me._Entregada
    End Get
    Set(ByVal value As Boolean)
      Me._Entregada = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga todas las líneas de comanda almacenadas dada una comanda
  ''' </summary>
  ''' <param name="comanda">Comanda a buscar</param>
  ''' <returns>Lista de líneas de la comanda encontrada</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal comanda As Comanda) As List(Of LineaComanda)
    Dim Lineas As New List(Of LineaComanda)
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT numero, codigo_producto, entregada FROM Lineas_Comanda WHERE codigo_comanda = " & comanda.Codigo & " order by numero")

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        While Lector.Read
          Dim Nueva As New LineaComanda
          Nueva._Numero = CInt(Lector(0))
          Nueva._Producto = Producto.Cargar(CInt(Lector(1)))
          Nueva._Entregada = CBool(CInt(Lector(2)))
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
  ''' Carga todas las líneas de comanda almacenadas dada una comanda
  ''' </summary>
  ''' <param name="comanda">Comanda a buscar</param>
  ''' <returns>Un DataSet con todas las líneas de comanda</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos(ByVal comanda As Comanda) As DataSet
    Dim Lineas As New DataSet

    Lineas = BBDD.CargarDatos("Lineas_Comanda", "codigo_comanda = " & comanda.Codigo)

    Return Lineas
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Lineas_Comanda con los cambios de un DataSet dado
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
    Adaptador.DeleteCommand.Parameters.Add("codigo_comanda", OracleDbType.Int16, 3, "codigo_comanda")
    Adaptador.DeleteCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("codigo_producto", OracleDbType.Int32, 8, "codigo_producto")
    Adaptador.UpdateCommand.Parameters.Add("entregada", OracleDbType.Int16, 1, "entregada")
    Adaptador.DeleteCommand.Parameters.Add("codigo_comanda", OracleDbType.Int16, 3, "codigo_comanda")
    Adaptador.DeleteCommand.Parameters.Add("numero", OracleDbType.Int16, 3, "numero")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      If Adaptador.Update(lineas, "Lineas_Comanda") > 0 Then
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
  ''' Inserta la línea de comanda en la base de datos
  ''' </summary>
  ''' <param name="comanda">Comanda a la que pertenece la línea</param>
  ''' <returns>Un boleean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function Insertar(ByVal comanda As Comanda) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_producto", OracleDbType.Int32, 3).Value = Me._Producto.Codigo
      Comando.Parameters.Add("entregada", OracleDbType.Int16, 1).Value = CInt(Me._Entregada)
      Comando.Parameters.Add("codigo_comanda", OracleDbType.Int16, 1).Value = comanda.Codigo
      Comando.CommandType = CommandType.StoredProcedure

      If OrigenDatos.Modificar(Comando) <> 0 Then
        Ok = True
      Else
        Ok = False
      End If

      OrigenDatos.Desconectar()
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
    Me._Entregada = False
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Numero = -1
    Me._Producto.Dispose()
    Me._Entregada = False
  End Sub
#End Region
End Class
