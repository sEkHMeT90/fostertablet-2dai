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
Public Class FormPedirCuenta

    'Variables 
    Private pagina As Short
    Private check1 As Boolean
    Private check2 As Boolean
    Private check3 As Boolean
    Private RespuestaPregunta1 As String
    Private RespuestaPregunta2 As String


    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"

    Private Sub FormPedirCuenta_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        pagina = 0
        check1 = False
        check2 = False
        check3 = False
        InicializarCheckets()

    End Sub
    Private Sub pbChecket1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket1.Click
        If (Not check2) And (Not check3) Then
            If (check1) Then
                pbChecket1.Image = ilChecket.Images(0)
                check1 = False
            Else
                pbChecket1.Image = ilChecket.Images(1)
                check1 = True
            End If
        End If
    End Sub

    Private Sub pbChecket2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket2.Click
        If (Not check1) And (Not check3) Then
            If (check2) Then
                pbChecket2.Image = ilChecket.Images(0)
                check2 = False
            Else
                pbChecket2.Image = ilChecket.Images(1)
                check2 = True
            End If
        End If
    End Sub

    Private Sub pbChecket3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket3.Click
        If (Not check2) And (Not check1) Then
            If (check3) Then
                pbChecket3.Image = ilChecket.Images(0)
                check3 = False
            Else
                pbChecket3.Image = ilChecket.Images(1)
                check3 = True
            End If
        End If
    End Sub

    Private Sub pbContinuar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbContinuar.Click

    End Sub

    Private Sub pbAtras_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAtras.Click
        Me.Close()

    End Sub
#End Region
    '---------------------------------- FUNCIONES -----------------------------
#Region "FUNCIONES"
    Private Sub InicializarCheckets()
        pbChecket1.Image = ilChecket.Images(0)
        pbChecket2.Image = ilChecket.Images(0)
        pbChecket3.Image = ilChecket.Images(0)
    End Sub
#End Region
End Class