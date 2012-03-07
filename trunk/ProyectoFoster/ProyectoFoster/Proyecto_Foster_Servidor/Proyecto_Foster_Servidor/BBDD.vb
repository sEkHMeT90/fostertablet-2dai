Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase BBDD
''' </summary>
''' <author>Andrés Marotta, David Guerra</author>
Public Class BBDD

#Region "Constantes"
    Private Const _CADENA_CONEXION As String = "Data Source=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=84.120.90.221)(PORT=8080)))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=XE)));User Id=FOSTERS;Password=FOSTERSPWD;"
#End Region

#Region "Variables"
    Private _Conexion As OracleConnection
    Private _Comando As OracleCommand
    Private _Lector As OracleDataReader
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Conexion = New OracleConnection(_CADENA_CONEXION)
    End Sub
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Abre la conexión con la base de datos
    ''' </summary>
    ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Conectar() As Boolean
        Dim Ok As Boolean

        Try
            Me._Conexion.Open()
            Ok = True
        Catch ex As Exception
            Ok = False
        End Try

        Return Ok
    End Function

    ''' <summary>
    ''' Carga todos los datos de una tabla dada
    ''' </summary>
    ''' <param name="tabla">Nombre de la tabla a consultar</param>
    ''' <returns>Un DataSet con los datos de la tabla consultada</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos(ByVal tabla As String) As DataSet
        Dim Datos As New DataSet
        Dim Conexion As OracleConnection
        Dim Adaptador As OracleDataAdapter

        Try
            Conexion = New OracleConnection(_CADENA_CONEXION)
            Adaptador = New OracleDataAdapter("SELECT * FROM " & tabla, Conexion)
            Adaptador.Fill(Datos, tabla)
        Catch ex As Exception
            Datos = Nothing
            MessageBox.Show(ex.Message)
        End Try

        Return Datos
    End Function

    ''' <summary>
    ''' Ejecuta una sentencia SELECT y devuelve las filas resultantes 
    ''' </summary>
    ''' <param name="comando">Sentencia SELECT a ejecutar</param>
    ''' <returns>Un OracleDataReader con el resultado de la ejecución</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Consultar(ByVal comando As String) As OracleDataReader
        Try
            Me._Comando = New OracleCommand(comando, Me._Conexion)
            Me._Lector = Me._Comando.ExecuteReader

        Catch ex As Exception
            Me._Lector = Nothing
        End Try

        Return Me._Lector
    End Function

    ''' <summary>
    ''' Ejecuta el comando recibido y devuelve el resultado 
    ''' </summary>
    ''' <param name="comando">Sentencia SQL a ejecutar</param>
    ''' <returns>Un entero con el número de columnas afectadas</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Modificar(ByVal comando As String) As Integer
        Dim ColumnasAfectadas As Integer

        Try
            Me._Comando = New OracleCommand(comando, Me._Conexion)
            ColumnasAfectadas = Me._Comando.ExecuteNonQuery

        Catch ex As Exception
            ColumnasAfectadas = 0
        End Try

        Return ColumnasAfectadas
    End Function

    ''' <summary>
    ''' Cierra la conexión con la base de datos
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Desconectar()
        If Me._Lector IsNot Nothing Then
            Me._Lector.Close()
        End If

        If Me._Conexion.State = ConnectionState.Open Then
            Me._Conexion.Close()
        End If
    End Sub
#End Region

#Region "Destructores"
    ''' <summary>
    ''' Destructor manual
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Dispose()
        Me._Conexion = Nothing
        Me._Lector = Nothing
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Conexion = Nothing
        Me._Lector = Nothing
    End Sub
#End Region

End Class
