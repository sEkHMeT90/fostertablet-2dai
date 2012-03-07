Public Class FormPrincipal

    Private Sub FormPrincipal_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub

    Private Sub VerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles VerToolStripMenuItem.Click
        Dim _verMesas As New VerMesas
        _verMesas.ShowDialog()
    End Sub
End Class
