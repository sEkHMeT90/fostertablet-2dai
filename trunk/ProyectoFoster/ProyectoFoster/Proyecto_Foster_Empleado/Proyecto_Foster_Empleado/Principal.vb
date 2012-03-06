Option Explicit On
Option Strict On

''' <summary>
''' Formulario principal de la interfaz del empleado
''' </summary>
''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>

Public Class Principal

#Region "Variables"

#End Region

#Region "Eventos"

    ''' <summary>
    ''' Evento load.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        For x As Integer = 0 To gb_mesas.Width Step 3
            For y As Integer = 0 To gb_mesas.Height Step 3

            Next
        Next
    End Sub

    ''' <summary>
    ''' Botón que finaliza la aplicación.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub bt_salir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bt_salir.Click
        Me.Close()
    End Sub

    ''' <summary>
    ''' Evento que redimensiona el contenido del formulario.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub Form1_Resize(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Resize

        Me.dgv_Comandas.Location = New Point(10, 10)
        Me.dgv_Comandas.Size = New Size(CInt(Me.Width / 2 - 20), Me.Height - 135)

        Me.gb_mesas.Location = New Point(Me.dgv_Comandas.Width + 20, 10)
        Me.gb_mesas.Size = New Size(CInt(Me.Width / 2 - 20), Me.Height - 135)

    End Sub

    ''' <summary>
    ''' Evento que muestra el formulario de LineasDeComanda con las líneas de la comanda 
    ''' sobre la que se ha hecho doble click.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub dgv_Comandas_CellDoubleClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dgv_Comandas.CellDoubleClick
        LineasDeComanda.Show()
    End Sub

    ''' <summary>
    ''' Botón que imprime la comanda seleccionada para mandarla a cocina.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub bt_aCocina_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bt_aCocina.Click

    End Sub

    ''' <summary>
    ''' Botón que imprime la factura de la comanda seleccionada.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub bt_Factura_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bt_Factura.Click

    End Sub

    ''' <summary>
    ''' Botón que imprime el ticket seleccionado.
    ''' </summary>
    ''' <author> Raquel Lloréns Gambín, Alejandro Guijarro Terol</author>
    Private Sub bt_Ticket_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles bt_Ticket.Click

    End Sub
#End Region

#Region "Funciones"

#End Region
End Class
