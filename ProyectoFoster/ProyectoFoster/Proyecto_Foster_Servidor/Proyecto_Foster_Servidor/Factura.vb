Option Explicit On
Option Strict On

''' <summary>
''' Clase Factura
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Factura

#Region "Variables"
    Private _Codigo As Integer
    Private _Ticket As Ticket
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Ticket = New Ticket
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal ticket As Ticket)
        Me._Codigo = codigo
        Me._Ticket = ticket
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
    ''' Propiedad del atributo "_Ticket"
    ''' </summary>
    ''' <value>Un ticket con el valor que se le asignará al atributo</value>
    ''' <returns>Un ticket con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Ticket() As Ticket
        Get
            Return Me._Ticket
        End Get
        Set(ByVal value As Ticket)
            Me._Ticket = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga una factura dado un código
    ''' </summary>
    ''' <param name="codigo">Código de la factura a buscar</param>
    ''' <returns>La factura encontrada</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal codigo As Integer) As Factura
        Dim Factura As New Factura

        ' TODO: Llamada a la base de datos

        Return Factura
    End Function

    ''' <summary>
    ''' Carga todas las facturas almacenadas
    ''' </summary>
    ''' <returns>Un DataSet con todas las facturas</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Facturas As New DataSet

        ' TODO: Llamada a la base de datos

        Return Facturas
    End Function

    ''' <summary>
    ''' Imprime la factura
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
        Me._Ticket.Dispose()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Ticket.Dispose()
    End Sub
#End Region
End Class
