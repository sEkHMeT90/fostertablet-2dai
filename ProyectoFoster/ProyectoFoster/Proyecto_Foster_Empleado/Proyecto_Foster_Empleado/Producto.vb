Option Explicit On
Option Strict On

''' <summary>
''' Clase Producto
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Producto

#Region "Variables"
    Private _Codigo As Integer
    Private _Nombre As String
    Private _Descripcion As String
    Private _PrecioCoste As Single
    Private _PVP As Single
    Private _Calorias As Integer
    Private _Stock As Integer
    Private _StockMinimo As Integer
    Private _Activo As Boolean
    Private _Guarniciones As List(Of Producto)
    Private _SubCategoria As SubCategoria
    Private _IVA As TipoIVA
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Nombre = "Desconocido"
        Me._Descripcion = "Desconocida"
        Me._PrecioCoste = 0.0
        Me._PVP = 0.0
        Me._Calorias = 0
        Me._Stock = 0
        Me._StockMinimo = 0
        Me._Activo = True
        Me._Guarniciones = New List(Of Producto)
        Me._SubCategoria = New SubCategoria
        Me._IVA = New TipoIVA
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal nombre As String, ByVal descripcion As String, ByVal coste As Single, ByVal pvp As Single, ByVal calorias As Integer, ByVal stock As Integer, ByVal minimo As Integer, ByVal activo As Boolean, ByVal guarniciones As List(Of Producto), ByVal subcategoria As SubCategoria, ByVal iva As TipoIVA)
        Me._Codigo = codigo
        Me._Nombre = nombre
        Me._Descripcion = descripcion
        Me._PrecioCoste = coste
        Me._PVP = pvp
        Me._Calorias = calorias
        Me._Stock = stock
        Me._StockMinimo = minimo
        Me._Activo = activo
        Me._Guarniciones = guarniciones
        Me._SubCategoria = subcategoria
        Me._IVA = iva
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

    ''' <summary>
    ''' Propiedad del atributo "_Descripcion"
    ''' </summary>
    ''' <value>Una cadena con el valor que se le asignará al atributo</value>
    ''' <returns>Una cadena con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Descripcion() As String
        Get
            Return Me._Descripcion
        End Get
        Set(ByVal value As String)
            Me._Descripcion = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_PrecioCoste"
    ''' </summary>
    ''' <value>Un single con el valor que se le asignará al atributo</value>
    ''' <returns>Un single con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property PrecioCoste() As Single
        Get
            Return Me._PrecioCoste
        End Get
        Set(ByVal value As Single)
            Me._PrecioCoste = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_PVP"
    ''' </summary>
    ''' <value>Un single con el valor que se le asignará al atributo</value>
    ''' <returns>Un single con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property PVP() As Single
        Get
            Return Me._PVP
        End Get
        Set(ByVal value As Single)
            Me._PVP = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Calorias"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Calorias() As Integer
        Get
            Return Me._Calorias
        End Get
        Set(ByVal value As Integer)
            Me._Calorias = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Stock"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Stock() As Integer
        Get
            Return Me._Stock
        End Get
        Set(ByVal value As Integer)
            Me._Stock = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_StockMinimo"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property StockMinimo() As Integer
        Get
            Return Me._StockMinimo
        End Get
        Set(ByVal value As Integer)
            Me._StockMinimo = value
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

    ''' <summary>
    ''' Propiedad del atributo "_Guarniciones"
    ''' </summary>
    ''' <value>Una lista de productos con el valor que se le asignará al atributo</value>
    ''' <returns>Una lista de productos con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Guarniciones() As List(Of Producto)
        Get
            Return Me._Guarniciones
        End Get
        Set(ByVal value As List(Of Producto))
            Me._Guarniciones = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_SubCategoria"
    ''' </summary>
    ''' <value>Una sub categoria con el valor que se le asignará al atributo</value>
    ''' <returns>Una sub categoria con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property SubCategoria() As SubCategoria
        Get
            Return Me._SubCategoria
        End Get
        Set(ByVal value As SubCategoria)
            Me._SubCategoria = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_IVA"
    ''' </summary>
    ''' <value>Un tipo de IVA con el valor que se le asignará al atributo</value>
    ''' <returns>Un tipo de IVA con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property IVA() As TipoIVA
        Get
            Return Me._IVA
        End Get
        Set(ByVal value As TipoIVA)
            Me._IVA = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todos los productos almacenados
    ''' </summary>
    ''' <returns>Una lista de productos</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar() As List(Of Producto)
        Dim Productos As New List(Of Producto)

        ' TODO: Llamada a la base de datos

        Return Productos
    End Function

    ''' <summary>
    ''' Carga un producto dado un código
    ''' </summary>
    ''' <param name="codigo">Código del producto a buscar</param>
    ''' <returns>El producto encontrado</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal codigo As Integer) As Producto
        Dim Producto As New Producto

        ' TODO: Conexión con la base de datos

        Return Producto
    End Function

    ''' <summary>
    ''' Carga todos los productos almacenados
    ''' </summary>
    ''' <returns>Un DataSet con todos los productos</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Productos As New DataSet

        ' TODO: Llamada a la base de datos

        Return Productos
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
        Me._Descripcion = ""
        Me._PrecioCoste = -1.0
        Me._PVP = -1.0
        Me._Calorias = -1
        Me._Stock = -1
        Me._StockMinimo = -1
        Me._Activo = False
        Me._Guarniciones.Clear()
        Me._SubCategoria.Dispose()
        Me._IVA.Dispose()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Nombre = ""
        Me._Descripcion = ""
        Me._PrecioCoste = -1.0
        Me._PVP = -1.0
        Me._Calorias = -1
        Me._Stock = -1
        Me._StockMinimo = -1
        Me._Activo = False
        Me._Guarniciones.Clear()
        Me._SubCategoria.Dispose()
        Me._IVA.Dispose()
    End Sub
#End Region
End Class
