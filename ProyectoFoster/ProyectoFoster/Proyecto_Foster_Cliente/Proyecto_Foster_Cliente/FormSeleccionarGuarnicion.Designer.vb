<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormSeleccionarGuarnicion
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FormSeleccionarGuarnicion))
        Me.pbVolver = New System.Windows.Forms.PictureBox()
        Me.pbPedir = New System.Windows.Forms.PictureBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.lblPregunta = New System.Windows.Forms.Label()
        Me.ilChecket = New System.Windows.Forms.ImageList(Me.components)
        Me.pbChecket1 = New System.Windows.Forms.PictureBox()
        Me.pbChecket2 = New System.Windows.Forms.PictureBox()
        Me.pbChecket3 = New System.Windows.Forms.PictureBox()
        Me.pbChecket4 = New System.Windows.Forms.PictureBox()
        Me.lblOpcion1 = New System.Windows.Forms.Label()
        Me.lblOpcion2 = New System.Windows.Forms.Label()
        Me.lblopcion3 = New System.Windows.Forms.Label()
        Me.lblOpcion4 = New System.Windows.Forms.Label()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPedir, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket4, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'pbVolver
        '
        Me.pbVolver.BackColor = System.Drawing.Color.Transparent
        Me.pbVolver.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cancelar
        Me.pbVolver.Location = New System.Drawing.Point(543, 528)
        Me.pbVolver.Name = "pbVolver"
        Me.pbVolver.Size = New System.Drawing.Size(105, 60)
        Me.pbVolver.TabIndex = 27
        Me.pbVolver.TabStop = False
        '
        'pbPedir
        '
        Me.pbPedir.BackColor = System.Drawing.Color.Transparent
        Me.pbPedir.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbPedir.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Aceptar
        Me.pbPedir.Location = New System.Drawing.Point(663, 528)
        Me.pbPedir.Name = "pbPedir"
        Me.pbPedir.Size = New System.Drawing.Size(105, 60)
        Me.pbPedir.TabIndex = 26
        Me.pbPedir.TabStop = False
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(16, 568)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 28
        Me.pbCerrar.TabStop = False
        '
        'pbAyuda
        '
        Me.pbAyuda.BackColor = System.Drawing.Color.Transparent
        Me.pbAyuda.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.ayuda
        Me.pbAyuda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbAyuda.Location = New System.Drawing.Point(712, 22)
        Me.pbAyuda.Name = "pbAyuda"
        Me.pbAyuda.Size = New System.Drawing.Size(63, 65)
        Me.pbAyuda.TabIndex = 30
        Me.pbAyuda.TabStop = False
        '
        'pbCartel
        '
        Me.pbCartel.BackColor = System.Drawing.Color.Transparent
        Me.pbCartel.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.cartel_carta2
        Me.pbCartel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.pbCartel.Location = New System.Drawing.Point(0, 1)
        Me.pbCartel.Name = "pbCartel"
        Me.pbCartel.Size = New System.Drawing.Size(801, 202)
        Me.pbCartel.TabIndex = 29
        Me.pbCartel.TabStop = False
        '
        'lblPregunta
        '
        Me.lblPregunta.BackColor = System.Drawing.Color.Transparent
        Me.lblPregunta.Font = New System.Drawing.Font("Andy", 36.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblPregunta.Location = New System.Drawing.Point(28, 206)
        Me.lblPregunta.Name = "lblPregunta"
        Me.lblPregunta.Size = New System.Drawing.Size(740, 54)
        Me.lblPregunta.TabIndex = 31
        Me.lblPregunta.Text = "¿Pregunta?"
        '
        'ilChecket
        '
        Me.ilChecket.ImageStream = CType(resources.GetObject("ilChecket.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ilChecket.TransparentColor = System.Drawing.Color.Transparent
        Me.ilChecket.Images.SetKeyName(0, "check0.jpg")
        Me.ilChecket.Images.SetKeyName(1, "check1.jpg")
        '
        'pbChecket1
        '
        Me.pbChecket1.BackColor = System.Drawing.Color.Red
        Me.pbChecket1.Location = New System.Drawing.Point(69, 263)
        Me.pbChecket1.Name = "pbChecket1"
        Me.pbChecket1.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket1.TabIndex = 32
        Me.pbChecket1.TabStop = False
        Me.pbChecket1.Visible = False
        '
        'pbChecket2
        '
        Me.pbChecket2.BackColor = System.Drawing.Color.Red
        Me.pbChecket2.Location = New System.Drawing.Point(69, 329)
        Me.pbChecket2.Name = "pbChecket2"
        Me.pbChecket2.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket2.TabIndex = 33
        Me.pbChecket2.TabStop = False
        Me.pbChecket2.Visible = False
        '
        'pbChecket3
        '
        Me.pbChecket3.BackColor = System.Drawing.Color.Red
        Me.pbChecket3.Location = New System.Drawing.Point(69, 395)
        Me.pbChecket3.Name = "pbChecket3"
        Me.pbChecket3.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket3.TabIndex = 34
        Me.pbChecket3.TabStop = False
        Me.pbChecket3.Visible = False
        '
        'pbChecket4
        '
        Me.pbChecket4.BackColor = System.Drawing.Color.Red
        Me.pbChecket4.Location = New System.Drawing.Point(69, 460)
        Me.pbChecket4.Name = "pbChecket4"
        Me.pbChecket4.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket4.TabIndex = 35
        Me.pbChecket4.TabStop = False
        Me.pbChecket4.Visible = False
        '
        'lblOpcion1
        '
        Me.lblOpcion1.BackColor = System.Drawing.Color.Transparent
        Me.lblOpcion1.Font = New System.Drawing.Font("Andy", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblOpcion1.Location = New System.Drawing.Point(133, 263)
        Me.lblOpcion1.Name = "lblOpcion1"
        Me.lblOpcion1.Size = New System.Drawing.Size(635, 58)
        Me.lblOpcion1.TabIndex = 36
        Me.lblOpcion1.Text = "¿Pregunta?"
        Me.lblOpcion1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.lblOpcion1.Visible = False
        '
        'lblOpcion2
        '
        Me.lblOpcion2.BackColor = System.Drawing.Color.Transparent
        Me.lblOpcion2.Font = New System.Drawing.Font("Andy", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblOpcion2.Location = New System.Drawing.Point(140, 329)
        Me.lblOpcion2.Name = "lblOpcion2"
        Me.lblOpcion2.Size = New System.Drawing.Size(635, 58)
        Me.lblOpcion2.TabIndex = 37
        Me.lblOpcion2.Text = "¿Pregunta?"
        Me.lblOpcion2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.lblOpcion2.Visible = False
        '
        'lblopcion3
        '
        Me.lblopcion3.BackColor = System.Drawing.Color.Transparent
        Me.lblopcion3.Font = New System.Drawing.Font("Andy", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblopcion3.Location = New System.Drawing.Point(140, 395)
        Me.lblopcion3.Name = "lblopcion3"
        Me.lblopcion3.Size = New System.Drawing.Size(635, 58)
        Me.lblopcion3.TabIndex = 38
        Me.lblopcion3.Text = "¿Pregunta?"
        Me.lblopcion3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.lblopcion3.Visible = False
        '
        'lblOpcion4
        '
        Me.lblOpcion4.BackColor = System.Drawing.Color.Transparent
        Me.lblOpcion4.Font = New System.Drawing.Font("Andy", 27.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblOpcion4.Location = New System.Drawing.Point(140, 460)
        Me.lblOpcion4.Name = "lblOpcion4"
        Me.lblOpcion4.Size = New System.Drawing.Size(635, 58)
        Me.lblOpcion4.TabIndex = 39
        Me.lblOpcion4.Text = "¿Pregunta?"
        Me.lblOpcion4.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.lblOpcion4.Visible = False
        '
        'FormSeleccionarGuarnicion
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(800, 600)
        Me.Controls.Add(Me.lblOpcion4)
        Me.Controls.Add(Me.lblopcion3)
        Me.Controls.Add(Me.lblOpcion2)
        Me.Controls.Add(Me.lblOpcion1)
        Me.Controls.Add(Me.pbChecket4)
        Me.Controls.Add(Me.pbChecket3)
        Me.Controls.Add(Me.pbChecket2)
        Me.Controls.Add(Me.pbChecket1)
        Me.Controls.Add(Me.lblPregunta)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.pbAyuda)
        Me.Controls.Add(Me.pbCartel)
        Me.Controls.Add(Me.pbVolver)
        Me.Controls.Add(Me.pbPedir)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "FormSeleccionarGuarnicion"
        Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Show
        Me.Text = "FormSeleccionarGuarnicion"
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPedir, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket4, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents pbVolver As System.Windows.Forms.PictureBox
    Friend WithEvents pbPedir As System.Windows.Forms.PictureBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents lblPregunta As System.Windows.Forms.Label
    Friend WithEvents ilChecket As System.Windows.Forms.ImageList
    Friend WithEvents pbChecket1 As System.Windows.Forms.PictureBox
    Friend WithEvents pbChecket2 As System.Windows.Forms.PictureBox
    Friend WithEvents pbChecket3 As System.Windows.Forms.PictureBox
    Friend WithEvents pbChecket4 As System.Windows.Forms.PictureBox
    Friend WithEvents lblOpcion1 As System.Windows.Forms.Label
    Friend WithEvents lblOpcion2 As System.Windows.Forms.Label
    Friend WithEvents lblopcion3 As System.Windows.Forms.Label
    Friend WithEvents lblOpcion4 As System.Windows.Forms.Label
End Class
