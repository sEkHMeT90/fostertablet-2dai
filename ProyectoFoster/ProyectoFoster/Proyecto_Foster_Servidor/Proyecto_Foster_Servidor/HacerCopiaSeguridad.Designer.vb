﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class HacerCopiaSeguridad
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
        Me.tbNombreCopia = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btCrearCopia = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'tbNombreCopia
        '
        Me.tbNombreCopia.Location = New System.Drawing.Point(147, 54)
        Me.tbNombreCopia.Name = "tbNombreCopia"
        Me.tbNombreCopia.Size = New System.Drawing.Size(311, 20)
        Me.tbNombreCopia.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(65, 57)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(76, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Nombre copia:"
        '
        'btCrearCopia
        '
        Me.btCrearCopia.Location = New System.Drawing.Point(464, 52)
        Me.btCrearCopia.Name = "btCrearCopia"
        Me.btCrearCopia.Size = New System.Drawing.Size(140, 23)
        Me.btCrearCopia.TabIndex = 0
        Me.btCrearCopia.Text = "Crear copia de seguridad"
        Me.btCrearCopia.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(188, 12)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(293, 16)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Hacer Copia de Seguridad de la Base de datos"
        '
        'HacerCopiaSeguridad
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(669, 96)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.tbNombreCopia)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btCrearCopia)
        Me.Name = "HacerCopiaSeguridad"
        Me.Text = "HacerCopiaSeguridad"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents tbNombreCopia As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btCrearCopia As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
End Class
