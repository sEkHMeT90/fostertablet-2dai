Option Explicit On
Option Strict On

''' <summary>
''' Clase Ticket
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Ticket

#Region "Variables"
    Private _Codigo As Integer
    Private _Fecha As DateTime
    Private _Total As Single
    Private _TipoPago As TipoPago
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Fecha = Now
        Me._Total = 0.0
        Me._TipoPago = New TipoPago
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal fecha As DateTime, ByVal total As Single, ByVal tipo As TipoPago)
        Me._Codigo = codigo
        Me._Fecha = fecha
        Me._Total = total
        Me._TipoPago = tipo
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
    ''' Propiedad del atributo "_Total"
    ''' </summary>
    ''' <value>Un single con el valor que se le asignará al atributo</value>
    ''' <returns>Un single con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Total() As Single
        Get
            Return Me._Total
        End Get
        Set(ByVal value As Single)
            Me._Total = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_TipoPago"
    ''' </summary>
    ''' <value>Un tipo de pago con el valor que se le asignará al atributo</value>
    ''' <returns>Un tipo de pago con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property TipoPago() As TipoPago
        Get
            Return Me._TipoPago
        End Get
        Set(ByVal value As TipoPago)
            Me._TipoPago = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga el ticket de una comanda dada
    ''' </summary>
    ''' <param name="comanda">Comanda a buscar</param>
    ''' <returns>Ticket de la comanda encontrada</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Cargar(ByVal comanda As Comanda) As Ticket
        Dim Ticket As New Ticket

        ' TODO: Llamada a la base de datos

        Return Ticket
    End Function

    ''' <summary>
    ''' Carga todos los tickets almacenados
    ''' </summary>
    ''' <returns>Un DataSet con todos los tickets</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Tickets As New DataSet

        ' TODO: Llamada a la base de datos

        Return Tickets
    End Function

    ''' <summary>
    ''' Inserta el ticket en la base de datos
    ''' </summary>
    ''' <returns>Un entero con el código del ticket insertado</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Insertar() As Integer
        Dim CodigoTicket As Integer

        ' TODO: Conexión con la base de datos

        Return CodigoTicket
    End Function

    ''' <summary>
    ''' Crea la factura del ticket
    ''' </summary>
    ''' <returns>Un entero con el código de factura insertada</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Facturar() As Integer
        Dim CodigoFactura As Integer

        ' TODO: Conexión con la base de datos

        Return CodigoFactura
    End Function

    ''' <summary>
    ''' Imprime el ticket
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Imprimir()
        ' TODO: Impresión
    End Sub
#End Region

#Region "Destructores"
    ''' <summary>
    ''' Destructor manual
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Dispose()
        Me._Codigo = -1
        Me._Fecha = #1/1/1990#
        Me._Total = -1.0
        Me._TipoPago.Dispose()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Fecha = #1/1/1990#
        Me._Total = -1.0
        Me._TipoPago.Dispose()
    End Sub
#End Region
End Class
