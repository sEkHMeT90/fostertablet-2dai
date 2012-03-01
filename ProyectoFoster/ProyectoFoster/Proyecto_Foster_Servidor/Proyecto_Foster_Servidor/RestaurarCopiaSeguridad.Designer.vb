<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class RestaurarCopiaSeguridad
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
        Me.btBuscarCopia = New System.Windows.Forms.Button()
        Me.ofdRestaurarCopia = New System.Windows.Forms.OpenFileDialog()
        Me.btRestaurarCopia = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'btBuscarCopia
        '
        Me.btBuscarCopia.Location = New System.Drawing.Point(434, 38)
        Me.btBuscarCopia.Name = "btBuscarCopia"
        Me.btBuscarCopia.Size = New System.Drawing.Size(94, 23)
        Me.btBuscarCopia.TabIndex = 0
        Me.btBuscarCopia.Text = "Buscar Copia"
        Me.btBuscarCopia.UseVisualStyleBackColor = True
        '
        'ofdRestaurarCopia
        '
        Me.ofdRestaurarCopia.FileName = "OpenFileDialog1"
        '
        'btRestaurarCopia
        '
        Me.btRestaurarCopia.Location = New System.Drawing.Point(282, 78)
        Me.btRestaurarCopia.Name = "btRestaurarCopia"
        Me.btRestaurarCopia.Size = New System.Drawing.Size(104, 23)
        Me.btRestaurarCopia.TabIndex = 1
        Me.btRestaurarCopia.Text = "Restaurar Copia"
        Me.btRestaurarCopia.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(239, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(191, 16)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Restaurar Copia de Seguridad"
        '
        'RestaurarCopiaSeguridad
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(668, 113)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btRestaurarCopia)
        Me.Controls.Add(Me.btBuscarCopia)
        Me.Name = "RestaurarCopiaSeguridad"
        Me.Text = "RestaurarCopiaSeguridad"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btBuscarCopia As System.Windows.Forms.Button
    Friend WithEvents ofdRestaurarCopia As System.Windows.Forms.OpenFileDialog
    Friend WithEvents btRestaurarCopia As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
End Class
