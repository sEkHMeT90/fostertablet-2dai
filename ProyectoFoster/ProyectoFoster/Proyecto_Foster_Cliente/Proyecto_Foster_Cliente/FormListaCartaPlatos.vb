''' <summary>
'''  Pantalla de Lista para la Carta de platos.
''' Sera la segunda pantalla que el cliente emezara a seleccionar lo que quiere pedir.
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormListaCartaPlatos
    'Variables
    Private Categoria As Integer
    Private SubCategoria As Integer
#Region "CONSTRUCTOR"
    Public Sub New()
        ' Llamada necesaria para el diseñador.
        InitializeComponent()
        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().
    End Sub
    Public Sub New(ByVal Categoria As Integer, ByVal SubCategoria As Integer)

        ' Llamada necesaria para el diseñador.
        InitializeComponent()
        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().

        Me.Categoria = Categoria
        Me.SubCategoria = SubCategoria
    End Sub
#End Region
    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
#Region "COMENSALES"
    Private Sub pbComensal1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal1.Click
        FormListaCarta.ComensalSeleccionado = 0
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal2.Click
        FormListaCarta.ComensalSeleccionado = 1
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal3.Click
        FormListaCarta.ComensalSeleccionado = 2
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal4.Click
        FormListaCarta.ComensalSeleccionado = 3
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal5.Click
        FormListaCarta.ComensalSeleccionado = 4
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal6.Click
        FormListaCarta.ComensalSeleccionado = 5
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal7.Click
        FormListaCarta.ComensalSeleccionado = 6
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal8.Click
        FormListaCarta.ComensalSeleccionado = 7
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal9.Click
        FormListaCarta.ComensalSeleccionado = 8
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal10.Click
        FormListaCarta.ComensalSeleccionado = 9
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal11.Click
        FormListaCarta.ComensalSeleccionado = 10
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComensal12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal12.Click
        FormListaCarta.ComensalSeleccionado = 11
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbComun_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComun.Click
        FormListaCarta.ComensalSeleccionado = -1
        CambiarComensalSeleccionado()
    End Sub

#End Region
#Region "PLATOS"
    Private Sub pbImegenPlato_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato.Click
        FormDetallePlato.Show()
    End Sub

    Private Sub pbImegenPlato2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato2.Click
        FormDetallePlato.Show()
    End Sub

    Private Sub pbImegenPlato3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato3.Click
        FormDetallePlato.Show()
    End Sub

    Private Sub pbImegenPlato4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato4.Click
        FormDetallePlato.Show()
    End Sub

    Private Sub pbImegenPlato5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato5.Click
        FormDetallePlato.Show()
    End Sub

    Private Sub pbImegenPlato6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbImegenPlato6.Click
        FormDetallePlato.Show()
    End Sub
#End Region
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub FormListaCartaPlatos_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FormListaCarta.Visible = False
        MostrarComensales()
    End Sub

    Private Sub FormListaCartaPlatos_VisibleChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.VisibleChanged
        CambiarComensalSeleccionado()
    End Sub

    Private Sub pbAtras_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAtras.Click
        Me.Close()
    End Sub

    Private Sub FormListaCartaPlatos_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        FormListaCarta.Visible = True

    End Sub

    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        FormAyuda.Show()
    End Sub

    Private Sub pbPedirCuenta_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPedirCuenta.Click
        FormPedirCuenta.ShowDialog()
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
        If FormListaCarta.ComensalSeleccionado = -1 Then
            pbComun.BackColor = Color.White
        Else
            Me.FindForm.Controls("pbComensal" & (FormListaCarta.ComensalSeleccionado + 1)).BackColor = Color.White
        End If

    End Sub
#End Region

    
End Class