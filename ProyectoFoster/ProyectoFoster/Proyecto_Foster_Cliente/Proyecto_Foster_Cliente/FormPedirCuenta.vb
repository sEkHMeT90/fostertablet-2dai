''' <summary>
'''  Pantalla Cobro
'''  Aqui el cliente podra seleccionar como desea pagar.
''' </summary>
''' <autor>Julio L. Antoranz Ros</autor>
Public Class FormPedirCuenta

    'Variables 

    Private check1 As Boolean
    Private check2 As Boolean
    Private check3 As Boolean
   
    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"

    Private Sub FormPedirCuenta_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        InicializarCheckets()

    End Sub
    Private Sub pbChecket1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket1.Click
        InicializarCheckets()
        pbChecket1.Image = ilChecket.Images(1)
        check1 = True
    End Sub

    Private Sub pbChecket2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket2.Click
        InicializarCheckets()
        pbChecket2.Image = ilChecket.Images(1)
        check2 = True
    End Sub

    Private Sub pbChecket3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket3.Click
        InicializarCheckets()
        pbChecket3.Image = ilChecket.Images(1)
        check3 = True
    End Sub

    Private Sub pbContinuar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbContinuar.Click

    End Sub

    Private Sub pbAtras_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAtras.Click
        Me.Close()

    End Sub
#End Region
    '---------------------------------- FUNCIONES -----------------------------
#Region "FUNCIONES"
    ''' <summary>
    '''  Inicializa los checkets a false todos
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub InicializarCheckets()
        check1 = False
        check2 = False
        check3 = False
        pbChecket1.Image = ilChecket.Images(0)
        pbChecket2.Image = ilChecket.Images(0)
        pbChecket3.Image = ilChecket.Images(0)
    End Sub
#End Region
End Class