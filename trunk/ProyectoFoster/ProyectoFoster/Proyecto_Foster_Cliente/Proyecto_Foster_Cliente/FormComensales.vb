Public Class FormComensales

    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub PictureBox2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal1.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal3.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal5.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal4.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal2.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComensal6.Click
        FormListaCarta.ShowDialog()
    End Sub

    Private Sub PictureBox7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbComunComensales.Click
        FormListaCarta.ShowDialog()
    End Sub
End Class