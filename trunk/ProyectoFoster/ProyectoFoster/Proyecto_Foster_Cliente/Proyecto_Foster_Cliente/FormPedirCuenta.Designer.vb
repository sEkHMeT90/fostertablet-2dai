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
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.RadioButton5 = New System.Windows.Forms.RadioButton()
        Me.RadioButton3 = New System.Windows.Forms.RadioButton()
        Me.RadioButton4 = New System.Windows.Forms.RadioButton()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.RadioButton8 = New System.Windows.Forms.RadioButton()
        Me.RadioButton6 = New System.Windows.Forms.RadioButton()
        Me.RadioButton7 = New System.Windows.Forms.RadioButton()
        Me.pbChecket1 = New System.Windows.Forms.PictureBox()
        Me.pbPreguntas = New System.Windows.Forms.PictureBox()
        Me.pbChecket2 = New System.Windows.Forms.PictureBox()
        Me.pbChecket3 = New System.Windows.Forms.PictureBox()
        Me.pbAtras = New System.Windows.Forms.PictureBox()
        Me.pbOpcion1 = New System.Windows.Forms.PictureBox()
        Me.pbOpcion2 = New System.Windows.Forms.PictureBox()
        Me.pbOpcion3 = New System.Windows.Forms.PictureBox()
        Me.pbContinuar = New System.Windows.Forms.PictureBox()
        Me.ilChecket = New System.Windows.Forms.ImageList(Me.components)
        Me.ilPreguntas = New System.Windows.Forms.ImageList(Me.components)
        Me.ilOpcion1 = New System.Windows.Forms.ImageList(Me.components)
        Me.ilOpcion2 = New System.Windows.Forms.ImageList(Me.components)
        Me.ilOpcion3 = New System.Windows.Forms.ImageList(Me.components)
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPreguntas, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAtras, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbOpcion3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.RadioButton5)
        Me.GroupBox2.Controls.Add(Me.RadioButton3)
        Me.GroupBox2.Controls.Add(Me.RadioButton4)
        Me.GroupBox2.Location = New System.Drawing.Point(632, 281)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(114, 99)
        Me.GroupBox2.TabIndex = 4
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Tipo de pago"
        '
        'RadioButton5
        '
        Me.RadioButton5.AutoSize = True
        Me.RadioButton5.Location = New System.Drawing.Point(6, 65)
        Me.RadioButton5.Name = "RadioButton5"
        Me.RadioButton5.Size = New System.Drawing.Size(108, 17)
        Me.RadioButton5.TabIndex = 2
        Me.RadioButton5.TabStop = True
        Me.RadioButton5.Text = "Tarjeta y metalico"
        Me.RadioButton5.UseVisualStyleBackColor = True
        '
        'RadioButton3
        '
        Me.RadioButton3.AutoSize = True
        Me.RadioButton3.Location = New System.Drawing.Point(6, 42)
        Me.RadioButton3.Name = "RadioButton3"
        Me.RadioButton3.Size = New System.Drawing.Size(58, 17)
        Me.RadioButton3.TabIndex = 1
        Me.RadioButton3.TabStop = True
        Me.RadioButton3.Text = "Tarjeta"
        Me.RadioButton3.UseVisualStyleBackColor = True
        '
        'RadioButton4
        '
        Me.RadioButton4.AutoSize = True
        Me.RadioButton4.Location = New System.Drawing.Point(6, 19)
        Me.RadioButton4.Name = "RadioButton4"
        Me.RadioButton4.Size = New System.Drawing.Size(65, 17)
        Me.RadioButton4.TabIndex = 0
        Me.RadioButton4.TabStop = True
        Me.RadioButton4.Text = "Metalico"
        Me.RadioButton4.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.RadioButton8)
        Me.GroupBox3.Controls.Add(Me.RadioButton6)
        Me.GroupBox3.Controls.Add(Me.RadioButton7)
        Me.GroupBox3.Location = New System.Drawing.Point(632, 182)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(114, 93)
        Me.GroupBox3.TabIndex = 5
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Metodo de pago"
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
        'pbChecket1
        '
        Me.pbChecket1.BackColor = System.Drawing.Color.Red
        Me.pbChecket1.Location = New System.Drawing.Point(112, 185)
        Me.pbChecket1.Name = "pbChecket1"
        Me.pbChecket1.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket1.TabIndex = 6
        Me.pbChecket1.TabStop = False
        '
        'pbPreguntas
        '
        Me.pbPreguntas.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.pbPreguntas.Location = New System.Drawing.Point(45, 15)
        Me.pbPreguntas.Name = "pbPreguntas"
        Me.pbPreguntas.Size = New System.Drawing.Size(701, 124)
        Me.pbPreguntas.TabIndex = 7
        Me.pbPreguntas.TabStop = False
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
        'pbChecket3
        '
        Me.pbChecket3.BackColor = System.Drawing.Color.Red
        Me.pbChecket3.Location = New System.Drawing.Point(112, 374)
        Me.pbChecket3.Name = "pbChecket3"
        Me.pbChecket3.Size = New System.Drawing.Size(58, 58)
        Me.pbChecket3.TabIndex = 9
        Me.pbChecket3.TabStop = False
        '
        'pbAtras
        '
        Me.pbAtras.BackColor = System.Drawing.Color.DarkOliveGreen
        Me.pbAtras.Location = New System.Drawing.Point(506, 492)
        Me.pbAtras.Name = "pbAtras"
        Me.pbAtras.Size = New System.Drawing.Size(105, 58)
        Me.pbAtras.TabIndex = 10
        Me.pbAtras.TabStop = False
        '
        'pbOpcion1
        '
        Me.pbOpcion1.BackColor = System.Drawing.Color.Orange
        Me.pbOpcion1.Location = New System.Drawing.Point(202, 185)
        Me.pbOpcion1.Name = "pbOpcion1"
        Me.pbOpcion1.Size = New System.Drawing.Size(409, 57)
        Me.pbOpcion1.TabIndex = 11
        Me.pbOpcion1.TabStop = False
        '
        'pbOpcion2
        '
        Me.pbOpcion2.BackColor = System.Drawing.Color.Orange
        Me.pbOpcion2.Location = New System.Drawing.Point(202, 277)
        Me.pbOpcion2.Name = "pbOpcion2"
        Me.pbOpcion2.Size = New System.Drawing.Size(409, 57)
        Me.pbOpcion2.TabIndex = 12
        Me.pbOpcion2.TabStop = False
        '
        'pbOpcion3
        '
        Me.pbOpcion3.BackColor = System.Drawing.Color.Orange
        Me.pbOpcion3.Location = New System.Drawing.Point(202, 374)
        Me.pbOpcion3.Name = "pbOpcion3"
        Me.pbOpcion3.Size = New System.Drawing.Size(409, 57)
        Me.pbOpcion3.TabIndex = 13
        Me.pbOpcion3.TabStop = False
        '
        'pbContinuar
        '
        Me.pbContinuar.BackColor = System.Drawing.Color.GreenYellow
        Me.pbContinuar.Location = New System.Drawing.Point(641, 492)
        Me.pbContinuar.Name = "pbContinuar"
        Me.pbContinuar.Size = New System.Drawing.Size(105, 58)
        Me.pbContinuar.TabIndex = 14
        Me.pbContinuar.TabStop = False
        '
        'ilChecket
        '
        Me.ilChecket.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilChecket.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilChecket.TransparentColor = System.Drawing.Color.Transparent
        '
        'ilPreguntas
        '
        Me.ilPreguntas.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilPreguntas.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilPreguntas.TransparentColor = System.Drawing.Color.Transparent
        '
        'ilOpcion1
        '
        Me.ilOpcion1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilOpcion1.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilOpcion1.TransparentColor = System.Drawing.Color.Transparent
        '
        'ilOpcion2
        '
        Me.ilOpcion2.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilOpcion2.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilOpcion2.TransparentColor = System.Drawing.Color.Transparent
        '
        'ilOpcion3
        '
        Me.ilOpcion3.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilOpcion3.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilOpcion3.TransparentColor = System.Drawing.Color.Transparent
        '
        'FormPedirCuenta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(784, 562)
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
        Me.Controls.Add(Me.GroupBox2)
        Me.Name = "FormPedirCuenta"
        Me.Text = "Cobrar"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.pbChecket1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPreguntas, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbChecket3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAtras, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbOpcion3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents RadioButton5 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton3 As System.Windows.Forms.RadioButton
    Friend WithEvents RadioButton4 As System.Windows.Forms.RadioButton
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
    Friend WithEvents pbContinuar As System.Windows.Forms.PictureBox
    Friend WithEvents ilChecket As System.Windows.Forms.ImageList
    Friend WithEvents ilPreguntas As System.Windows.Forms.ImageList
    Friend WithEvents ilOpcion1 As System.Windows.Forms.ImageList
    Friend WithEvents ilOpcion2 As System.Windows.Forms.ImageList
    Friend WithEvents ilOpcion3 As System.Windows.Forms.ImageList
End Class
