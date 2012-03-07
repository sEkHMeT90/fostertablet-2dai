Option Explicit On
Option Strict On

''' <summary>
''' Clase Comanda
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad</author>
Public Class Comanda

#Region "Variables"
    Private _Codigo As Integer
    Private _Estado As EstadoComanda
    Private _Lineas As List(Of LineaComanda)
#End Region

#Region "Constructores"
    ''' <summary>
    ''' Constructor por defecto
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New()
        Me._Codigo = 0
        Me._Estado = New EstadoComanda
        Me._Lineas = New List(Of LineaComanda)
    End Sub

    ''' <summary>
    ''' Constructor por parámetros
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub New(ByVal codigo As Integer, ByVal estado As EstadoComanda, ByVal lineas As List(Of LineaComanda))
        Me._Codigo = codigo
        Me._Estado = estado
        Me._Lineas = lineas
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
    ''' Propiedad el atributo "_Estado"
    ''' </summary>
    ''' <value>Un estado de comanda con el valor que se le asignará al atributo</value>
    ''' <returns>Un estado de comanda con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Estado() As EstadoComanda
        Get
            Return Me._Estado
        End Get
        Set(ByVal value As EstadoComanda)
            Me._Estado = value
        End Set
    End Property

    ''' <summary>
    ''' Propiedad del atributo "_Lineas"
    ''' </summary>
    ''' <value>Una lista de líneas de comanda con el valor que se le asignará al atributo</value>
    ''' <returns>Una lista de líneas de comanda con el valor del atributo</returns>
    ''' <author>Andrés Marotta</author>
    Public Property Lineas() As List(Of LineaComanda)
        Get
            Return Me._Lineas
        End Get
        Set(ByVal value As List(Of LineaComanda))
            Me._Lineas = value
        End Set
    End Property
#End Region

#Region "Funciones"
    ''' <summary>
    ''' Carga todas las comandas almacenadas dada una mesa
    ''' </summary>
    ''' <param name="mesa">Mesa a buscar</param>
    ''' <returns>La lista de comandas de la mesa encontrada</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function Cargar(ByVal mesa As Mesa) As List(Of Comanda)
        Dim Comandas As New List(Of Comanda)

        ' TODO: Llamada a la base de datos

        Return Comandas
    End Function

    ''' <summary>
    ''' Carga todas las comandas almacenadas dada una mesa
    ''' </summary>
    ''' <param name="mesa">Mesa a buscar</param>
    ''' <returns>Un DataSet con todas las comandas</returns>
    ''' <author>Andrés Marotta</author>
    Public Shared Function CargarDatos(ByVal mesa As Mesa) As DataSet
        Dim Comandas As New DataSet

        ' TODO: Llamada a la base de datos

        Return Comandas
    End Function

    ''' <summary>
    ''' Inserta la comanda en la base de datos
    ''' </summary>
    ''' <param name="mesa">Mesa a la que pertenece la comanda</param>
    ''' <returns>Un entero con el código de la comanda insertada</returns>
    ''' <author>Andrés Marotta</author>
    Public Function Insertar(ByVal mesa As Mesa) As Integer
        Dim CodigoComanda As Integer

        ' TODO: Conexión con la base de datos

        Return CodigoComanda
    End Function

    ''' <summary>
    ''' Cobra la comanda
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Public Sub Cobrar()
        ' TODO: Conexión con la base de datos
    End Sub

    ''' <summary>
    ''' Imprime la comanda para cocina
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
        Me._Estado.Dispose()
        Me._Lineas.Clear()
    End Sub

    ''' <summary>
    ''' Destructor automático
    ''' </summary>
    ''' <author>Andrés Marotta</author>
    Protected Overrides Sub Finalize()
        Me._Codigo = -1
        Me._Estado.Dispose()
        Me._Lineas.Clear()
    End Sub
#End Region
End Class
