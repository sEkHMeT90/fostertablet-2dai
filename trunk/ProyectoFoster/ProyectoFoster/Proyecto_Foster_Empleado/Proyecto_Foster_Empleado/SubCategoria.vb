Option Explicit On
Option Strict On

''' <summary>
''' Clase SubCategoria
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class SubCategoria

#Region "Variables"
    Private _Codigo As Integer
    Private _Nombre As String
    Private _Activa As Boolean
    Private _Categoria As Categoria
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
        Me._Categoria = New Categoria
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal estado As Boolean, ByVal categoria As Categoria)
        Me._Codigo = codigo
        Me._Nombre = nombre
        Me._Activa = estado
        Me._Categoria = categoria
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

    ''' <summary>
    ''' Propiedad del atributo "_Categoria"
    ''' </summary>
    ''' <value>Una categoría con el valor que se le asignará al atributo</value>
    ''' <returns>Una categoría con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Categoria As Categoria
        Get
            Return Me._Categoria
        End Get
        Set(ByVal value As Categoria)
            Me._Categoria = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todas las sub categorías almacenadas dada una categoría
    ''' </summary>
    ''' <returns>Una lista de sub categorías</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal categoria As Categoria) As List(Of SubCategoria)
        Dim SubCategorias As New List(Of SubCategoria)

        ' TODO: Llamada a la base de datos

        Return SubCategorias
    End Function

    ''' <summary>
    ''' Carga una sub-categoría dado un código
    ''' </summary>
    ''' <param name="codigo">Código de la sub-categoría a buscar</param>
    ''' <returns>La sub-categoría encontrada</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal codigo As Integer) As SubCategoria
        Dim SubCategoria As New SubCategoria

        ' TODO: Llamada a la base de datos

        Return SubCategoria
    End Function

    ''' <summary>
    ''' Carga todas las sub categorías almacenadas dada una categoría
    ''' </summary>
    ''' <returns>Un DataSet con todas las sub categorías</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos(ByVal categoria As Categoria) As DataSet
        Dim SubCategorias As New DataSet

        ' TODO: Llamada a la base de datos

        Return SubCategorias
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
        Me._Categoria.Dispose()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Nombre = ""
        Me._Activa = False
        Me._Categoria.Dispose()
    End Sub
#End Region
End Class
