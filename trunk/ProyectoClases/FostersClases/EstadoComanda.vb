Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase EstadoComanda
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class EstadoComanda

#Region "Constantes"
  Private Const _INSERT As String = "GestionEstadoComandas.Insertar"
  Private Const _DELETE As String = "GestionEstadoComandas.Borrar"
  Private Const _UPDATE As String = "GestionEstadoComandas.Modificar"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Nombre As String
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Nombre = "Desconocido"
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal nombre As String)
    Me._Codigo = codigo
    Me._Nombre = nombre
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
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga un estado de comanda dado un código
  ''' </summary>
  ''' <param name="codigo">Código del estado a buscar</param>
  ''' <returns>El estado de comanda encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As EstadoComanda
    Dim Estado As New EstadoComanda
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Estados_Comanda WHERE codigo = " & codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Estado.Codigo = CInt(Lector(0))
        Estado.Nombre = CStr(Lector(1))
        Lector.Close()
      Else
        Estado = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Estado = Nothing
    End If

    Return Estado
  End Function

  ''' <summary>
  ''' Carga todos los estados de comanda almacenados
  ''' </summary>
  ''' <returns>Una DataSet con los estados de comanda</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Estados As New DataSet

    Estados = BBDD.CargarDatos("Estados_Comanda")

    Return Estados
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Estados_Comanda con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="estados">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal estados As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.InsertCommand = New OracleCommand(_INSERT, OrigenDatos.Conexion)
    Adaptador.InsertCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.InsertCommand.CommandType = CommandType.StoredProcedure

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      If Adaptador.Update(estados, "Estados_Comanda") >= 0 Then
        Ok = True
      Else
        Ok = False
      End If
    Catch ex As Exception
      Ok = False
    End Try

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
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Nombre = ""
  End Sub
#End Region
End Class
