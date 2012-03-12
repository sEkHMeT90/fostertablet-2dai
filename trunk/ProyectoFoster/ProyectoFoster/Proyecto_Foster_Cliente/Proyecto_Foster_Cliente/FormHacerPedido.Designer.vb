<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormHacerPedido
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
        Me.dgvPedidos = New System.Windows.Forms.DataGridView()
        Me.Pedido = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Comensal = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.pbDescartar = New System.Windows.Forms.PictureBox()
        Me.pbVolver = New System.Windows.Forms.PictureBox()
        Me.pbContinuar = New System.Windows.Forms.PictureBox()
        CType(Me.dgvPedidos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbDescartar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'dgvPedidos
        '
        Me.dgvPedidos.AllowUserToAddRows = False
        Me.dgvPedidos.AllowUserToDeleteRows = False
        Me.dgvPedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvPedidos.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.Pedido, Me.Comensal})
        Me.dgvPedidos.Location = New System.Drawing.Point(12, 12)
        Me.dgvPedidos.Name = "dgvPedidos"
        Me.dgvPedidos.ReadOnly = True
        Me.dgvPedidos.RowHeadersVisible = False
        Me.dgvPedidos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.dgvPedidos.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal
        Me.dgvPedidos.Size = New System.Drawing.Size(344, 538)
        Me.dgvPedidos.TabIndex = 0
        '
        'Pedido
        '
        Me.Pedido.HeaderText = "Column1"
        Me.Pedido.Name = "Pedido"
        Me.Pedido.ReadOnly = True
        '
        'Comensal
        '
        Me.Comensal.HeaderText = "Column1"
        Me.Comensal.Name = "Comensal"
        Me.Comensal.ReadOnly = True
        '
        'pbDescartar
        '
        Me.pbDescartar.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.pbDescartar.Location = New System.Drawing.Point(464, 99)
        Me.pbDescartar.Name = "pbDescartar"
        Me.pbDescartar.Size = New System.Drawing.Size(238, 66)
        Me.pbDescartar.TabIndex = 1
        Me.pbDescartar.TabStop = False
        '
        'pbVolver
        '
        Me.pbVolver.BackColor = System.Drawing.SystemColors.Highlight
        Me.pbVolver.Location = New System.Drawing.Point(464, 236)
        Me.pbVolver.Name = "pbVolver"
        Me.pbVolver.Size = New System.Drawing.Size(238, 66)
        Me.pbVolver.TabIndex = 2
        Me.pbVolver.TabStop = False
        '
        'pbContinuar
        '
        Me.pbContinuar.BackColor = System.Drawing.SystemColors.HotTrack
        Me.pbContinuar.Location = New System.Drawing.Point(464, 373)
        Me.pbContinuar.Name = "pbContinuar"
        Me.pbContinuar.Size = New System.Drawing.Size(238, 66)
        Me.pbContinuar.TabIndex = 3
        Me.pbContinuar.TabStop = False
        '
        'FormHacerPedido
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(784, 562)
        Me.Controls.Add(Me.pbContinuar)
        Me.Controls.Add(Me.pbVolver)
        Me.Controls.Add(Me.pbDescartar)
        Me.Controls.Add(Me.dgvPedidos)
        Me.DoubleBuffered = True
        Me.Name = "FormHacerPedido"
        Me.Text = "FormHacerPedido"
        CType(Me.dgvPedidos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbDescartar, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.pbContinuar, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents dgvPedidos As System.Windows.Forms.DataGridView
    Friend WithEvents Pedido As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Comensal As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents pbDescartar As System.Windows.Forms.PictureBox
    Friend WithEvents pbVolver As System.Windows.Forms.PictureBox
    Friend WithEvents pbContinuar As System.Windows.Forms.PictureBox
End Class
