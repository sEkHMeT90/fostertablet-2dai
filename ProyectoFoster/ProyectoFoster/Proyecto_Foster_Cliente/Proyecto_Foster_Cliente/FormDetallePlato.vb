''' <summary>
'''  Pantalla de Detalle de Plato.
''' Sera la primera pantalla que el cliente emezara a seleccionar lo que quiere pedir.
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormDetallePlato
    'Variables

#Region "CONSTRUCTOR"
    Sub New()

        ' Llamada necesaria para el diseñador.
        InitializeComponent()

        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().

    End Sub

    Sub New(ByVal CodPlato As Integer)

        ' Llamada necesaria para el diseñador.
        InitializeComponent()

        ' Agregue cualquier inicialización después de la llamada a InitializeComponent().

    End Sub
#End Region
    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub FormDetallePlato_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        FormAyuda.Show()
    End Sub
#End Region

    '---------------------------------- FUNCIONES -------------------------
#Region "FUNCIONES"

#End Region

   
    Private Sub pbPedir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPedir.Click
        'TODO: Guardar pedido en BBDD
        Me.Close()
    End Sub

    Private Sub pbVolver_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbVolver.Click
        Me.Close()
    End Sub
End Class