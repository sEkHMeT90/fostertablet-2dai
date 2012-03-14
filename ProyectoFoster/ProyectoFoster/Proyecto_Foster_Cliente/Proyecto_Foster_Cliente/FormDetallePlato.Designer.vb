<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormDetallePlato
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
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.pbPedir = New System.Windows.Forms.PictureBox()
        Me.pbVolver = New System.Windows.Forms.PictureBox()
        Me.PictureBox2 = New System.Windows.Forms.PictureBox()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPedir, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.BackColor = System.Drawing.Color.White
        Me.PictureBox1.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.PictureBox1.InitialImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.PictureBox1.Location = New System.Drawing.Point(12, 14)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(306, 265)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'RichTextBox1
        '
        Me.RichTextBox1.BackColor = System.Drawing.Color.Linen
        Me.RichTextBox1.Font = New System.Drawing.Font("Trebuchet MS", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RichTextBox1.Location = New System.Drawing.Point(340, 208)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(412, 296)
        Me.RichTextBox1.TabIndex = 1
        Me.RichTextBox1.Text = "Producto:" & Global.Microsoft.VisualBasic.ChrW(10) & "asldaslkdjalsd" & Global.Microsoft.VisualBasic.ChrW(10) & "asdfñjkashdf" & Global.Microsoft.VisualBasic.ChrW(10) & "asodhf" & Global.Microsoft.VisualBasic.ChrW(10) & "ADSHF" & Global.Microsoft.VisualBasic.ChrW(10) & "ASODHGASD" & Global.Microsoft.VisualBasic.ChrW(10) & "GASHF" & Global.Microsoft.VisualBasic.ChrW(10) & "DK" & Global.Microsoft.VisualBasic.ChrW(10) & "DA"
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(12, 560)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 20
        Me.pbCerrar.TabStop = False
        '
        'pbAyuda
        '
        Me.pbAyuda.BackColor = System.Drawing.Color.Transparent
        Me.pbAyuda.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.ayuda
        Me.pbAyuda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbAyuda.Location = New System.Drawing.Point(701, 14)
        Me.pbAyuda.Name = "pbAyuda"
        Me.pbAyuda.Size = New System.Drawing.Size(63, 65)
        Me.pbAyuda.TabIndex = 22
        Me.pbAyuda.TabStop = False
        '
        'pbCartel
        '
        Me.pbCartel.BackColor = System.Drawing.Color.Transparent
        Me.pbCartel.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.cartel_carta2
        Me.pbCartel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.pbCartel.Location = New System.Drawing.Point(-6, 0)
        Me.pbCartel.Name = "pbCartel"
        Me.pbCartel.Size = New System.Drawing.Size(795, 202)
        Me.pbCartel.TabIndex = 21
        Me.pbCartel.TabStop = False
        '
        'pbPedir
        '
        Me.pbPedir.BackColor = System.Drawing.Color.Transparent
        Me.pbPedir.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbPedir.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Aceptar
        Me.pbPedir.Location = New System.Drawing.Point(658, 524)
        Me.pbPedir.Name = "pbPedir"
        Me.pbPedir.Size = New System.Drawing.Size(105, 60)
        Me.pbPedir.TabIndex = 23
        Me.pbPedir.TabStop = False
        '
        'pbVolver
        '
        Me.pbVolver.BackColor = System.Drawing.Color.Transparent
        Me.pbVolver.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cancelar
        Me.pbVolver.Location = New System.Drawing.Point(538, 524)
        Me.pbVolver.Name = "pbVolver"
        Me.pbVolver.Size = New System.Drawing.Size(105, 60)
        Me.pbVolver.TabIndex = 25
        Me.pbVolver.TabStop = False
        '
        'PictureBox2
        '
        Me.PictureBox2.Location = New System.Drawing.Point(53, 348)
        Me.PictureBox2.Name = "PictureBox2"
        Me.PictureBox2.Size = New System.Drawing.Size(230, 86)
        Me.PictureBox2.TabIndex = 26
        Me.PictureBox2.TabStop = False
        '
        'FormDetallePlato
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(784, 596)
        Me.Controls.Add(Me.PictureBox2)
        Me.Controls.Add(Me.pbVolver)
        Me.Controls.Add(Me.pbPedir)
        Me.Controls.Add(Me.RichTextBox1)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.pbAyuda)
        Me.Controls.Add(Me.pbCartel)
        Me.DoubleBuffered = True
        Me.Name = "FormDetallePlato"
        Me.Text = "FormDetallePlato"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPedir, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents pbPedir As System.Windows.Forms.PictureBox
    Friend WithEvents pbVolver As System.Windows.Forms.PictureBox
    Friend WithEvents PictureBox2 As System.Windows.Forms.PictureBox
End Class
