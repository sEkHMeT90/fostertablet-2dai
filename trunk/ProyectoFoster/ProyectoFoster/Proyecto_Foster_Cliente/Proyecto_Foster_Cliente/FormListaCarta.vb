''' <summary>
'''  Pantalla de Lista para la Carta.
''' Sera la primera pantalla que el cliente emezara a seleccionar lo que quiere pedir.
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormListaCarta
    'Constantes
    'Variables
    Public ListaComensales As New List(Of String)
    Public ComensalSeleccionado As Integer


    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub
#Region "CARTA"
    Private Sub pbEntrantes_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbEntrantes.Click
        Dim Ventana As New FormListaCartaPlatos(3, 1)
        FormListaCartaPlatos.Show()
    End Sub
    Private Sub pbHamburguesas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbHamburguesas.Click
        Dim Ventana As New FormListaCartaPlatos(3, 8)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbCostillas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCostillas.Click
        Dim Ventana As New FormListaCartaPlatos(3, 7)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbTexMex_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbTexMex.Click
        Dim Ventana As New FormListaCartaPlatos(3, 3)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbSandwich_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbSandwich.Click
        Dim Ventana As New FormListaCartaPlatos(3, 4)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbPolloPescado_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPolloPescado.Click
        Dim Ventana As New FormListaCartaPlatos(3, 5)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbParrilla_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbParrilla.Click
        Dim Ventana As New FormListaCartaPlatos(3, 6)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbInfantiles_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbInfantiles.Click
        Dim Ventana As New FormListaCartaPlatos(3, 9)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbPostres_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPostres.Click
        Dim Ventana As New FormListaCartaPlatos(3, 10)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbAgua_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAgua.Click
        Dim Ventana As New FormListaCartaPlatos(2, 1)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbEnsaladas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbEnsaladas.Click
        Dim Ventana As New FormListaCartaPlatos(3, 2)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbCafeInfusiones_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCafeInfusiones.Click
        Dim Ventana As New FormListaCartaPlatos(2, 4)
        FormListaCartaPlatos.Show()
    End Sub
    Private Sub pbMiniEnsaladas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbMiniEnsaladas.Click
        Dim Ventana As New FormListaCartaPlatos(1, 1)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbPan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPan.Click
        Dim Ventana As New FormListaCartaPlatos(1, 3)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbPatatas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPatatas.Click
        Dim Ventana As New FormListaCartaPlatos(1, 2)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbBebidasAlcoholicas_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbBebidasAlcoholicas.Click
        Dim Ventana As New FormListaCartaPlatos(2, 2)
        FormListaCartaPlatos.Show()
    End Sub

    Private Sub pbRefrescos_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbRefrescos.Click
        Dim Ventana As New FormListaCartaPlatos(2, 1)
        FormListaCartaPlatos.Show()
    End Sub
#End Region
#Region "COMENSALES"
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
    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        FormAyuda.Show()
    End Sub

    Private Sub FormListaCarta_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FormBienvenida.Visible = False
        If (ComensalSeleccionado = Nothing) Then
            ComensalSeleccionado = 0
        End If

        MostrarComensales()
    End Sub
    Private Sub FormListaCarta_VisibleChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.VisibleChanged
        CambiarComensalSeleccionado()
    End Sub
    Private Sub pbPedirCuenta_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPedirCuenta.Click
        FormPedirCuenta.ShowDialog()
    End Sub
    Private Sub pbPedir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPedir.Click
        FormHacerPedido.Show()
    End Sub
    Private Sub pbLlamarCamarero_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbLlamarCamarero.Click
        MessageBox.Show("En unos instantes vendrá un camarero a atenderle, por favor espere.")
    End Sub
    Private Sub pbAtras_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAtras.Click
        Me.Close()
    End Sub
    Private Sub FormListaCarta_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        FormBienvenida.Visible = True
    End Sub
#End Region
    '---------------------------------- FUNCIONES -------------------------
#Region "FUNCIONES"

    ''' <summary>
    '''  Muestra los iconos de los comensales segun un numero de comensales.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub MostrarComensales()
        Dim NumeroComensales As Integer = FormBienvenida.ContadorComensales
        'Mostrar Todos
        For i As Integer = 0 To NumeroComensales
            Me.FindForm.Controls("pbComensal" & (i + 1)).Visible = True
        Next
        CambiarComensalSeleccionado()
    End Sub

    ''' <summary>
    '''  Cambia el fondo del icono del comensal seleccionado.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub CambiarComensalSeleccionado()
        Dim NumeroComensales As Integer = FormBienvenida.ContadorComensales

        'Resetear todos los iconos de los comensales
        Me.pbComun.BackColor = Color.SlateGray
        For i As Integer = 0 To NumeroComensales
            Me.FindForm.Controls("pbComensal" & (i + 1)).BackColor = Color.SlateGray
        Next

        'Cambiar Icono Seleccionado
        If ComensalSeleccionado = -1 Then
            pbComun.BackColor = Color.White
        Else
            Me.FindForm.Controls("pbComensal" & (ComensalSeleccionado + 1)).BackColor = Color.White
        End If

    End Sub
#End Region


   
    
End Class