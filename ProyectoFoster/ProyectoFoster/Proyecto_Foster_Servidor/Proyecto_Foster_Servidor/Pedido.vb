Option Explicit On
Option Strict On

''' <summary>
''' Clase Pedido
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Pedido

#Region "Variables"
    Private _Codigo As Integer
    Private _Fecha As DateTime
    Private _Proveedor As Proveedor
    Private _PrecioTotal As Single
    Private _Recibido As Boolean
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Fecha = Now
        Me._Proveedor = New Proveedor
        Me._PrecioTotal = 0.0
        Me._Recibido = True
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal fecha As DateTime, ByVal proveedor As Proveedor, ByVal precio As Single, ByVal recibido As Boolean, ByVal lineas As List(Of LineaPedido))
        Me._Codigo = codigo
        Me._Fecha = fecha
        Me._Proveedor = proveedor
        Me._PrecioTotal = precio
        Me._Recibido = recibido
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
    ''' Propiedad del atributo "_Fecha"
    ''' </summary>
    ''' <value>Una fecha con el valor que se le asignará al atributo</value>
    ''' <returns>Una fecha con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Fecha() As DateTime
        Get
            Return Me._Fecha
        End Get
        Set(ByVal value As DateTime)
            Me._Fecha = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Proveedor"
    ''' </summary>
    ''' <value>Un proveedor con el valor que se le asignará al atributo</value>
    ''' <returns>Un proveedor con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Proveedor() As Proveedor
        Get
            Return Me._Proveedor
        End Get
        Set(ByVal value As Proveedor)
            Me._Proveedor = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_PrecioTotal"
    ''' </summary>
    ''' <value>Un single con el valor que se le asignará al atributo</value>
    ''' <returns>Un single con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property PrecioTotal() As Single
        Get
            Return Me._PrecioTotal
        End Get
        Set(ByVal value As Single)
            Me._PrecioTotal = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Recibido"
    ''' </summary>
    ''' <value>Un boolean con el valor que se le asignará al atributo</value>
    ''' <returns>Un boolean con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Recibido() As Boolean
        Get
            Return Me._Recibido
        End Get
        Set(ByVal value As Boolean)
            Me._Recibido = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todos los pedidos almacenados
    ''' </summary>
    ''' <returns>Un DataSet con todos los pedidos</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Pedidos As New DataSet

        ' TODO: Llamada a la base de datos

        Return Pedidos
    End Function

    ''' <summary>
    ''' Inserta el pedido en la base de datos
    ''' </summary>
    ''' <returns>Un entero con el número de pedido insertado (-1 si falla la inserción)</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Insertar() As Integer
        Dim Ok As Integer

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
        Me._Codigo = -1
        Me._Fecha = #1/1/1990#
        Me._Proveedor.Dispose()
        Me._PrecioTotal = -1.0
        Me._Recibido = False
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Fecha = #1/1/1990#
        Me._Proveedor.Dispose()
        Me._PrecioTotal = -1.0
        Me._Recibido = False
    End Sub
#End Region
    

    
End Class
