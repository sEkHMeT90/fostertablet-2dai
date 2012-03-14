Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types
Imports System.Drawing.Printing
Imports System.Drawing

''' <summary>
''' Clase Comanda
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Comanda

#Region "Constantes"
  Private Const _INSERT As String = "GestionComandas.Insertar"
  Private Const _DELETE As String = "GestionComandas.Borrar"
  Private Const _UPDATE As String = "GestionComandas.Modificar"
  Private Const _COBRAR As String = "GestionComandas.Cobrar"
  Private Const _COCINA As String = "GestionComandas.Cocina"
#End Region

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
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal mesa As Mesa) As List(Of Comanda)
    Dim Comandas As New List(Of Comanda)
    Dim Conexion As New BBDD
    Dim Lector As OracleDataReader

    If Conexion.Conectar Then
      Lector = Conexion.Consultar("SELECT codigo, codigo_estado FROM Comandas WHERE codigo_mesa = " & mesa.Codigo & " ORDER BY codigo")

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        While Lector.Read
          Dim Nueva As New Comanda
          Nueva._Codigo = CInt(Lector(0))
          Nueva._Estado = EstadoComanda.Cargar(CInt(Lector(1)))
          Nueva._Lineas = LineaComanda.Cargar(Nueva)
          Comandas.Add(Nueva)
        End While
        Lector.Close()
      Else
        Comandas = Nothing
      End If

      Conexion.Desconectar()
    Else
      Comandas = Nothing
    End If

    Return Comandas
  End Function

  ''' <summary>
  ''' Carga todas las comandas almacenadas en la base de datos
  ''' </summary>
  ''' <returns>Un DataSet con todas las comandas</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Comandas As New DataSet

    Comandas = BBDD.CargarDatos("Comandas")

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

    Comandas = BBDD.CargarDatos("Comandas", "codigo_mesa = " & mesa.Codigo)

    Return Comandas
  End Function

  ''' <summary>
  ''' Actualiza los datos de la tabla Comandas con los cambios de un DataSet dado
  ''' </summary>
  ''' <param name="comandas">DataSet con los cambios de la tabla</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Actualizar(ByVal comandas As DataSet) As Boolean
    Dim Ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Adaptador As New OracleDataAdapter

    Adaptador.DeleteCommand = New OracleCommand(_DELETE, OrigenDatos.Conexion)
    Adaptador.DeleteCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.DeleteCommand.Parameters.Add("codigo", OracleDbType.Int16, 3, "codigo")
    Adaptador.DeleteCommand.CommandType = CommandType.StoredProcedure

    Adaptador.UpdateCommand = New OracleCommand(_UPDATE, OrigenDatos.Conexion)
    Adaptador.UpdateCommand.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
    Adaptador.UpdateCommand.Parameters.Add("codigo_estado", OracleDbType.Int16, 3)
    Adaptador.UpdateCommand.Parameters.Add("codigo_ticket", OracleDbType.Int32, 8)
    Adaptador.UpdateCommand.Parameters.Add("codigo", OracleDbType.Int32, 8, "codigo")
    Adaptador.UpdateCommand.CommandType = CommandType.StoredProcedure

    Try
      Adaptador.Update(comandas, "Comandas")

      If CInt(Adaptador.DeleteCommand.Parameters("Resultado").Value.ToString.Replace(CChar("D"), "")) > 0 Or _
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

  ''' <summary>
  ''' Inserta la comanda en la base de datos
  ''' </summary>
  ''' <param name="mesa">Mesa a la que pertenece la comanda</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function Insertar(ByVal mesa As Mesa) As Boolean
    Dim Ok As Boolean
    Dim CodigoComanda As Integer
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_estado", OracleDbType.Int16, 3).Value = Me._Estado.Codigo
      Comando.Parameters.Add("codigo_mesa", OracleDbType.Int16, 3).Value = mesa.Codigo
      Comando.CommandType = CommandType.StoredProcedure

      CodigoComanda = OrigenDatos.Modificar(Comando)
      OrigenDatos.Desconectar()

      If CodigoComanda > 0 Then
        Me._Codigo = CodigoComanda

        For Each linea As LineaComanda In Me._Lineas
          If Not linea.Insertar(Me) Then
            Ok = False
          End If
        Next
      Else
        Ok = False
      End If
    Else
      Ok = False
    End If

    Return Ok
  End Function


  ''' <summary>
  ''' Cobra la comanda
  ''' </summary>
  ''' <param name="ticket">El ticket al que se van a añadir las comandas</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function Cobrar(ByVal ticket As Ticket) As Boolean
    ' Se llama a una funcion de oracle que todas las lineas de la comanda las copia al ticket
    ' Además la misma función al finalizar cambiará el estado a la comanda, 
    '   que será lo q devuelva la función

    Dim ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand
    Dim CodigoEstadoComanda As Integer

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_COBRAR, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_comanda", OracleDbType.Int16, 3).Value = Me.Codigo
      Comando.Parameters.Add("codigo_ticket", OracleDbType.Int16, 3).Value = ticket.Codigo
      Comando.CommandType = CommandType.StoredProcedure

      CodigoEstadoComanda = OrigenDatos.Modificar(Comando)
      OrigenDatos.Desconectar()

      If CodigoEstadoComanda > 0 Then
        ok = True
        Me.Estado.Codigo = CodigoEstadoComanda
      Else
        ok = False
      End If
    End If

    Return ok
  End Function

  ''' <summary>
  ''' Imprime la comanda para cocina
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function Imprimir() As Boolean
    Dim impresion As New PrintDocument
    Dim OrigenDatos As New BBDD
    Dim comando As OracleCommand
    Dim ok As Boolean

    AddHandler impresion.PrintPage, AddressOf printpage
    impresion.Print()

    If OrigenDatos.Conectar Then
      ' llamamos a la base de datos para cambiar los estados de comanda
      Comando = New OracleCommand(_COCINA, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("codigo_comanda", OracleDbType.Int16, 3).Value = Me.Codigo
      Comando.CommandType = CommandType.StoredProcedure

      If OrigenDatos.Modificar(Comando) <> 0 Then
        ok = True
      Else
        ok = False
      End If

      OrigenDatos.Desconectar()
    End If

    Return ok
  End Function

  ''' <summary>
  ''' Evento de impresión de los tickets
  ''' </summary>
  ''' <param name="sender">PrintPage que se va a imprimir</param>
  ''' <param name="e">Papel donde escribimos el ticket</param>
  ''' <author>David Martínez Pérez</author>
  Private Sub printpage(ByVal sender As Object, ByVal e As PrintPageEventArgs)
    Dim fuente As New Font("Courier New", 8)
    Dim pincel As Brush = Brushes.Black
    Dim y As Single = e.MarginBounds.Top
    Dim codigoMesa As Integer
    Dim primeraLineaImpresa As Boolean = False

    Dim OrigenDatos As New BBDD
    Dim lector As OracleDataReader

    If OrigenDatos.Conectar Then

      ' Buscamos el codigo de la mesa
      lector = OrigenDatos.Consultar("Select codigo_mesa from comandas where codigo = " & Me.Codigo)

      If lector IsNot Nothing Then
        If lector.HasRows Then
          lector.Read()
          codigoMesa = CInt(lector(0))
        End If
        lector.Close()
      End If

      OrigenDatos.Desconectar()
    End If

    ' Obtenemos el codigo imprimimos las comandas no preparadas
    If codigoMesa > 0 Then
      For Each linea As LineaComanda In Me.Lineas

        If Not linea.Entregada Then
          ' Escribimos el codigo de la mesa
          If Not primeraLineaImpresa Then
            e.Graphics.DrawString("Mesa: " & codigoMesa, fuente, pincel, e.MarginBounds.Left, y)
            primeraLineaImpresa = True
            y += fuente.GetHeight
          End If

          ' escribimos el nombre del producto y le cambiamos el estado
          e.Graphics.DrawString("   " & linea.Producto.Nombre, fuente, pincel, e.MarginBounds.Left, y)
          y += fuente.GetHeight

          linea.Entregada = True
        End If
      Next
    End If
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
