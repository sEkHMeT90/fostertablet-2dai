Option Explicit On
Option Strict On

''' <summary>
''' Clase TipoPago
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class TipoPago

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
    ''' Carga un tipo de pago dado un código
    ''' </summary>
    ''' <param name="codigo">Código del tipo de pago a buscar</param>
    ''' <returns>El tipo de pago encontrado</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Cargar(ByVal codigo As Integer) As TipoPago
        Dim Tipo As New TipoPago

        ' TODO: Llamada a la base de datos

        Return Tipo
    End Function

    ''' <summary>
    ''' Carga todos los tipos de pago almacenados
    ''' </summary>
    ''' <returns>Un DataSet con los tipos de pago</returns>
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
