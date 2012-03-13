Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase Categoria
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Categoria

#Region "Constantes"
  Private Const _INSERT As String = "GestionCategorias.Insertar"
  Private Const _DELETE As String = "GestionCategorias.Borrar"
  Private Const _UPDATE As String = "GestionCategorias.Modificar"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Nombre As String
  Private _Activa As Boolean
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Nombre = "Desconocido"
    Me._Activa = True
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal estado As Boolean)
    Me._Codigo = codigo
    Me._Nombre = nombre
    Me._Activa = estado
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
  ''' Propiedad el atributo "_Nombre"
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
  ''' Propiedad el atributo "_Activa"
  ''' </summary>
  ''' <value>Una boolean con el valor que se le asignará al atributo</value>
  ''' <returns>Una boolean con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Estado() As Boolean
    Get
      Return Me._Activa
    End Get
    Set(ByVal value As Boolean)
      Me._Activa = value
    End Set
  End Property
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga una categoría dado un código
  ''' </summary>
  ''' <param name="codigo">Código de la categoría a buscar</param>
  ''' <returns>La categoría encontrada</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As Categoria
    Dim Categoria As New Categoria

    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Categorias WHERE codigo = " & codigo)

      If Lector IsNot Nothing Then
        If Lector.HasRows Then
          Lector.Read()
          Categoria._Codigo = CInt(Lector(0))
          Categoria._Nombre = CStr(Lector(1))
          Categoria._Activa = CBool(CInt(Lector(2)))
        Else
          Categoria = Nothing
        End If

        Lector.Close()
      End If
      OrigenDatos.Desconectar()
    Else
      Categoria = Nothing
    End If

    Return Categoria
  End Function

  ''' <summary>
  ''' Carga todas las categorías almacenadas
  ''' </summary>
  ''' <returns>Un DataSet con todas las categorías</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Categorias As DataSet

    Categorias = BBDD.CargarDatos("Categorias")

    Return Categorias
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Categorías con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="categorias">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function Actualizar(ByVal categorias As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.InsertCommand = New OracleCommand(_INSERT, OrigenDatos.Conexion)
    Adaptador.InsertCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.InsertCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.InsertCommand.CommandType = CommandType.StoredProcedure

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      If Adaptador.Update(categorias, "Categorias") >= 0 Then
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
    Me._Activa = False
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Nombre = ""
    Me._Activa = False
  End Sub
#End Region
End Class
