Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase Proveedor
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Proveedor

#Region "Constantes"
  Private Const _INSERT As String = "GestionProveedores.Insertar"
  Private Const _DELETE As String = "GestionProveedores.Borrar"
  Private Const _UPDATE As String = "GestionProveedores.Modificar"
#End Region

#Region "Variables"
  Private _CIF As String
  Private _Nombre As String
  Private _Direccion As String
  Private _Telefono As String
  Private _Activo As Boolean
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._CIF = "Desconocido"
    Me._Nombre = "Desconocido"
    Me._Direccion = "Desconocida"
    Me._Telefono = "Desconocido"
    Me._Activo = True
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal cif As String, ByVal nombre As String, ByVal direccion As String, ByVal telefono As String, ByVal activo As Boolean)
    Me._CIF = cif
    Me._Nombre = nombre
    Me._Direccion = direccion
    Me._Telefono = telefono
    Me._Activo = activo
  End Sub
#End Region

#Region "Propiedades"
  ''' <summary>
  ''' Propiedad del atributo "_CIF"
  ''' </summary>
  ''' <value>Una cadena con el valor que se le asignará al atributo</value>
  ''' <returns>Una cadena con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property CIF() As String
    Get
      Return Me._CIF
    End Get
    Set(ByVal value As String)
      Me._CIF = value
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
  ''' Propiedad del atributo "_Direccion"
  ''' </summary>
  ''' <value>Una cadena con el valor que se le asignará al atributo</value>
  ''' <returns>Una cadena con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Direccion() As String
    Get
      Return Me._Direccion
    End Get
    Set(ByVal value As String)
      Me._Direccion = value
    End Set
  End Property

  ''' <summary>
  ''' Propiedad del atributo "_Telefono"
  ''' </summary>
  ''' <value>Una cadena con el valor que se le asignará al atributo</value>
  ''' <returns>Una cadena con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Telefono() As String
    Get
      Return Me._Telefono
    End Get
    Set(ByVal value As String)
      Me._Telefono = value
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
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga un proveedor dado un CIF
  ''' </summary>
  ''' <param name="cif">CIF del proveedor a buscar</param>
  ''' <returns>El proveedor encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal cif As String) As Proveedor
    Dim Proveedor As New Proveedor
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Proveedores WHERE cif = '" & cif & "'")

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Proveedor._CIF = CStr(Lector(0))
        Proveedor._Nombre = CStr(Lector(1))
        Proveedor._Direccion = CStr(Lector(2))
        Proveedor._Telefono = CStr(Lector(3))
        Proveedor._Activo = CBool(CInt(Lector(4)))
        Lector.Close()
      Else
        Proveedor = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Proveedor = Nothing
    End If

    Return Proveedor
  End Function

  ''' <summary>
  ''' Carga todos los proveedores almacenados
  ''' </summary>
  ''' <returns>Un DataSet con todos los proveedores</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Proveedores As New DataSet

    Proveedores = BBDD.CargarDatos("Proveedores")

    Return Proveedores
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Proveedores con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="proveedores">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal proveedores As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.InsertCommand = New OracleCommand(_INSERT, OrigenDatos.Conexion)
    Adaptador.InsertCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.InsertCommand.Parameters.Add("direccion", OracleDbType.Varchar2, 200, "direccion")
    Adaptador.InsertCommand.Parameters.Add("telefono", OracleDbType.Varchar2, 30, "telefono")
    Adaptador.InsertCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.InsertCommand.CommandType = CommandType.StoredProcedure

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("cif", OracleDbType.Varchar2, 15, "cif")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("direccion", OracleDbType.Varchar2, 200, "direccion")
    Adaptador.UpdateCommand.Parameters.Add("telefono", OracleDbType.Varchar2, 30, "telefono")
    Adaptador.UpdateCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.UpdateCommand.Parameters.Add("cif", OracleDbType.Varchar2, 15, "cif")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(proveedores, "Proveedores")

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
    Me._CIF = ""
    Me._Nombre = ""
    Me._Direccion = ""
    Me._Telefono = ""
    Me._Activo = False
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._CIF = ""
    Me._Nombre = ""
    Me._Direccion = ""
    Me._Telefono = ""
    Me._Activo = False
  End Sub
#End Region
End Class
