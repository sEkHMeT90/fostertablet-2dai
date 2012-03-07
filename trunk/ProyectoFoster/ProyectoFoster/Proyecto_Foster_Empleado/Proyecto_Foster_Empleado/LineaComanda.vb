Option Explicit On
Option Strict On

''' <summary>
''' Clase LineaComanda
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class LineaComanda

#Region "Variables"
    Private _Numero As Integer
    Private _Producto As Producto
    Private _Entregada As Boolean
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Numero = 0
        Me._Producto = New Producto
        Me._Entregada = True
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal numero As Integer, ByVal producto As Producto)
        Me._Numero = numero
        Me._Producto = producto
        Me._Entregada = True
    End Sub
#End Region

#Region "Propiedades"
    ''' <summary>
    ''' Propiedad del atributo "_Numero"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Numero() As Integer
        Get
            Return Me._Numero
        End Get
        Set(ByVal value As Integer)
            Me._Numero = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Producto"
    ''' </summary>
    ''' <value>Un producto con el valor que se le asignará al atributo</value>
    ''' <returns>Un producto con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Producto() As Producto
        Get
            Return Me._Producto
        End Get
        Set(ByVal value As Producto)
            Me._Producto = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Entregada"
    ''' </summary>
    ''' <value>Un boolean con el valor que se le asignará al atributo</value>
    ''' <returns>Un boolean con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Entregada() As Boolean
        Get
            Return Me._Entregada
        End Get
        Set(ByVal value As Boolean)
            Me._Entregada = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todas las líneas de comanda almacenadas dada una comanda
    ''' </summary>
    ''' <param name="comanda">Comanda a buscar</param>
    ''' <returns>Lista de líneas de la comanda encontrada</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal comanda As Comanda) As List(Of LineaComanda)
        Dim Lineas As New List(Of LineaComanda)

        ' TODO: Llamada a la base de datos

        Return Lineas
    End Function

    ''' <summary>
    ''' Carga todas las líneas de comanda almacenadas dada una comanda
    ''' </summary>
    ''' <param name="comanda">Comanda a buscar</param>
    ''' <returns>Un DataSet con todas las líneas de comanda</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos(ByVal comanda As Comanda) As DataSet
        Dim Lineas As New DataSet

        ' TODO: Llamada a la base de datos

        Return Lineas
    End Function

    ''' <summary>
    ''' Inserta la línea de comanda en la base de datos
    ''' </summary>
    ''' <param name="comanda">Comanda a la que pertenece la línea</param>
    ''' <returns>Un boleean indicando si la operación se realizó con éxito</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Insertar(ByVal comanda As Comanda) As Boolean
        Dim Ok As Boolean

        ' TODO: Conexión con la base de datos

        Return Ok
    End Function
#End Region

#Region "Destructores"
    ''' <summary>
    ''' Destructor manual
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Dispose()
        Me._Numero = -1
        Me._Producto.Dispose()
        Me._Entregada = False
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Numero = -1
        Me._Producto.Dispose()
        Me._Entregada = False
    End Sub
#End Region
End Class
