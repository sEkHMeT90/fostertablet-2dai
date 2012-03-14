Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

''' <summary>
''' Clase SubCategoria
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class SubCategoria

#Region "Constantes"
  Private Const _INSERT As String = "GestionSubCategorias.Insertar"
  Private Const _DELETE As String = "GestionSubCategorias.Borrar"
  Private Const _UPDATE As String = "GestionSubCategorias.Modificar"
#End Region

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
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal categoria As Categoria) As List(Of SubCategoria)
    Dim SubCategorias As New List(Of SubCategoria)
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT codigo, nombre, activo FROM SubCategorias WHERE codigo_categoria = " & categoria.Codigo & " ORDER BY codigo")

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        While Lector.Read
          Dim Nueva As New SubCategoria
          Nueva._Codigo = CInt(Lector(0))
          Nueva._Categoria = categoria
          Nueva._Nombre = CStr(Lector(1))
          Nueva._Activa = CBool(CInt(Lector(2)))
          SubCategorias.Add(Nueva)
        End While
        Lector.Close()
      Else
        SubCategorias = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      SubCategorias = Nothing
    End If

    Return SubCategorias
  End Function

  ''' <summary>
  ''' Carga una sub-categoría dado un código y una categoría
  ''' </summary>
  ''' <param name="codigo">Código de la sub-categoría a buscar</param>
  ''' <param name="categoria">Categoría a la que pertenece la sub-categoría</param>
  ''' <returns>La sub-categoría encontrada</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer, ByVal categoria As Categoria) As SubCategoria
    Dim SubCategoria As New SubCategoria
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT codigo, nombre, activo FROM SubCategorias " & _
                                     "WHERE codigo = " & codigo & " AND codigo_categoria = " & categoria.Codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        SubCategoria._Codigo = CInt(Lector(0))
        SubCategoria._Categoria = categoria
        SubCategoria._Nombre = CStr(Lector(1))
        SubCategoria._Activa = CBool(Lector(2))
        Lector.Close()
      Else
        SubCategoria = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      SubCategoria = Nothing
    End If

    Return SubCategoria
  End Function

  ''' <summary>
  ''' Carga todas las sub categorías almacenadas dada una categoría
  ''' </summary>
  ''' <returns>Un DataSet con todas las sub categorías</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos(ByVal categoria As Categoria) As DataSet
    Dim SubCategorias As New DataSet

    SubCategorias = BBDD.CargarDatos("SubCategorias", "codigo_categoria = " & categoria.Codigo)

    Return SubCategorias
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla SubCategorias con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="subcategorias">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal subcategorias As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.InsertCommand = New OracleCommand(_INSERT, OrigenDatos.Conexion)
    Adaptador.InsertCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3, "codigo_categoria")
    Adaptador.InsertCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.InsertCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.InsertCommand.CommandType = CommandType.StoredProcedure

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.InsertCommand.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3, "codigo_categoria")
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("codigo_categoria", OracleDbType.Int16, 3, "codigo_categoria")
    Adaptador.UpdateCommand.Parameters.Add("nombre", OracleDbType.Varchar2, 30, "nombre")
    Adaptador.UpdateCommand.Parameters.Add("activo", OracleDbType.Int16, 1, "activo")
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(subcategorias, "SubCategorias")

      If CInt(Adaptador.InsertCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
         CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
         CInt(Adaptador.UpdateCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Then
        Ok = True
      Else
        Ok = False
      End If
    Catch ex As Exception
      Ok = False
    End Try


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
