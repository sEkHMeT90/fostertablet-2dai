<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormListaCarta
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FormListaCarta))
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.pbPublicidad = New System.Windows.Forms.PictureBox()
        Me.pbPlatos = New System.Windows.Forms.PictureBox()
        Me.pbBebidas = New System.Windows.Forms.PictureBox()
        Me.pbPostres = New System.Windows.Forms.PictureBox()
        Me.pbEspeciales = New System.Windows.Forms.PictureBox()
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbComensalSeleccionado = New System.Windows.Forms.PictureBox()
        Me.pbCambiarComensal = New System.Windows.Forms.PictureBox()
        Me.ilIconosComensales = New System.Windows.Forms.ImageList(Me.components)
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPublicidad, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPlatos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbBebidas, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPostres, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbEspeciales, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbComensalSeleccionado, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCambiarComensal, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(12, 564)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 2
        Me.pbCerrar.TabStop = False
        '
        'pbCartel
        '
        Me.pbCartel.BackColor = System.Drawing.Color.Transparent
        Me.pbCartel.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.cartel_carta2
        Me.pbCartel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.pbCartel.Location = New System.Drawing.Point(2, -2)
        Me.pbCartel.Name = "pbCartel"
        Me.pbCartel.Size = New System.Drawing.Size(795, 202)
        Me.pbCartel.TabIndex = 3
        Me.pbCartel.TabStop = False
        '
        'pbPublicidad
        '
        Me.pbPublicidad.BackColor = System.Drawing.Color.White
        Me.pbPublicidad.Location = New System.Drawing.Point(600, 206)
        Me.pbPublicidad.Name = "pbPublicidad"
        Me.pbPublicidad.Size = New System.Drawing.Size(172, 382)
        Me.pbPublicidad.TabIndex = 4
        Me.pbPublicidad.TabStop = False
        '
        'pbPlatos
        '
        Me.pbPlatos.BackColor = System.Drawing.Color.Transparent
        Me.pbPlatos.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbPlatos.Location = New System.Drawing.Point(12, 206)
        Me.pbPlatos.Name = "pbPlatos"
        Me.pbPlatos.Size = New System.Drawing.Size(271, 166)
        Me.pbPlatos.TabIndex = 5
        Me.pbPlatos.TabStop = False
        '
        'pbBebidas
        '
        Me.pbBebidas.BackColor = System.Drawing.Color.Transparent
        Me.pbBebidas.BackgroundImage = CType(resources.GetObject("pbBebidas.BackgroundImage"), System.Drawing.Image)
        Me.pbBebidas.Location = New System.Drawing.Point(313, 206)
        Me.pbBebidas.Name = "pbBebidas"
        Me.pbBebidas.Size = New System.Drawing.Size(271, 166)
        Me.pbBebidas.TabIndex = 6
        Me.pbBebidas.TabStop = False
        '
        'pbPostres
        '
        Me.pbPostres.BackColor = System.Drawing.Color.Transparent
        Me.pbPostres.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Postres
        Me.pbPostres.Location = New System.Drawing.Point(12, 392)
        Me.pbPostres.Name = "pbPostres"
        Me.pbPostres.Size = New System.Drawing.Size(271, 166)
        Me.pbPostres.TabIndex = 7
        Me.pbPostres.TabStop = False
        '
        'pbEspeciales
        '
        Me.pbEspeciales.BackColor = System.Drawing.Color.Transparent
        Me.pbEspeciales.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Especiales
        Me.pbEspeciales.Location = New System.Drawing.Point(313, 392)
        Me.pbEspeciales.Name = "pbEspeciales"
        Me.pbEspeciales.Size = New System.Drawing.Size(271, 166)
        Me.pbEspeciales.TabIndex = 8
        Me.pbEspeciales.TabStop = False
        '
        'pbAyuda
        '
        Me.pbAyuda.BackColor = System.Drawing.Color.Transparent
        Me.pbAyuda.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.ayuda
        Me.pbAyuda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbAyuda.Location = New System.Drawing.Point(709, 12)
        Me.pbAyuda.Name = "pbAyuda"
        Me.pbAyuda.Size = New System.Drawing.Size(63, 65)
        Me.pbAyuda.TabIndex = 9
        Me.pbAyuda.TabStop = False
        '
        'pbComensalSeleccionado
        '
        Me.pbComensalSeleccionado.Location = New System.Drawing.Point(48, 39)
        Me.pbComensalSeleccionado.Name = "pbComensalSeleccionado"
        Me.pbComensalSeleccionado.Size = New System.Drawing.Size(100, 104)
        Me.pbComensalSeleccionado.TabIndex = 10
        Me.pbComensalSeleccionado.TabStop = False
        '
        'pbCambiarComensal
        '
        Me.pbCambiarComensal.Location = New System.Drawing.Point(183, 39)
        Me.pbCambiarComensal.Name = "pbCambiarComensal"
        Me.pbCambiarComensal.Size = New System.Drawing.Size(100, 104)
        Me.pbCambiarComensal.TabIndex = 11
        Me.pbCambiarComensal.TabStop = False
        '
        'ilIconosComensales
        '
        Me.ilIconosComensales.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilIconosComensales.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilIconosComensales.TransparentColor = System.Drawing.Color.Transparent
        '
        'FormListaCarta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(800, 600)
        Me.Controls.Add(Me.pbCambiarComensal)
        Me.Controls.Add(Me.pbComensalSeleccionado)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.pbAyuda)
        Me.Controls.Add(Me.pbEspeciales)
        Me.Controls.Add(Me.pbPostres)
        Me.Controls.Add(Me.pbBebidas)
        Me.Controls.Add(Me.pbPlatos)
        Me.Controls.Add(Me.pbPublicidad)
        Me.Controls.Add(Me.pbCartel)
        Me.DoubleBuffered = True
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Location = New System.Drawing.Point(1, 1)
        Me.Name = "FormListaCarta"
        Me.Text = "FormListaCarta"
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPublicidad, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPlatos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbBebidas, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPostres, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbEspeciales, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbComensalSeleccionado, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCambiarComensal, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents pbPublicidad As System.Windows.Forms.PictureBox
    Friend WithEvents pbPlatos As System.Windows.Forms.PictureBox
    Friend WithEvents pbBebidas As System.Windows.Forms.PictureBox
    Friend WithEvents pbPostres As System.Windows.Forms.PictureBox
    Friend WithEvents pbEspeciales As System.Windows.Forms.PictureBox
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbComensalSeleccionado As System.Windows.Forms.PictureBox
    Friend WithEvents pbCambiarComensal As System.Windows.Forms.PictureBox
    Friend WithEvents ilIconosComensales As System.Windows.Forms.ImageList
End Class
