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
#End Region
    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub FormDetallePlato_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
#End Region

    '---------------------------------- FUNCIONES -------------------------
#Region "FUNCIONES"

#End Region
End Class