Public Class FormSeleccionarGuarnicion
    'Variables 
    Private check1 As Boolean
    Private check2 As Boolean
    Private check3 As Boolean
    Private check4 As Boolean

    '---------------------------------- EVENTOS -----------------------------
#Region "EVENTOS"
    Private Sub FormSeleccionarGuarnicion_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        InicializarCheckets()
        MostrarOpciones(2)
    End Sub

    Private Sub pbCerrar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbCerrar.Click
        Application.Exit()

    End Sub

    Private Sub pbVolver_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbVolver.Click
        Me.Close()

    End Sub

    Private Sub pbPedir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbPedir.Click
        'TODO: siguiente pregunta o terminar con "me.close()"
    End Sub

    Private Sub pbAyuda_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbAyuda.Click
        FormAyuda.Show()
    End Sub
#Region "Checks"
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

    Private Sub pbChecket4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pbChecket4.Click
        InicializarCheckets()
        pbChecket4.Image = ilChecket.Images(1)
        check4 = True
    End Sub
#End Region
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
        check4 = False
        pbChecket1.Image = ilChecket.Images(0)
        pbChecket2.Image = ilChecket.Images(0)
        pbChecket3.Image = ilChecket.Images(0)
        pbChecket4.Image = ilChecket.Images(0)
    End Sub
    ''' <summary>
    '''  Hace visible el numero de opciones seleccionado, maximo 4
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub MostrarOpciones(ByVal NumOpciones As Integer)
        'Ocultar todos
        For i As Integer = 0 To 3
            Me.FindForm.Controls("pbChecket" & (i + 1)).Visible = False
            Me.FindForm.Controls("lblOpcion" & (i + 1)).Visible = False
        Next
        'Mostrar
        Try
            For i As Integer = 0 To NumOpciones - 1
                Me.FindForm.Controls("pbChecket" & (i + 1)).Visible = True
                Me.FindForm.Controls("lblOpcion" & (i + 1)).Visible = True
            Next
        Catch ex As Exception
            'Se sobrepasa el numero maximo
        End Try

    End Sub

    ''' <summary>
    '''  Cambia el Texto de las opciones, solo hay que pasar por parametro el 
    ''' string de las preguntas por separado.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub CambiarPreguntas(ByVal Pregunta1 As String)
        lblOpcion1.Text = Pregunta1
    End Sub

    ''' <summary>
    '''  Cambia el Texto de las opciones, solo hay que pasar por parametro el 
    ''' string de las preguntas por separado.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub CambiarPreguntas(ByVal Pregunta1 As String, ByVal Pregunta2 As String)
        lblOpcion1.Text = Pregunta1
        lblOpcion2.Text = Pregunta2
    End Sub

    ''' <summary>
    '''  Cambia el Texto de las opciones, solo hay que pasar por parametro el 
    ''' string de las preguntas por separado.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub CambiarPreguntas(ByVal Pregunta1 As String, ByVal Pregunta2 As String, _
                                 ByVal Pregunta3 As String)
        lblOpcion1.Text = Pregunta1
        lblOpcion2.Text = Pregunta2
        lblopcion3.Text = Pregunta3
    End Sub

    ''' <summary>
    '''  Cambia el Texto de las opciones, solo hay que pasar por parametro el 
    ''' string de las preguntas por separado.
    ''' </summary>
    ''' <autor>Julio L. Antoranz Ros</autor>
    Private Sub CambiarPreguntas(ByVal Pregunta1 As String, ByVal Pregunta2 As String, _
                                 ByVal Pregunta3 As String, ByVal Pregunta4 As String)
        lblOpcion1.Text = Pregunta1
        lblOpcion2.Text = Pregunta2
        lblopcion3.Text = Pregunta3
        lblOpcion4.Text = Pregunta4

    End Sub
#End Region



End Class