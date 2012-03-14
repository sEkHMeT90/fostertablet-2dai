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
        Dim TreeNode1 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo1")
        Dim TreeNode2 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo2")
        Dim TreeNode3 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo3")
        Dim TreeNode4 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo0", New System.Windows.Forms.TreeNode() {TreeNode1, TreeNode2, TreeNode3})
        Dim TreeNode5 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo5")
        Dim TreeNode6 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo4", New System.Windows.Forms.TreeNode() {TreeNode5})
        Dim TreeNode7 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo7")
        Dim TreeNode8 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo8")
        Dim TreeNode9 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo9")
        Dim TreeNode10 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo6", New System.Windows.Forms.TreeNode() {TreeNode7, TreeNode8, TreeNode9})
        Dim TreeNode11 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo11")
        Dim TreeNode12 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo12")
        Dim TreeNode13 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo13")
        Dim TreeNode14 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo14")
        Dim TreeNode15 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo10", New System.Windows.Forms.TreeNode() {TreeNode11, TreeNode12, TreeNode13, TreeNode14})
        Dim TreeNode16 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo15")
        Dim TreeNode17 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo17")
        Dim TreeNode18 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo18")
        Dim TreeNode19 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo19")
        Dim TreeNode20 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo16", New System.Windows.Forms.TreeNode() {TreeNode17, TreeNode18, TreeNode19})
        Dim TreeNode21 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo21")
        Dim TreeNode22 As System.Windows.Forms.TreeNode = New System.Windows.Forms.TreeNode("Nodo20", New System.Windows.Forms.TreeNode() {TreeNode21})
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.RichTextBox1 = New System.Windows.Forms.RichTextBox()
        Me.pbCerrar = New System.Windows.Forms.PictureBox()
        Me.pbAyuda = New System.Windows.Forms.PictureBox()
        Me.pbCartel = New System.Windows.Forms.PictureBox()
        Me.pbPedir = New System.Windows.Forms.PictureBox()
        Me.pbVolver = New System.Windows.Forms.PictureBox()
        Me.TreeView1 = New System.Windows.Forms.TreeView()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCerrar, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbAyuda, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbCartel, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbPedir, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.pbVolver, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.BackColor = System.Drawing.Color.White
        Me.PictureBox1.Image = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.PictureBox1.InitialImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Platos
        Me.PictureBox1.Location = New System.Drawing.Point(53, 14)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(277, 277)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'RichTextBox1
        '
        Me.RichTextBox1.Location = New System.Drawing.Point(12, 322)
        Me.RichTextBox1.Name = "RichTextBox1"
        Me.RichTextBox1.Size = New System.Drawing.Size(362, 232)
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
        'TreeView1
        '
        Me.TreeView1.Location = New System.Drawing.Point(425, 208)
        Me.TreeView1.Name = "TreeView1"
        TreeNode1.Checked = True
        TreeNode1.Name = "Nodo1"
        TreeNode1.Text = "Nodo1"
        TreeNode2.Checked = True
        TreeNode2.Name = "Nodo2"
        TreeNode2.Text = "Nodo2"
        TreeNode3.Checked = True
        TreeNode3.Name = "Nodo3"
        TreeNode3.Text = "Nodo3"
        TreeNode4.Checked = True
        TreeNode4.Name = "Nodo0"
        TreeNode4.Text = "Nodo0"
        TreeNode5.Name = "Nodo5"
        TreeNode5.Text = "Nodo5"
        TreeNode6.Name = "Nodo4"
        TreeNode6.Text = "Nodo4"
        TreeNode7.Name = "Nodo7"
        TreeNode7.Text = "Nodo7"
        TreeNode8.Name = "Nodo8"
        TreeNode8.Text = "Nodo8"
        TreeNode9.Name = "Nodo9"
        TreeNode9.Text = "Nodo9"
        TreeNode10.Name = "Nodo6"
        TreeNode10.Text = "Nodo6"
        TreeNode11.Name = "Nodo11"
        TreeNode11.Text = "Nodo11"
        TreeNode12.Name = "Nodo12"
        TreeNode12.Text = "Nodo12"
        TreeNode13.Name = "Nodo13"
        TreeNode13.Text = "Nodo13"
        TreeNode14.Name = "Nodo14"
        TreeNode14.Text = "Nodo14"
        TreeNode15.Name = "Nodo10"
        TreeNode15.Text = "Nodo10"
        TreeNode16.Name = "Nodo15"
        TreeNode16.Text = "Nodo15"
        TreeNode17.Name = "Nodo17"
        TreeNode17.Text = "Nodo17"
        TreeNode18.Name = "Nodo18"
        TreeNode18.Text = "Nodo18"
        TreeNode19.Name = "Nodo19"
        TreeNode19.Text = "Nodo19"
        TreeNode20.Name = "Nodo16"
        TreeNode20.Text = "Nodo16"
        TreeNode21.Name = "Nodo21"
        TreeNode21.Text = "Nodo21"
        TreeNode22.Name = "Nodo20"
        TreeNode22.Text = "Nodo20"
        Me.TreeView1.Nodes.AddRange(New System.Windows.Forms.TreeNode() {TreeNode4, TreeNode6, TreeNode10, TreeNode15, TreeNode16, TreeNode20, TreeNode22})
        Me.TreeView1.Size = New System.Drawing.Size(338, 281)
        Me.TreeView1.TabIndex = 26
        '
        'FormDetallePlato
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Cliente.My.Resources.Resources.Carta_fondo
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(784, 596)
        Me.Controls.Add(Me.TreeView1)
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
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents RichTextBox1 As System.Windows.Forms.RichTextBox
    Friend WithEvents pbCerrar As System.Windows.Forms.PictureBox
    Friend WithEvents pbAyuda As System.Windows.Forms.PictureBox
    Friend WithEvents pbCartel As System.Windows.Forms.PictureBox
    Friend WithEvents pbPedir As System.Windows.Forms.PictureBox
    Friend WithEvents pbVolver As System.Windows.Forms.PictureBox
    Friend WithEvents TreeView1 As System.Windows.Forms.TreeView
End Class
