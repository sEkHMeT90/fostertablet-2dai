Public Class FormListaCarta

    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub pbPlatos_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPlatos.Click
        FormListaSecciones.Show()
    End Sub
End Class