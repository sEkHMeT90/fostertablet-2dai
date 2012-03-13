Option Explicit On
Option Strict On


Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types

Imports System.Drawing
Imports System.Drawing.Printing

''' <summary>
''' Clase Ticket
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Ticket

#Region "Constantes"
  Private Const _INSERT As String = "GestionTickets.Insertar"
  Private Const _FACTURAR As String = "GestionTickets.Facturar"
  Private Const _MODIFICAR As String = "GestionTickets.Modificar"
  Private Const _ESTADO_MESA As String = "GestionMesas.Modificar"
#End Region

#Region "Variables"
  Private _Codigo As Integer
  Private _TipoDePago As TipoPago
  Private _Fecha As DateTime
  Private _Lineas As List(Of LineaTicket)
  Private _Total As Single
#End Region

#Region "Constructores"
  ''' <summary>
  ''' Constructor por defecto
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New()
    Me._Codigo = 0
    Me._TipoDePago = New TipoPago
    Me._Fecha = Now
    Me._Lineas = New List(Of LineaTicket)
    Me._Total = 0.0F
  End Sub

  ''' <summary>
  ''' Constructor por parámetros
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub New(ByVal codigo As Integer, ByVal tipo As TipoPago, ByVal fecha As DateTime, ByVal lineas As List(Of LineaTicket), ByVal total As Single)
    Me._Codigo = codigo
    Me._TipoDePago = tipo
    Me._Fecha = fecha
    Me._Lineas = lineas
    Me._Total = total
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
  ''' Propiedad del atributo "_TipoDePago"
  ''' </summary>
  ''' <value>Un tipo de pago con el valor que se le asignará al atributo</value>
  ''' <returns>Un tipo de pago con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property TipoDePago() As TipoPago
    Get
      Return Me._TipoDePago
    End Get
    Set(ByVal value As TipoPago)
      Me._TipoDePago = value
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
  ''' Propiedad del atributo "_Lineas"
  ''' </summary>
  ''' <value>Una lista de líneas de ticket con el valor que se le asignará al atributo</value>
  ''' <returns>Una lista de líneas de ticket con el valor del atributo</returns>
  ''' <author>Andrés Marotta</author>
  Public Property Lineas() As List(Of LineaTicket)
    Get
      Return Me._Lineas
    End Get
    Set(ByVal value As List(Of LineaTicket))
      Me._Lineas = value
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
#End Region

#Region "Funciones"
  ''' <summary>
  ''' Carga el ticket de una comanda dada
  ''' </summary>
  ''' <param name="comanda">Comanda a buscar</param>
  ''' <returns>Ticket de la comanda encontrada</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal comanda As Comanda) As Ticket
    Dim Ticket As New Ticket
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Ticket WHERE codigo = (Select codigo_ticket from comandas where codigo = " & comanda.Codigo & ")")

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Ticket._Codigo = CInt(Lector(0))
        Ticket._TipoDePago = TipoPago.Cargar(CInt(Lector(1)))
        Ticket._Fecha = CDate(Lector(2))
        Ticket._Total = CSng(Lector(3))

        Lector.Close()
      Else
        Ticket = Nothing
      End If

        OrigenDatos.Desconectar()
      Else
        Ticket = Nothing
      End If

      Return Ticket
  End Function

  ''' <summary>
  ''' Carga el ticket dado un código
  ''' </summary>
  ''' <param name="codigo">Código a buscar</param>
  ''' <returns>Ticket encontrado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As Ticket
    Dim Ticket As New Ticket
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Ticket WHERE codigo = " & codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Ticket.Codigo = CInt(Lector(0))
        Ticket.TipoDePago = TipoPago.Cargar(CInt(Lector(1)))
        Ticket.Fecha = CDate(Lector(2))
        Ticket.Total = CSng(Lector(3))

        Lector.Close()
      Else
        Ticket = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Ticket = Nothing
    End If

    Return Ticket
  End Function

  ''' <summary>
  ''' Carga todos los tickets almacenados
  ''' </summary>
  ''' <returns>Un DataSet con todos los tickets</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Tickets As New DataSet

    Tickets = BBDD.CargarDatos("Tickets")

    Return Tickets
  End Function

  ''' <summary>
  ''' Inserta el ticket en la base de datos
  ''' </summary>
  ''' <returns>Un entero indicando el código del ticket insertado</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Insertar() As Integer
    Dim CodigoTicket As Integer
    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      Comando.CommandType = CommandType.StoredProcedure

      CodigoTicket = OrigenDatos.Modificar(Comando)
      OrigenDatos.Desconectar()
    End If

    Return CodigoTicket
  End Function


  Public Function Actualizar() As Boolean
    Dim ok As Boolean
    Dim OrigenDatos As New BBDD
    Dim comando As OracleCommand

    If OrigenDatos.Conectar Then
      comando = New OracleCommand(_MODIFICAR, OrigenDatos.Conexion)
      comando.Parameters.Add("Resultado", OracleDbType.Int16, 1, ParameterDirection.ReturnValue)
      comando.Parameters.Add("codigo", OracleDbType.Int32, 8).Value = Me._Codigo
      comando.Parameters.Add("tipoPago", OracleDbType.Int16, 3).Value = Me._TipoDePago.Codigo
      comando.Parameters.Add("fecha", OracleDbType.Date).Value = Me._Fecha
      comando.Parameters.Add("total", OracleDbType.Double, 3).Value = Me._Total
      comando.CommandType = CommandType.StoredProcedure

      If OrigenDatos.Modificar(comando) = 0 Then
        ok = False
      Else
        ok = True
      End If

      OrigenDatos.Desconectar()
    End If

    Return ok
  End Function

  ''' <summary>
  ''' Crea la factura del ticket
  ''' </summary>
  ''' <returns>Un entero con el código de factura insertada</returns>
  ''' <author>Andrés Marotta</author>
  Public Function Facturar() As Integer
    Dim CodigoFactura As Integer

    Dim OrigenDatos As New BBDD
    Dim Comando As OracleCommand

    If OrigenDatos.Conectar() Then
      Comando = New OracleCommand(_INSERT, OrigenDatos.Conexion)
      Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
      Comando.Parameters.Add("ticket", OracleDbType.Int32, 2).Value = Me._Codigo
      Comando.CommandType = CommandType.StoredProcedure

      CodigoFactura = OrigenDatos.Modificar(Comando)
      OrigenDatos.Desconectar()
      OrigenDatos.Dispose()
    End If

    Return CodigoFactura
  End Function

  ''' <summary>
  ''' Imprime el ticket
  ''' </summary>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Function Imprimir() As Boolean
    Dim ok As Boolean
    Dim impresion As New PrintDocument
    Dim OrigenDatos As New BBDD
    Dim lector As OracleDataReader
    Dim comando As OracleCommand
    Dim codigoMesa As Integer

    AddHandler impresion.PrintPage, AddressOf printpage
    impresion.Print()
    ok = True

    ' cambiar el estado de la mesa a 'esperando cobro'
    If OrigenDatos.Conectar Then

      ' Buscamos el codigo de la mesa
      lector = OrigenDatos.Consultar("SELECT codigo_mesa FROM comandas WHERE rownum = 1 AND codigo_ticket = " & Me._Codigo)

      If lector IsNot Nothing Then
        If lector.HasRows Then
          lector.Read()
          codigoMesa = CInt(lector(0))
        End If
        lector.Close()
      End If

      If codigoMesa > 0 Then

        comando = New OracleCommand(_ESTADO_MESA, OrigenDatos.Conexion)
        comando.Parameters.Add("Resultado", OracleDbType.Int16, 1)
        comando.Parameters.Add("Codigo_mesa", OracleDbType.Int32, 8).Value = codigoMesa
        comando.Parameters.Add("Estado_mesa", OracleDbType.Int16, 3).Value = 5

        comando.CommandType = CommandType.StoredProcedure
        If OrigenDatos.Modificar(comando) = 0 Then
          ok = False
        End If
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
    Dim titulo As New Font("Courier New", 12)
    Dim fuente As New Font("Courier New", 8)
    Dim pincel As Brush = Brushes.Black
    Dim y As Single = e.MarginBounds.Top
    Dim longitudNombreProducto As Integer = 20
    Dim longitudCantidad As Integer = 6
    Dim longitudPrecio As Integer = 9
    Dim longitudLinea = 35
    Dim nombreProducto As String


    ' Cabecera
    e.Graphics.DrawString("FOSTER'S HOLLYWOOD", _
                          titulo, pincel, e.MarginBounds.Left, y)
    e.Graphics.DrawString(Me.Fecha.ToString("g").PadLeft(longitudLinea),
                          titulo, pincel, e.MarginBounds.Left, y)
    y += titulo.GetHeight
    e.Graphics.DrawString("C.C. San Vicente", _
                          fuente, pincel, e.MarginBounds.Left, y)
    e.Graphics.DrawString("(+34) 965 66 70 19".PadLeft(longitudLinea), fuente, pincel, _
                          e.MarginBounds.Left, y)
    y += fuente.GetHeight

    e.Graphics.DrawString("Ticket: ",
                          fuente, pincel, e.MarginBounds.Left, y)
    e.Graphics.DrawString(Me._Codigo.ToString.PadLeft(longitudLinea),
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight
    e.Graphics.DrawString("  ___________________________________  ", fuente, pincel, _
                          e.MarginBounds.Left, y)
    y += fuente.GetHeight


    ' Cuerpo
    e.Graphics.DrawString("Nombre".PadRight(longitudNombreProducto) & _
                          "Cant.".PadLeft(longitudCantidad) & _
                          "Precio".PadLeft(longitudPrecio), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight
    e.Graphics.DrawString("  ___________________________________  ", fuente, pincel, _
                          e.MarginBounds.Left, y)
    y += fuente.GetHeight

    For Each linea As LineaTicket In Me._Lineas
      nombreProducto = linea.NombreProducto
      ' Acortamos el nombre si es muy largo
      If nombreProducto.Length > longitudNombreProducto Then
        nombreProducto = nombreProducto.Substring(0, longitudNombreProducto - 2) & ".."
      End If

      ' imprimimos la linea
      e.Graphics.DrawString(nombreProducto.PadRight(longitudNombreProducto) & _
                            linea.Cantidad.ToString.PadLeft(longitudCantidad) & _
                            linea.Precio.ToString("0.00").PadLeft(longitudPrecio), _
                            fuente, pincel, e.MarginBounds.Left, y)
      y += fuente.GetHeight
    Next

    e.Graphics.DrawString("  ___________________________________  ", fuente, pincel, _
                          e.MarginBounds.Left, y)
    y += fuente.GetHeight


    ' Pie
    e.Graphics.DrawString("Precio Total:" & Me._Total.ToString("0.00").PadLeft(longitudLinea - 13), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight
    e.Graphics.DrawString("(iva incluido)".PadLeft(longitudLinea), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight + fuente.GetHeight
    e.Graphics.DrawString("HASTA PRONTO".PadLeft(longitudLinea \ 2), _
                          fuente, pincel, e.MarginBounds.Left, y)

  End Sub
#End Region

#Region "Destructores"
  ''' <summary>
  ''' Destructor manual
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Public Sub Dispose()
    Me._Codigo = -1
    Me._TipoDePago.Dispose()
    Me._Fecha = #1/1/1990#
    Me._Lineas.Clear()
    Me._Total = -1.0F
  End Sub

  ''' <summary>
  ''' Destructor automático
  ''' </summary>
  ''' <author>Andrés Marotta</author>
  Protected Overrides Sub Finalize()
    Me._Codigo = -1
    Me._TipoDePago.Dispose()
    Me._Fecha = #1/1/1990#
    Me._Lineas.Clear()
    Me._Total = -1.0F
  End Sub
#End Region
End Class
