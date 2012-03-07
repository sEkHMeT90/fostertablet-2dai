''' <summary>
'''  Pantalla de Lista para la Carta.
''' Sera la primera pantalla que el cliente emezara a seleccionar lo que quiere pedir.
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormListaCarta
    'Constantes
    'Variables
    Public ComensalSeleccionado As Integer

    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub pbEntrantes_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbEntrantes.Click
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        'TODO: Seción ayuda
    End Sub

    Private Sub FormListaCarta_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ComensalSeleccionado = 0
        MostrarComensales()
    End Sub

    Private Sub pbComensal1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal1.Click
        ComensalSeleccionado = 0
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal2.Click
        ComensalSeleccionado = 1
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal3.Click
        ComensalSeleccionado = 2
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal4.Click
        ComensalSeleccionado = 3
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal5.Click
        ComensalSeleccionado = 4
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal6.Click
        ComensalSeleccionado = 5
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal7.Click
        ComensalSeleccionado = 6
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal8.Click
        ComensalSeleccionado = 7
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal9.Click
        ComensalSeleccionado = 8
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal10.Click
        ComensalSeleccionado = 9
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal11.Click
        ComensalSeleccionado = 10
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal12.Click
        ComensalSeleccionado = 11
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComun_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComun.Click
        ComensalSeleccionado = -1
        CambiarComensalSeleccionado()
    End Sub
#End Region
    '---------------------------------- FUNCIONES -------------------------
#Region "FUNCIONES"
    Private Sub MostrarComensales()
        Dim NumeroComensales As Integer = FormBienvenida.ContadorComensales
        'Mostrar Todos
        For i As Integer = 0 To NumeroComensales
            Me.FindForm.Controls("pbComensal" & (i + 1)).Visible = True
        Next

        'Cambiar Icono Seleccionado
        'TODO: Demomento esta solo el clor de fondo, pero debera ser la imagen la que cambie
        Me.pbComun.BackColor = Color.Silver
        Me.FindForm.Controls("pbComensal" & (ComensalSeleccionado + 1)).BackColor = Color.Aqua
    End Sub

    Private Sub CambiarComensalSeleccionado()
        Dim NumeroComensales As Integer = FormBienvenida.ContadorComensales
        'Resetear todos los iconos de los comensales
        Me.pbComun.BackColor = Color.Silver
        For i As Integer = 0 To NumeroComensales
            Me.FindForm.Controls("pbComensal" & (i + 1)).BackColor = Color.Silver
        Next
        'Cambiar Icono Seleccionado
        'TODO: Demomento esta solo el clor de fondo, pero debera ser la imagen la que cambie
        If ComensalSeleccionado = -1 Then
            pbComun.BackColor = Color.Aqua
        Else
            Me.FindForm.Controls("pbComensal" & (ComensalSeleccionado + 1)).BackColor = Color.Aqua
        End If

    End Sub
#End Region


End Class