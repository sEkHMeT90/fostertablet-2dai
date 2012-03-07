Option Explicit On
Option Strict On

''' <summary>
''' Clase LineaTicket
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class LineaTicket

#Region "Variables"
    Private _Numero As Integer
    Private _Producto As Producto
    Private _Cantidad As Integer
    Private _Descuento As Integer
    Private _IVA As Integer
    Private _Precio As Single
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Numero = 0
        Me._Producto = New Producto
        Me._Cantidad = 0
        Me._Descuento = 0
        Me._IVA = 0
        Me._Precio = 0.0
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal numero As Integer, ByVal producto As Producto, ByVal cantidad As Integer, ByVal descuento As Integer, ByVal iva As Integer, ByVal precio As Single)
        Me._Numero = numero
        Me._Producto = producto
        Me._Cantidad = cantidad
        Me._Descuento = descuento
        Me._IVA = iva
        Me._Precio = precio
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
    ''' Propiedad del atributo "_Cantidad"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Cantidad() As Integer
        Get
            Return Me._Cantidad
        End Get
        Set(ByVal value As Integer)
            Me._Cantidad = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Descuento"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Descuento() As Integer
        Get
            Return Me._Descuento
        End Get
        Set(ByVal value As Integer)
            Me._Descuento = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_IVA"
    ''' </summary>
    ''' <value>Un entero con el valor que se le asignará al atributo</value>
    ''' <returns>Un entero con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property IVA() As Integer
        Get
            Return Me._IVA
        End Get
        Set(ByVal value As Integer)
            Me._IVA = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Precio"
    ''' </summary>
    ''' <value>Un single con el valor que se le asignará al atributo</value>
    ''' <returns>Un single con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Precio() As Single
        Get
            Return Me._Precio
        End Get
        Set(ByVal value As Single)
            Me._Precio = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todas las líneas de ticket almacenadas dado un ticket
    ''' </summary>
    ''' <param name="ticket">Ticket a buscar</param>
    ''' <returns>Lista de líneas del ticket encontrado</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos(ByVal ticket As Ticket) As DataSet
        Dim Lineas As New DataSet

        ' TODO: Llamada a la base de datos

        Return Lineas
    End Function

    ''' <summary>
    ''' Inserta la línea de ticket en la base de datos
    ''' </summary>
    ''' <param name="ticket">Ticket al que pertenece la línea</param>
    ''' <returns>Un boleean indicando si la operación se realizó con éxito</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Insertar(ByVal ticket As Ticket) As Boolean
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
        Me._Cantidad = -1
        Me._Descuento = -1
        Me._IVA = -1
        Me._Precio = -1.0
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Numero = -1
        Me._Producto.Dispose()
        Me._Cantidad = -1
        Me._Descuento = -1
        Me._IVA = -1
        Me._Precio = -1.0
    End Sub
#End Region
End Class
