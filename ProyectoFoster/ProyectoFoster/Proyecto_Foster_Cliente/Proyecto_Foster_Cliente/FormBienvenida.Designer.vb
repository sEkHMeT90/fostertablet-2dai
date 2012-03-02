<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormBienvenida
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FormBienvenida))
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.pbPublicidad = New System.Windows.Forms.PictureBox()
        Me.pbListo = New System.Windows.Forms.PictureBox()
        Me.pbBotonUp = New System.Windows.Forms.PictureBox()
        Me.pbBotonDown = New System.Windows.Forms.PictureBox()
        Me.pbContador = New System.Windows.Forms.PictureBox()
        Me.ilListaImgContador = New System.Windows.Forms.ImageList(Me.components)
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPublicidad, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbListo, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbBotonUp, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbBotonDown, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbContador, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'pbAyuda
        '
        Me.pbAyuda.BackColor = System.Drawing.Color.Transparent
        Me.pbAyuda.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.ayuda
        Me.pbAyuda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbAyuda.Location = New System.Drawing.Point(681, 38)
        Me.pbAyuda.Name = "pbAyuda"
        Me.pbAyuda.Size = New System.Drawing.Size(63, 65)
        Me.pbAyuda.TabIndex = 0
        Me.pbAyuda.TabStop = False
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(12, 564)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 1
        Me.pbCerrar.TabStop = False
        '
        'pbCartel
        '
        Me.pbCartel.BackColor = System.Drawing.Color.Transparent
        Me.pbCartel.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.cartel_bienvenida
        Me.pbCartel.Location = New System.Drawing.Point(12, 12)
        Me.pbCartel.Name = "pbCartel"
        Me.pbCartel.Size = New System.Drawing.Size(760, 122)
        Me.pbCartel.TabIndex = 2
        Me.pbCartel.TabStop = False
        '
        'pbPublicidad
        '
        Me.pbPublicidad.BackColor = System.Drawing.Color.White
        Me.pbPublicidad.Location = New System.Drawing.Point(600, 154)
        Me.pbPublicidad.Name = "pbPublicidad"
        Me.pbPublicidad.Size = New System.Drawing.Size(172, 403)
        Me.pbPublicidad.TabIndex = 3
        Me.pbPublicidad.TabStop = False
        '
        'pbListo
        '
        Me.pbListo.BackColor = System.Drawing.Color.Transparent
        Me.pbListo.BackgroundImage = CType(resources.GetObject("pbListo.BackgroundImage"), System.Drawing.Image)
        Me.pbListo.Location = New System.Drawing.Point(395, 275)
        Me.pbListo.Name = "pbListo"
        Me.pbListo.Size = New System.Drawing.Size(174, 174)
        Me.pbListo.TabIndex = 4
        Me.pbListo.TabStop = False
        '
        'pbBotonUp
        '
        Me.pbBotonUp.BackColor = System.Drawing.Color.Transparent
        Me.pbBotonUp.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Up
        Me.pbBotonUp.Location = New System.Drawing.Point(254, 246)
        Me.pbBotonUp.Name = "pbBotonUp"
        Me.pbBotonUp.Size = New System.Drawing.Size(116, 116)
        Me.pbBotonUp.TabIndex = 5
        Me.pbBotonUp.TabStop = False
        '
        'pbBotonDown
        '
        Me.pbBotonDown.BackColor = System.Drawing.Color.Transparent
        Me.pbBotonDown.BackgroundImage = CType(resources.GetObject("pbBotonDown.BackgroundImage"), System.Drawing.Image)
        Me.pbBotonDown.Location = New System.Drawing.Point(254, 368)
        Me.pbBotonDown.Name = "pbBotonDown"
        Me.pbBotonDown.Size = New System.Drawing.Size(116, 116)
        Me.pbBotonDown.TabIndex = 6
        Me.pbBotonDown.TabStop = False
        '
        'pbContador
        '
        Me.pbContador.BackColor = System.Drawing.Color.Transparent
        Me.pbContador.Location = New System.Drawing.Point(56, 246)
        Me.pbContador.Name = "pbContador"
        Me.pbContador.Size = New System.Drawing.Size(178, 238)
        Me.pbContador.TabIndex = 7
        Me.pbContador.TabStop = False
        '
        'ilListaImgContador
        '
        Me.ilListaImgContador.ImageStream = CType(resources.GetObject("ilListaImgContador.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ilListaImgContador.TransparentColor = System.Drawing.Color.Transparent
        Me.ilListaImgContador.Images.SetKeyName(0, "Contador_1.png")
        Me.ilListaImgContador.Images.SetKeyName(1, "Contador_2.png")
        Me.ilListaImgContador.Images.SetKeyName(2, "Contador_3.png")
        Me.ilListaImgContador.Images.SetKeyName(3, "Contador_4.png")
        Me.ilListaImgContador.Images.SetKeyName(4, "Contador_5.png")
        Me.ilListaImgContador.Images.SetKeyName(5, "Contador_6.png")
        '
        'FormBienvenida
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.imgFondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(800, 600)
        Me.Controls.Add(Me.pbContador)
        Me.Controls.Add(Me.pbBotonDown)
        Me.Controls.Add(Me.pbBotonUp)
        Me.Controls.Add(Me.pbListo)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.pbAyuda)
        Me.Controls.Add(Me.pbCartel)
        Me.Controls.Add(Me.pbPublicidad)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Location = New System.Drawing.Point(1, 1)
        Me.Name = "FormBienvenida"
        Me.Text = "Form1"
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPublicidad, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbListo, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbBotonUp, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbBotonDown, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbContador, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents pbPublicidad As System.Windows.Forms.PictureBox
    Friend WithEvents pbListo As System.Windows.Forms.PictureBox
    Friend WithEvents pbBotonUp As System.Windows.Forms.PictureBox
    Friend WithEvents pbBotonDown As System.Windows.Forms.PictureBox
    Friend WithEvents pbContador As System.Windows.Forms.PictureBox
    Friend WithEvents ilListaImgContador As System.Windows.Forms.ImageList

End Class
