Public Class VerMesas
    Private dataSetMesas As DataSet

    Private Sub VerMesas_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Try
            dataSetMesas = BBDD.CargarDatos("MESAS")
            dgvMesas.DataSource = dataSetMesas.Tables("MESAS")
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message)
        End Try
    End Sub
End Class