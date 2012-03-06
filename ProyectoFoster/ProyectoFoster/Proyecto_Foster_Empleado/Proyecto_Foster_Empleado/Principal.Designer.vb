<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Principal
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
        Me.gb_mesas = New System.Windows.Forms.GroupBox()
        Me.dgv_Comandas = New System.Windows.Forms.DataGridView()
        Me.Column1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Column2 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.bt_Ticket = New System.Windows.Forms.Button()
        Me.bt_Factura = New System.Windows.Forms.Button()
        Me.bt_aCocina = New System.Windows.Forms.Button()
        Me.bt_salir = New System.Windows.Forms.Button()
        CType(Me.dgv_Comandas, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'gb_mesas
        '
        Me.gb_mesas.Location = New System.Drawing.Point(479, 10)
        Me.gb_mesas.Name = "gb_mesas"
        Me.gb_mesas.Size = New System.Drawing.Size(509, 487)
        Me.gb_mesas.TabIndex = 1
        Me.gb_mesas.TabStop = False
        Me.gb_mesas.Text = "Mesas"
        '
        'dgv_Comandas
        '
        Me.dgv_Comandas.AllowUserToDeleteRows = False
        Me.dgv_Comandas.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.dgv_Comandas.BackgroundColor = System.Drawing.SystemColors.ButtonFace
        Me.dgv_Comandas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgv_Comandas.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Column1, Me.Column2})
        Me.dgv_Comandas.Location = New System.Drawing.Point(12, 10)
        Me.dgv_Comandas.Name = "dgv_Comandas"
        Me.dgv_Comandas.ReadOnly = True
        Me.dgv_Comandas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dgv_Comandas.Size = New System.Drawing.Size(461, 422)
        Me.dgv_Comandas.TabIndex = 2
        '
        'Column1
        '
        Me.Column1.HeaderText = "Número"
        Me.Column1.Name = "Column1"
        Me.Column1.ReadOnly = True
        '
        'Column2
        '
        Me.Column2.HeaderText = "Estado"
        Me.Column2.Name = "Column2"
        Me.Column2.ReadOnly = True
        '
        'Panel1
        '
        Me.Panel1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Panel1.Controls.Add(Me.bt_Ticket)
        Me.Panel1.Controls.Add(Me.bt_Factura)
        Me.Panel1.Controls.Add(Me.bt_aCocina)
        Me.Panel1.Location = New System.Drawing.Point(12, 473)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(336, 84)
        Me.Panel1.TabIndex = 10
        '
        'bt_Ticket
        '
        Me.bt_Ticket.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.bt_Ticket.FlatAppearance.BorderSize = 0
        Me.bt_Ticket.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.bt_Ticket.Font = New System.Drawing.Font("Monotype Corsiva", 15.75!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Ticket.Image = Global.Proyecto_Foster_Empleado.My.Resources.Resources._1331050608_cash_register
        Me.bt_Ticket.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.bt_Ticket.Location = New System.Drawing.Point(104, 3)
        Me.bt_Ticket.Name = "bt_Ticket"
        Me.bt_Ticket.Size = New System.Drawing.Size(110, 78)
        Me.bt_Ticket.TabIndex = 4
        Me.bt_Ticket.Text = "Ticket"
        Me.bt_Ticket.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.bt_Ticket.UseVisualStyleBackColor = True
        '
        'bt_Factura
        '
        Me.bt_Factura.FlatAppearance.BorderSize = 0
        Me.bt_Factura.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.bt_Factura.Font = New System.Drawing.Font("Monotype Corsiva", 15.75!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Factura.Image = Global.Proyecto_Foster_Empleado.My.Resources.Resources._1331051505_News
        Me.bt_Factura.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.bt_Factura.Location = New System.Drawing.Point(220, 3)
        Me.bt_Factura.Name = "bt_Factura"
        Me.bt_Factura.Size = New System.Drawing.Size(113, 78)
        Me.bt_Factura.TabIndex = 9
        Me.bt_Factura.Text = "Factura"
        Me.bt_Factura.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.bt_Factura.UseVisualStyleBackColor = True
        '
        'bt_aCocina
        '
        Me.bt_aCocina.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.bt_aCocina.FlatAppearance.BorderSize = 0
        Me.bt_aCocina.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.bt_aCocina.Font = New System.Drawing.Font("Monotype Corsiva", 15.75!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_aCocina.Image = Global.Proyecto_Foster_Empleado.My.Resources.Resources.cocina
        Me.bt_aCocina.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.bt_aCocina.Location = New System.Drawing.Point(3, 3)
        Me.bt_aCocina.Name = "bt_aCocina"
        Me.bt_aCocina.Size = New System.Drawing.Size(95, 78)
        Me.bt_aCocina.TabIndex = 3
        Me.bt_aCocina.Text = "A cocina"
        Me.bt_aCocina.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.bt_aCocina.UseVisualStyleBackColor = True
        '
        'bt_salir
        '
        Me.bt_salir.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.bt_salir.AutoSize = True
        Me.bt_salir.FlatAppearance.BorderSize = 0
        Me.bt_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.bt_salir.ForeColor = System.Drawing.Color.Transparent
        Me.bt_salir.Image = Global.Proyecto_Foster_Empleado.My.Resources.Resources._1330705942_bullet_deny
        Me.bt_salir.Location = New System.Drawing.Point(914, 487)
        Me.bt_salir.Name = "bt_salir"
        Me.bt_salir.Size = New System.Drawing.Size(68, 69)
        Me.bt_salir.TabIndex = 8
        Me.bt_salir.UseVisualStyleBackColor = True
        '
        'Principal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1000, 569)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.bt_salir)
        Me.Controls.Add(Me.dgv_Comandas)
        Me.Controls.Add(Me.gb_mesas)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "Principal"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Form1"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        CType(Me.dgv_Comandas, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents gb_mesas As System.Windows.Forms.GroupBox
    Friend WithEvents dgv_Comandas As System.Windows.Forms.DataGridView
    Friend WithEvents bt_aCocina As System.Windows.Forms.Button
    Friend WithEvents bt_Ticket As System.Windows.Forms.Button
    Friend WithEvents bt_salir As System.Windows.Forms.Button
    Friend WithEvents bt_Factura As System.Windows.Forms.Button
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Column1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Column2 As System.Windows.Forms.DataGridViewTextBoxColumn

End Class
