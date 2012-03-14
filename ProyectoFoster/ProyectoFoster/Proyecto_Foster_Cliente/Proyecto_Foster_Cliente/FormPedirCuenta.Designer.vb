<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormPedirCuenta
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FormPedirCuenta))
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.RadioButton8 = New System.Windows.Forms.RadioButton()
        Me.RadioButton6 = New System.Windows.Forms.RadioButton()
        Me.RadioButton7 = New System.Windows.Forms.RadioButton()
        Me.ilChecket = New System.Windows.Forms.ImageList(Me.components)
        Me.pbContinuar = New System.Windows.Forms.PictureBox()
        Me.pbOpcion3 = New System.Windows.Forms.PictureBox()
        Me.pbOpcion2 = New System.Windows.Forms.PictureBox()
        Me.pbOpcion1 = New System.Windows.Forms.PictureBox()
        Me.pbAtras = New System.Windows.Forms.PictureBox()
        Me.pbChecket3 = New System.Windows.Forms.PictureBox()
        Me.pbChecket2 = New System.Windows.Forms.PictureBox()
        Me.pbPreguntas = New System.Windows.Forms.PictureBox()
        Me.pbChecket1 = New System.Windows.Forms.PictureBox()
        Me.GroupBox3.SuspendLayout()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAtras, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPreguntas, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.RadioButton8)
        Me.GroupBox3.Controls.Add(Me.RadioButton6)
        Me.GroupBox3.Controls.Add(Me.RadioButton7)
        Me.GroupBox3.Location = New System.Drawing.Point(56, 464)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(114, 93)
        Me.GroupBox3.TabIndex = 5
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Metodo de pago"
        Me.GroupBox3.Visible = False
        '
        'RadioButton8
        '
        Me.RadioButton8.AutoSize = True
        Me.RadioButton8.Location = New System.Drawing.Point(6, 42)
        Me.RadioButton8.Name = "RadioButton8"
        Me.RadioButton8.Size = New System.Drawing.Size(99, 17)
        Me.RadioButton8.TabIndex = 2
        Me.RadioButton8.TabStop = True
        Me.RadioButton8.Text = "Todo Separado"
        Me.RadioButton8.UseVisualStyleBackColor = True
        '
        'RadioButton6
        '
        Me.RadioButton6.AutoSize = True
        Me.RadioButton6.Location = New System.Drawing.Point(6, 65)
        Me.RadioButton6.Name = "RadioButton6"
        Me.RadioButton6.Size = New System.Drawing.Size(80, 17)
        Me.RadioButton6.TabIndex = 1
        Me.RadioButton6.TabStop = True
        Me.RadioButton6.Text = "Prorrateado"
        Me.RadioButton6.UseVisualStyleBackColor = True
        '
        'RadioButton7
        '
        Me.RadioButton7.AutoSize = True
        Me.RadioButton7.Location = New System.Drawing.Point(6, 19)
        Me.RadioButton7.Name = "RadioButton7"
        Me.RadioButton7.Size = New System.Drawing.Size(76, 17)
        Me.RadioButton7.TabIndex = 0
        Me.RadioButton7.TabStop = True
        Me.RadioButton7.Text = "Todo junto"
        Me.RadioButton7.UseVisualStyleBackColor = True
        '
        'ilChecket
        '
        Me.ilChecket.ImageStream = CType(resources.GetObject("ilChecket.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ilChecket.TransparentColor = System.Drawing.Color.Transparent
        Me.ilChecket.Images.SetKeyName(0, "check0.jpg")
        Me.ilChecket.Images.SetKeyName(1, "check1.jpg")
        '
        'pbContinuar
        '
        Me.pbContinuar.BackColor = System.Drawing.Color.Transparent
        Me.pbContinuar.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Aceptar
        Me.pbContinuar.Location = New System.Drawing.Point(647, 486)
        Me.pbContinuar.Name = "pbContinuar"
        Me.pbContinuar.Size = New System.Drawing.Size(105, 60)
        Me.pbContinuar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbContinuar.TabIndex = 14
        Me.pbContinuar.TabStop = False
        '
        'pbOpcion3
        '
        Me.pbOpcion3.BackColor = System.Drawing.Color.Transparent
        Me.pbOpcion3.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.opcion3_1
        Me.pbOpcion3.Location = New System.Drawing.Point(202, 374)
        Me.pbOpcion3.Name = "pbOpcion3"
        Me.pbOpcion3.Size = New System.Drawing.Size(510, 58)
        Me.pbOpcion3.TabIndex = 13
        Me.pbOpcion3.TabStop = False
        '
        'pbOpcion2
        '
        Me.pbOpcion2.BackColor = System.Drawing.Color.Transparent
        Me.pbOpcion2.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.opcion2_1
        Me.pbOpcion2.Location = New System.Drawing.Point(202, 276)
        Me.pbOpcion2.Name = "pbOpcion2"
        Me.pbOpcion2.Size = New System.Drawing.Size(510, 58)
        Me.pbOpcion2.TabIndex = 12
        Me.pbOpcion2.TabStop = False
        '
        'pbOpcion1
        '
        Me.pbOpcion1.BackColor = System.Drawing.Color.Transparent
        Me.pbOpcion1.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.opcion1_1
        Me.pbOpcion1.Location = New System.Drawing.Point(202, 185)
        Me.pbOpcion1.Name = "pbOpcion1"
        Me.pbOpcion1.Size = New System.Drawing.Size(510, 58)
        Me.pbOpcion1.TabIndex = 11
        Me.pbOpcion1.TabStop = False
        '
        'pbAtras
        '
        Me.pbAtras.BackColor = System.Drawing.Color.Transparent
        Me.pbAtras.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cancelar
        Me.pbAtras.Location = New System.Drawing.Point(517, 486)
        Me.pbAtras.Name = "pbAtras"
        Me.pbAtras.Size = New System.Drawing.Size(105, 60)
        Me.pbAtras.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbAtras.TabIndex = 10
        Me.pbAtras.TabStop = False
        '
        'pbChecket3
        '
        Me.pbChecket3.BackColor = System.Drawing.Color.Red
        Me.pbChecket3.Location = New System.Drawing.Point(112, 374)
        Me.pbChecket3.Name = "pbChecket3"
        Me.pbChecket3.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket3.TabIndex = 9
        Me.pbChecket3.TabStop = False
        '
        'pbChecket2
        '
        Me.pbChecket2.BackColor = System.Drawing.Color.Red
        Me.pbChecket2.Location = New System.Drawing.Point(112, 276)
        Me.pbChecket2.Name = "pbChecket2"
        Me.pbChecket2.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket2.TabIndex = 8
        Me.pbChecket2.TabStop = False
        '
        'pbPreguntas
        '
        Me.pbPreguntas.BackColor = System.Drawing.Color.Transparent
        Me.pbPreguntas.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Pregunta1
        Me.pbPreguntas.Location = New System.Drawing.Point(45, 15)
        Me.pbPreguntas.Name = "pbPreguntas"
        Me.pbPreguntas.Size = New System.Drawing.Size(707, 125)
        Me.pbPreguntas.TabIndex = 7
        Me.pbPreguntas.TabStop = False
        '
        'pbChecket1
        '
        Me.pbChecket1.BackColor = System.Drawing.Color.Red
        Me.pbChecket1.Location = New System.Drawing.Point(112, 185)
        Me.pbChecket1.Name = "pbChecket1"
        Me.pbChecket1.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket1.TabIndex = 6
        Me.pbChecket1.TabStop = False
        '
        'FormPedirCuenta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(800, 600)
        Me.Controls.Add(Me.pbContinuar)
        Me.Controls.Add(Me.pbOpcion3)
        Me.Controls.Add(Me.pbOpcion2)
        Me.Controls.Add(Me.pbOpcion1)
        Me.Controls.Add(Me.pbAtras)
        Me.Controls.Add(Me.pbChecket3)
        Me.Controls.Add(Me.pbChecket2)
        Me.Controls.Add(Me.pbPreguntas)
        Me.Controls.Add(Me.pbChecket1)
        Me.Controls.Add(Me.GroupBox3)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "FormPedirCuenta"
        Me.Text = "Cobrar"
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAtras, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPreguntas, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents RadioButton6 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton7 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton8 As System.Windows.Forms.RadioButton
    Friend WithEvents pbChecket1 As System.Windows.Forms.PictureBox
    Friend WithEvents pbPreguntas As System.Windows.Forms.PictureBox
    Friend WithEvents pbChecket2 As System.Windows.Forms.PictureBox
    Friend WithEvents pbChecket3 As System.Windows.Forms.PictureBox
    Friend WithEvents pbAtras As System.Windows.Forms.PictureBox
    Friend WithEvents pbOpcion1 As System.Windows.Forms.PictureBox
    Friend WithEvents pbOpcion2 As System.Windows.Forms.PictureBox
    Friend WithEvents pbOpcion3 As System.Windows.Forms.PictureBox
    Friend WithEvents ilChecket As System.Windows.Forms.ImageList
    Friend WithEvents pbContinuar As System.Windows.Forms.PictureBox
End Class
