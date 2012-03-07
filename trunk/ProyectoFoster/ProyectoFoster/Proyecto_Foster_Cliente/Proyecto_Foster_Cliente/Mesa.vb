Option Explicit On
Option Strict On

''' <summary>
''' Clase Mesa
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Mesa

#Region "Variables"
    Private _Codigo As Integer
    Private _Estado As EstadoMesa
    Private _Comandas As List(Of Comanda)
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Estado = New EstadoMesa
        Me._Comandas = New List(Of Comanda)
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal estado As EstadoMesa, ByVal comandas As List(Of Comanda))
        Me._Codigo = codigo
        Me._Estado = estado
        Me._Comandas = comandas
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
    ''' Propiedad del atributo "_Estado"
    ''' </summary>
    ''' <value>Un estado de mesa con el valor que se le asignará al atributo</value>
    ''' <returns>Un tipo estado de mesa con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Estado() As EstadoMesa
        Get
            Return Me._Estado
        End Get
        Set(ByVal value As EstadoMesa)
            Me._Estado = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Comandas"
    ''' </summary>
    ''' <value>Una lista de comandas con el valor que se le asignará al atributo</value>
    ''' <returns>Una lista de comandas con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Comandas() As List(Of Comanda)
        Get
            Return Me._Comandas
        End Get
        Set(ByVal value As List(Of Comanda))
            Me._Comandas = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todas las mesas almacenadas
    ''' </summary>
    ''' <returns>Un DataSet con todas las mesas</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos() As DataSet
        Dim Mesas As New DataSet

        ' TODO: Llamada a la base de datos

        Return Mesas
    End Function

    ''' <summary>
    ''' Inserta todas las comandas de la mesa en la base de datos
    ''' </summary>
    ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Insertar() As Boolean
        Dim Ok As Boolean

        ' TODO: Conexión con la base de datos

        Return Ok
    End Function

    ''' <summary>
    ''' Cobra todas las comandas de la mesa como una sola
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Cobrar()
        ' TODO: Conexión con la base de datos
    End Sub

    ''' <summary>
    ''' Cobra todas las comandas de la mesa prorrateadas
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Cobrar(ByVal prorrateo As Integer)
        ' TODO: Conexión con la base de datos
    End Sub
#End Region

#Region "Destructores"
    ''' <summary>
    ''' Destructor manual
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Dispose()
        Me._Codigo = -1
        Me._Estado.Dispose()
        Me._Comandas.Clear()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Estado.Dispose()
        Me._Comandas.Clear()
    End Sub
#End Region
End Class
