Option Explicit On
Option Strict On

''' <summary>
''' Clase TipoIVA
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class TipoIVA

#Region "Variables"
    Private _Codigo As Integer
    Private _Nombre As String
    Private _Porcentaje As Integer
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Nombre = "Desconocido"
        Me._Porcentaje = 0
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal estado As Integer)
        Me._Codigo = codigo
        Me._Nombre = nombre
        Me._Porcentaje = estado
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
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga un tipo de IVA dado un código
    ''' </summary>
    ''' <param name="codigo">Código del tipo de IVA a buscar</param>
    ''' <returns>El tipo de IVA encontrado</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal codigo As Integer) As TipoIVA
        Dim Tipo As New TipoIVA

        ' TODO: Llamada a la base de datos

        Return Tipo
    End Function

    ''' <summary>
    ''' Carga todos los tipos de IVA almacenados
    ''' </summary>
    ''' <returns>Un DataSet con todos los tipos de IVA</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Tipos As New DataSet

        ' TODO: Llamada a la base de datos

        Return Tipos
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
        Me._Porcentaje = -1
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Nombre = ""
        Me._Porcentaje = -1
    End Sub
#End Region
End Class
