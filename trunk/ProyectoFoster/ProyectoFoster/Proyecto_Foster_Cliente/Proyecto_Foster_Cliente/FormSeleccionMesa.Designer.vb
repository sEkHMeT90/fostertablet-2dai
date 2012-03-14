<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormSeleccionMesa
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
        Me.btSeleccionar = New System.Windows.Forms.Button()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btSeleccionar
        '
        Me.btSeleccionar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btSeleccionar.Location = New System.Drawing.Point(575, 235)
        Me.btSeleccionar.Name = "btSeleccionar"
        Me.btSeleccionar.Size = New System.Drawing.Size(158, 73)
        Me.btSeleccionar.TabIndex = 0
        Me.btSeleccionar.Text = "Seleccionar"
        Me.btSeleccionar.UseVisualStyleBackColor = True
        '
        'ListBox1
        '
        Me.ListBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.ItemHeight = 24
        Me.ListBox1.Items.AddRange(New Object() {"mesa 1", "mesa 2", "mesa 3", "mesa 4", "mesa 5", "mesa 6"})
        Me.ListBox1.Location = New System.Drawing.Point(46, 64)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(523, 436)
        Me.ListBox1.TabIndex = 1
        '
        'pbCerrar
        '
        Me.pbCerrar.BackColor = System.Drawing.Color.Transparent
        Me.pbCerrar.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Cerrar
        Me.pbCerrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.pbCerrar.Location = New System.Drawing.Point(12, 526)
        Me.pbCerrar.Name = "pbCerrar"
        Me.pbCerrar.Size = New System.Drawing.Size(23, 24)
        Me.pbCerrar.TabIndex = 2
        Me.pbCerrar.TabStop = False
        '
        'FormSeleccionMesa
        '
        Me.AcceptButton = Me.btSeleccionar
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.imgFondo
        Me.ClientSize = New System.Drawing.Size(784, 562)
        Me.Controls.Add(Me.pbCerrar)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.btSeleccionar)
        Me.Location = New System.Drawing.Point(1, 1)
        Me.Name = "FormSeleccionMesa"
        Me.Text = "Form3"
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents btSeleccionar As System.Windows.Forms.Button
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
End Class
