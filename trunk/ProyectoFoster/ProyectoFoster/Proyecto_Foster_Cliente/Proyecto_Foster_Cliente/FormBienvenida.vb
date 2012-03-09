''' <summary>
'''  Pantalla de Bienvenida.
''' Sera la primera pantalla que vera el cliente al entregarle la tablet o 
''' sentarse en la mesa.
''' 
''' La aplicacion dispone de un ".ini" donde se guardara entre otros datos 
''' el numero de mesa asignado a la tablet. En caso de no disponer de 
''' ese dato se abrira una pantalla para seleccionar la mesa y se creara 
''' o actualizara el fichero ".ini".
''' 
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormBienvenida
    'Constantes
    Const NumeroComensalesMaximo As Integer = 11
    Const NumeroComensalesMinimo As Integer = 0
    'Variables 
    Public ContadorComensales As Integer

    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()
    End Sub

    Private Sub PictureBox5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbListo.Click
        FormListaCarta.Show()
    End Sub

    Private Sub pbBotonUp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbBotonUp.Click
        AumentarNumeroContador()
    End Sub

    Private Sub pbBotonDown_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbBotonDown.Click
        DisminuirNumeroContador()
    End Sub

    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        'TODO: Seción ayuda
    End Sub

    Private Sub FormBienvenida_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ContadorComensales = 0
        pbContador.Image = ilListaImgContador.Images(ContadorComensales)
        'TODO: Comprobar si existe el ".ini"
        'TODO: Cargar datos ".ini"
        'TODO: Crear o cargar ".ini"
    End Sub
#End Region
    '---------------------------------- FUNCIONES -------------------------
#Region "FUNCIONES"
    Private Sub AumentarNumeroContador()
        If ContadorComensales < NumeroComensalesMaximo Then
            ContadorComensales += 1
            Try
                pbContador.Image = ilListaImgContador.Images(ContadorComensales)
            Catch ex As Exception
                MessageBox.Show("ERROR: " & ex.Message.ToString)
            End Try

        End If
    End Sub

    Private Sub DisminuirNumeroContador()
        If ContadorComensales > NumeroComensalesMinimo Then
            ContadorComensales -= 1
            Try
                pbContador.Image = ilListaImgContador.Images(ContadorComensales)
            Catch ex As Exception
                MessageBox.Show("ERROR: " & ex.Message.ToString)
            End Try
        End If
    End Sub
#End Region
End Class
