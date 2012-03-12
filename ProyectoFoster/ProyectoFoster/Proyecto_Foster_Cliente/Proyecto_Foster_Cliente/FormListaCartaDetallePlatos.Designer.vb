<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormListaCartaDetallePlatos
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
        Me.pbCambiarComensal = New System.Windows.Forms.PictureBox()
        Me.pbComensalSeleccionado = New System.Windows.Forms.PictureBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.ilIconosComensales = New System.Windows.Forms.ImageList(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato = New System.Windows.Forms.Label()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato4 = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato4 = New System.Windows.Forms.Label()
        Me.Panel3 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato2 = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato2 = New System.Windows.Forms.Label()
        Me.Panel4 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato5 = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato5 = New System.Windows.Forms.Label()
        Me.Panel5 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato3 = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato3 = New System.Windows.Forms.Label()
        Me.Panel6 = New System.Windows.Forms.Panel()
        Me.pbImegenPlato6 = New System.Windows.Forms.PictureBox()
        Me.lbNombrePlato6 = New System.Windows.Forms.Label()
        Me.pbPrevious = New System.Windows.Forms.PictureBox()
        Me.pbNext = New System.Windows.Forms.PictureBox()
        CType(Me.pbCambiarComensal, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbComensalSeleccionado, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel1.SuspendLayout()
        CType(Me.pbImegenPlato, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel2.SuspendLayout()
        CType(Me.pbImegenPlato4, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel3.SuspendLayout()
        CType(Me.pbImegenPlato2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel4.SuspendLayout()
        CType(Me.pbImegenPlato5, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel5.SuspendLayout()
        CType(Me.pbImegenPlato3, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel6.SuspendLayout()
        CType(Me.pbImegenPlato6, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPrevious, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbNext, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'pbCambiarComensal
        '
        Me.pbCambiarComensal.Location = New System.Drawing.Point(176, 27)
        Me.pbCambiarComensal.Name = "pbCambiarComensal"
        Me.pbCambiarComensal.Size = New System.Drawing.Size(100, 104)
        Me.pbCambiarComensal.TabIndex = 17
        Me.pbCambiarComensal.TabStop = False
        '
        'pbComensalSeleccionado
        '
        Me.pbComensalSeleccionado.Location = New System.Drawing.Point(41, 27)
        Me.pbComensalSeleccionado.Name = "pbComensalSeleccionado"
        Me.pbComensalSeleccionado.Size = New System.Drawing.Size(100, 104)
        Me.pbComensalSeleccionado.TabIndex = 16
        Me.pbComensalSeleccionado.TabStop = False
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(12, 554)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 12
        Me.pbCerrar.TabStop = False
        '
        'pbAyuda
        '
        Me.pbAyuda.BackColor = System.Drawing.Color.Transparent
        Me.pbAyuda.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.ayuda
        Me.pbAyuda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbAyuda.Location = New System.Drawing.Point(705, 12)
        Me.pbAyuda.Name = "pbAyuda"
        Me.pbAyuda.Size = New System.Drawing.Size(63, 65)
        Me.pbAyuda.TabIndex = 15
        Me.pbAyuda.TabStop = False
        '
        'pbCartel
        '
        Me.pbCartel.BackColor = System.Drawing.Color.Transparent
        Me.pbCartel.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.cartel_carta2
        Me.pbCartel.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.pbCartel.Location = New System.Drawing.Point(-5, 1)
        Me.pbCartel.Name = "pbCartel"
        Me.pbCartel.Size = New System.Drawing.Size(795, 202)
        Me.pbCartel.TabIndex = 13
        Me.pbCartel.TabStop = False
        '
        'ilIconosComensales
        '
        Me.ilIconosComensales.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit
        Me.ilIconosComensales.ImageSize = New System.Drawing.Size(16, 16)
        Me.ilIconosComensales.TransparentColor = System.Drawing.Color.Transparent
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Transparent
        Me.Panel1.Controls.Add(Me.pbImegenPlato)
        Me.Panel1.Controls.Add(Me.lbNombrePlato)
        Me.Panel1.Location = New System.Drawing.Point(96, 212)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(180, 180)
        Me.Panel1.TabIndex = 18
        '
        'pbImegenPlato
        '
        Me.pbImegenPlato.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato.Location = New System.Drawing.Point(0, 3)
        Me.pbImegenPlato.Name = "pbImegenPlato"
        Me.pbImegenPlato.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato.TabIndex = 1
        Me.pbImegenPlato.TabStop = False
        '
        'lbNombrePlato
        '
        Me.lbNombrePlato.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato.Location = New System.Drawing.Point(3, 153)
        Me.lbNombrePlato.Name = "lbNombrePlato"
        Me.lbNombrePlato.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato.TabIndex = 0
        Me.lbNombrePlato.Text = "Nombre"
        Me.lbNombrePlato.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.Transparent
        Me.Panel2.Controls.Add(Me.pbImegenPlato4)
        Me.Panel2.Controls.Add(Me.lbNombrePlato4)
        Me.Panel2.Location = New System.Drawing.Point(96, 398)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(180, 180)
        Me.Panel2.TabIndex = 19
        '
        'pbImegenPlato4
        '
        Me.pbImegenPlato4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato4.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato4.Location = New System.Drawing.Point(1, 3)
        Me.pbImegenPlato4.Name = "pbImegenPlato4"
        Me.pbImegenPlato4.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato4.TabIndex = 3
        Me.pbImegenPlato4.TabStop = False
        '
        'lbNombrePlato4
        '
        Me.lbNombrePlato4.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato4.Location = New System.Drawing.Point(4, 153)
        Me.lbNombrePlato4.Name = "lbNombrePlato4"
        Me.lbNombrePlato4.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato4.TabIndex = 2
        Me.lbNombrePlato4.Text = "Nombre"
        Me.lbNombrePlato4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Panel3
        '
        Me.Panel3.BackColor = System.Drawing.Color.Transparent
        Me.Panel3.Controls.Add(Me.pbImegenPlato2)
        Me.Panel3.Controls.Add(Me.lbNombrePlato2)
        Me.Panel3.Location = New System.Drawing.Point(303, 209)
        Me.Panel3.Name = "Panel3"
        Me.Panel3.Size = New System.Drawing.Size(180, 180)
        Me.Panel3.TabIndex = 20
        '
        'pbImegenPlato2
        '
        Me.pbImegenPlato2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato2.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato2.Location = New System.Drawing.Point(1, 3)
        Me.pbImegenPlato2.Name = "pbImegenPlato2"
        Me.pbImegenPlato2.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato2.TabIndex = 3
        Me.pbImegenPlato2.TabStop = False
        '
        'lbNombrePlato2
        '
        Me.lbNombrePlato2.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato2.Location = New System.Drawing.Point(4, 153)
        Me.lbNombrePlato2.Name = "lbNombrePlato2"
        Me.lbNombrePlato2.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato2.TabIndex = 2
        Me.lbNombrePlato2.Text = "Nombre"
        Me.lbNombrePlato2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Panel4
        '
        Me.Panel4.BackColor = System.Drawing.Color.Transparent
        Me.Panel4.Controls.Add(Me.pbImegenPlato5)
        Me.Panel4.Controls.Add(Me.lbNombrePlato5)
        Me.Panel4.Location = New System.Drawing.Point(303, 398)
        Me.Panel4.Name = "Panel4"
        Me.Panel4.Size = New System.Drawing.Size(180, 180)
        Me.Panel4.TabIndex = 19
        '
        'pbImegenPlato5
        '
        Me.pbImegenPlato5.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato5.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato5.Location = New System.Drawing.Point(1, 3)
        Me.pbImegenPlato5.Name = "pbImegenPlato5"
        Me.pbImegenPlato5.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato5.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato5.TabIndex = 3
        Me.pbImegenPlato5.TabStop = False
        '
        'lbNombrePlato5
        '
        Me.lbNombrePlato5.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato5.Location = New System.Drawing.Point(4, 153)
        Me.lbNombrePlato5.Name = "lbNombrePlato5"
        Me.lbNombrePlato5.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato5.TabIndex = 2
        Me.lbNombrePlato5.Text = "Nombre"
        Me.lbNombrePlato5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Panel5
        '
        Me.Panel5.BackColor = System.Drawing.Color.Transparent
        Me.Panel5.Controls.Add(Me.pbImegenPlato3)
        Me.Panel5.Controls.Add(Me.lbNombrePlato3)
        Me.Panel5.Location = New System.Drawing.Point(507, 212)
        Me.Panel5.Name = "Panel5"
        Me.Panel5.Size = New System.Drawing.Size(180, 180)
        Me.Panel5.TabIndex = 19
        '
        'pbImegenPlato3
        '
        Me.pbImegenPlato3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato3.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato3.Location = New System.Drawing.Point(1, 3)
        Me.pbImegenPlato3.Name = "pbImegenPlato3"
        Me.pbImegenPlato3.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato3.TabIndex = 3
        Me.pbImegenPlato3.TabStop = False
        '
        'lbNombrePlato3
        '
        Me.lbNombrePlato3.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato3.Location = New System.Drawing.Point(4, 153)
        Me.lbNombrePlato3.Name = "lbNombrePlato3"
        Me.lbNombrePlato3.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato3.TabIndex = 2
        Me.lbNombrePlato3.Text = "Nombre"
        Me.lbNombrePlato3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'Panel6
        '
        Me.Panel6.BackColor = System.Drawing.Color.Transparent
        Me.Panel6.Controls.Add(Me.pbImegenPlato6)
        Me.Panel6.Controls.Add(Me.lbNombrePlato6)
        Me.Panel6.Location = New System.Drawing.Point(507, 398)
        Me.Panel6.Name = "Panel6"
        Me.Panel6.Size = New System.Drawing.Size(180, 180)
        Me.Panel6.TabIndex = 21
        '
        'pbImegenPlato6
        '
        Me.pbImegenPlato6.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbImegenPlato6.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.pbImegenPlato6.Location = New System.Drawing.Point(1, 3)
        Me.pbImegenPlato6.Name = "pbImegenPlato6"
        Me.pbImegenPlato6.Size = New System.Drawing.Size(177, 147)
        Me.pbImegenPlato6.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.pbImegenPlato6.TabIndex = 3
        Me.pbImegenPlato6.TabStop = False
        '
        'lbNombrePlato6
        '
        Me.lbNombrePlato6.Font = New System.Drawing.Font("Miramonte", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbNombrePlato6.Location = New System.Drawing.Point(4, 153)
        Me.lbNombrePlato6.Name = "lbNombrePlato6"
        Me.lbNombrePlato6.Size = New System.Drawing.Size(176, 24)
        Me.lbNombrePlato6.TabIndex = 2
        Me.lbNombrePlato6.Text = "Nombre"
        Me.lbNombrePlato6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'pbPrevious
        '
        Me.pbPrevious.Location = New System.Drawing.Point(12, 333)
        Me.pbPrevious.Name = "pbPrevious"
        Me.pbPrevious.Size = New System.Drawing.Size(46, 121)
        Me.pbPrevious.TabIndex = 22
        Me.pbPrevious.TabStop = False
        '
        'pbNext
        '
        Me.pbNext.Location = New System.Drawing.Point(722, 333)
        Me.pbNext.Name = "pbNext"
        Me.pbNext.Size = New System.Drawing.Size(46, 121)
        Me.pbNext.TabIndex = 23
        Me.pbNext.TabStop = False
        '
        'FormListaCartaDetallePlatos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(790, 590)
        Me.Controls.Add(Me.pbNext)
        Me.Controls.Add(Me.pbPrevious)
        Me.Controls.Add(Me.Panel6)
        Me.Controls.Add(Me.Panel5)
        Me.Controls.Add(Me.Panel4)
        Me.Controls.Add(Me.Panel3)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.pbCambiarComensal)
        Me.Controls.Add(Me.pbComensalSeleccionado)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.pbAyuda)
        Me.Controls.Add(Me.pbCartel)
        Me.DoubleBuffered = True
        Me.Name = "FormListaCartaDetallePlatos"
        Me.Text = "FormListaCataDetalle"
        CType(Me.pbCambiarComensal, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbComensalSeleccionado, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel1.ResumeLayout(False)
        CType(Me.pbImegenPlato, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel2.ResumeLayout(False)
        CType(Me.pbImegenPlato4, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel3.ResumeLayout(False)
        CType(Me.pbImegenPlato2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel4.ResumeLayout(False)
        CType(Me.pbImegenPlato5, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel5.ResumeLayout(False)
        CType(Me.pbImegenPlato3, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel6.ResumeLayout(False)
        CType(Me.pbImegenPlato6, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbPrevious, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbNext, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents pbCambiarComensal As System.Windows.Forms.PictureBox
    Friend WithEvents pbComensalSeleccionado As System.Windows.Forms.PictureBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents ilIconosComensales As System.Windows.Forms.ImageList
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents pbImegenPlato As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato As System.Windows.Forms.Label
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents Panel3 As System.Windows.Forms.Panel
    Friend WithEvents Panel4 As System.Windows.Forms.Panel
    Friend WithEvents Panel5 As System.Windows.Forms.Panel
    Friend WithEvents Panel6 As System.Windows.Forms.Panel
    Friend WithEvents pbPrevious As System.Windows.Forms.PictureBox
    Friend WithEvents pbNext As System.Windows.Forms.PictureBox
    Friend WithEvents pbImegenPlato4 As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato4 As System.Windows.Forms.Label
    Friend WithEvents pbImegenPlato2 As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato2 As System.Windows.Forms.Label
    Friend WithEvents pbImegenPlato5 As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato5 As System.Windows.Forms.Label
    Friend WithEvents pbImegenPlato3 As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato3 As System.Windows.Forms.Label
    Friend WithEvents pbImegenPlato6 As System.Windows.Forms.PictureBox
    Friend WithEvents lbNombrePlato6 As System.Windows.Forms.Label
End Class
