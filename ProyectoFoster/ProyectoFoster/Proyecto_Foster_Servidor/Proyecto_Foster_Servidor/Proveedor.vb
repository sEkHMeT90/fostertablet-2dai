Option Explicit On
Option Strict On

''' <summary>
''' Clase Proveedor
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Proveedor

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
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal cif As String) As Proveedor
        Dim Proveedor As New Proveedor

        ' TODO: Llamada a la base de datos

        Return Proveedor
    End Function

    ''' <summary>
    ''' Carga todos los proveedores almacenados
    ''' </summary>
    ''' <returns>Un DataSet con todos los proveedores</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Proveedores As New DataSet

        ' TODO: Llamada a la base de datos

        Return Proveedores
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
