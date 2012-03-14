Option Explicit On
Option Strict On

Imports Oracle.DataAccess.Client
Imports Oracle.DataAccess.Types
Imports System.Drawing
Imports System.Drawing.Printing

''' <summary>
''' Clase Factura
''' </summary>
''' <author>Andrés Marotta, David Guerra Abad, David Martínez Pérez</author>
Public Class Factura

#Region "Constantes"

  Private Const _BORRAR As String = "GestionFacturas.Borrar"
#End Region

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
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Shared Function Cargar(ByVal codigo As Integer) As Factura
    Dim Factura As New Factura
    Dim OrigenDatos As New BBDD
    Dim Lector As OracleDataReader

    If OrigenDatos.Conectar Then
      Lector = OrigenDatos.Consultar("SELECT * FROM Facturas WHERE codigo = " & codigo)

      If Lector IsNot Nothing AndAlso Lector.HasRows Then
        Lector.Read()
        Factura.Codigo = CInt(Lector(0))
        Factura.Ticket = Ticket.Cargar(CInt(Lector(1)))
        Lector.Close()
      Else
        Factura = Nothing
      End If

      OrigenDatos.Desconectar()
    Else
      Factura = Nothing
    End If

    Return Factura
  End Function

  ''' <summary>
  ''' Carga todas las facturas almacenadas
  ''' </summary>
  ''' <returns>Un DataSet con todas las facturas</returns>
  ''' <author>Andrés Marotta</author>
  Public Shared Function CargarDatos() As DataSet
    Dim Facturas As New DataSet

    Facturas = BBDD.CargarDatos("Facturas")

    Return Facturas
  End Function

  ''' <summary>
  ''' Borra una factura de la base de datos
  ''' </summary>
  ''' <param name="factura">Factura que se va a borrar</param>
  ''' <returns>Un boolean indicando si la operación se realizó con éxito</returns>
  ''' <author>David Martínez Pérez</author>
    Public Shared Function Borrar(ByVal factura As Factura) As Boolean
        Dim ok As Boolean

        Dim OrigenDatos As New BBDD
        Dim Comando As OracleCommand

        If OrigenDatos.Conectar() Then
            Comando = New OracleCommand(_BORRAR, OrigenDatos.Conexion)
            Comando.Parameters.Add("Resultado", OracleDbType.Int32, ParameterDirection.ReturnValue)
            Comando.Parameters.Add("ticket", OracleDbType.Int32, 2).Value = factura._Codigo
            Comando.CommandType = CommandType.StoredProcedure

            If OrigenDatos.Modificar(Comando) = 0 Then
                ok = False
            Else
                ok = True
            End If

            OrigenDatos.Desconectar()
            OrigenDatos.Dispose()
        End If

        Return ok
    End Function


  ''' <summary>
  ''' Imprime la factura
  ''' </summary>
  ''' <author>Andrés Marotta, David Martínez Pérez</author>
  Public Sub Imprimir()
    Dim impresion As New PrintDocument
    AddHandler impresion.PrintPage, AddressOf printpage

    impresion.Print()
  End Sub

  ''' <summary>
  ''' Evento de impresión de los tickets
  ''' </summary>
  ''' <param name="sender">PrintPage que se va a imprimir</param>
  ''' <param name="e">Papel donde escribimos el ticket</param>
  ''' <author>David Martínez Pérez</author>
  Private Sub printpage(ByVal sender As Object, ByVal e As PrintPageEventArgs)
    ' parametros impresion
    Dim titulo As New Font("Courier New", 12)
    Dim fuente As New Font("Courier New", 8)
    Dim pincel As Brush = Brushes.Black
    Dim y As Single = e.MarginBounds.Top

    ' tamaño de lineas 
    Dim longitudNombreProducto As Integer = 60
    Dim longitudCantidad As Integer = 6
    Dim longitudIva As Integer = 6
    Dim longitudPrecio As Integer = 9
    Dim longitudLinea = 90
    Dim nombreProducto As String
    Dim sumaIva As Single = 0.0F


    ' Cabecera
    e.Graphics.DrawString("FOSTER'S HOLLYWOOD", _
                          titulo, pincel, e.MarginBounds.Left, y)
    e.Graphics.DrawString(Me._Ticket.Fecha.ToString("g").PadLeft(longitudLinea),
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
                          "Iva".PadLeft(longitudIva) & _
                          "Precio".PadLeft(longitudPrecio), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight
    e.Graphics.DrawString("  ___________________________________________________________________  ",
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight

    For Each linea As LineaTicket In Me._Ticket.Lineas
      nombreProducto = linea.NombreProducto
      ' Acortamos el nombre si es muy largo
      If nombreProducto.Length > longitudNombreProducto Then
        nombreProducto = nombreProducto.Substring(0, longitudNombreProducto - 2) & ".."
      End If

      ' imprimimos la linea
      e.Graphics.DrawString(nombreProducto.PadRight(longitudNombreProducto) & _
                            linea.Cantidad.ToString.PadLeft(longitudCantidad) & _
                            linea.IVA.ToString.PadLeft(longitudIva) & _
                            linea.Precio.ToString("0.00").PadLeft(longitudPrecio), _
                            fuente, pincel, e.MarginBounds.Left, y)
      y += fuente.GetHeight

      sumaIva += (linea.IVA * linea.Cantidad * linea.Precio) / 100
    Next

    e.Graphics.DrawString("  ___________________________________________________________________  ",
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight


    ' Pie
    e.Graphics.DrawString("Precio Total:", _
                          fuente, pincel, e.MarginBounds.Left, y)
    e.Graphics.DrawString(Me._Ticket.Total.ToString("0.00").PadLeft(longitudLinea), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight
    e.Graphics.DrawString(("Iva: " & sumaIva.ToString("0.00")).PadLeft(longitudLinea), _
                          fuente, pincel, e.MarginBounds.Left, y)
    y += fuente.GetHeight + fuente.GetHeight

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
