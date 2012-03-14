Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase TipoIVA
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class TipoIVA

#Region "Constantes"
  Private Const _INSERT As String = "GestionTipoIva.Insertar"
  Private Const _DELETE As String = "GestionTipoIva.Borrar"
  Private Const _UPDATE As String = "GestionTipoIva.Modificar"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _Porcentaje As Integer
  Private _Nombre As String
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._Porcentaje = 0
    Me._Nombre = "Desconocido"
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal estado As Integer)
    Me._Codigo = codigo
    Me._Porcentaje = estado
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
  ''' Propiedad el atributo "_Porcentaje"
  ''' </summary>
  ''' <value>Una entero con el valor que se le asignará al atributo</value>
  ''' <returns>Una entero con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Porcentaje() As Integer
    Get
      Return Me._Porcentaje
    End Get
    Set(ByVal value As Integer)
      Me._Porcentaje = value
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
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga un tipo de IVA dado un código
  ''' </summary>
  ''' <param name="codigo">Código del tipo de IVA a buscar</param>
  ''' <returns>El tipo de IVA encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As TipoIVA
    Dim Tipo As New TipoIVA

    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Tipos_IVA WHERE codigo = " & codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Tipo._Codigo = CInt(Lector(0))
        Tipo._Porcentaje = CInt(Lector(1))
        Tipo._Nombre = CStr(Lector(2))
        Lector.Close()
      Else
        Tipo = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Tipo = Nothing
    End If

    Return Tipo
  End Function

  ''' <summary>
  ''' Carga todos los tipos de IVA almacenados
  ''' </summary>
  ''' <returns>Un DataSet con todos los tipos de IVA</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Tipos As New DataSet

    Tipos = BBDD.CargarDatos("Tipos_Iva")

    Return Tipos
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Tipos_IVA con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="tipos">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal tipos As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.InsertCommand = New OracleCommand(_INSERT, OrigenDatos.Conexion)
    Adaptador.InsertCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("porcentaje", OracleDbType.Int16, 3, "porcentaje")
    Adaptador.InsertCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.InsertCommand.CommandType = CommandType.StoredProcedure

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3, "codigo_categoria")
    Adaptador.UpdateCommand.Parameters.Add("porcentaje", OracleDbType.Int16, 3, "porcentaje")
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(tipos, "Tipos_IVA")

      If CInt(Adaptador.InsertCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
         CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
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
#End Region

#Region "Destructores"
  ''' <summary>
  ''' Destructor manual
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub Dispose()
    Me._Codigo = -1
    Me._Porcentaje = -1
    Me._Nombre = ""
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._Porcentaje = -1
    Me._Nombre = ""
  End Sub
#End Region
End Class
