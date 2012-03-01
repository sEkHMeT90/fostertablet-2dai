<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FormPrincipal
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
        Me.msBarra = New System.Windows.Forms.MenuStrip()
        Me.tsmiArchivo = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiCopiaSeguridad = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiRestaurarCopiaSeguridad = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiSalir = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiCobrar = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiFacturas = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiConsultarFecturas = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiGenerarFacturas = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiModificarFecturas = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiPedidos = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiConsultarPedidos = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiAñadirPedidos = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiModificarPedidos = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsmiEliminarPedidos = New System.Windows.Forms.ToolStripMenuItem()
        Me.MesasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenúToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.BebidasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EntrantesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InfantilesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PlatosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.HamburguesasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CostillasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TexMexToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SandwichToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PollopescadoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ParillaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PostresToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AcompañamientoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AyudaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ManualToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AcercaDeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AgregarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ModificarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EliminarToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.VerToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.msBarra.SuspendLayout()
        Me.SuspendLayout()
        '
        'msBarra
        '
        Me.msBarra.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsmiArchivo, Me.tsmiCobrar, Me.tsmiFacturas, Me.tsmiPedidos, Me.MesasToolStripMenuItem, Me.MenúToolStripMenuItem, Me.AyudaToolStripMenuItem})
        Me.msBarra.Location = New System.Drawing.Point(0, 0)
        Me.msBarra.Name = "msBarra"
        Me.msBarra.Size = New System.Drawing.Size(784, 24)
        Me.msBarra.TabIndex = 0
        Me.msBarra.Text = "MenuStrip1"
        '
        'tsmiArchivo
        '
        Me.tsmiArchivo.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsmiCopiaSeguridad, Me.tsmiRestaurarCopiaSeguridad, Me.tsmiSalir})
        Me.tsmiArchivo.Name = "tsmiArchivo"
        Me.tsmiArchivo.Size = New System.Drawing.Size(60, 20)
        Me.tsmiArchivo.Text = "Archivo"
        '
        'tsmiCopiaSeguridad
        '
        Me.tsmiCopiaSeguridad.Name = "tsmiCopiaSeguridad"
        Me.tsmiCopiaSeguridad.Size = New System.Drawing.Size(210, 22)
        Me.tsmiCopiaSeguridad.Text = "Copia seguridad"
        '
        'tsmiRestaurarCopiaSeguridad
        '
        Me.tsmiRestaurarCopiaSeguridad.Name = "tsmiRestaurarCopiaSeguridad"
        Me.tsmiRestaurarCopiaSeguridad.Size = New System.Drawing.Size(210, 22)
        Me.tsmiRestaurarCopiaSeguridad.Text = "Restaurar copia seguridad"
        '
        'tsmiSalir
        '
        Me.tsmiSalir.Name = "tsmiSalir"
        Me.tsmiSalir.Size = New System.Drawing.Size(210, 22)
        Me.tsmiSalir.Text = "Salir"
        '
        'tsmiCobrar
        '
        Me.tsmiCobrar.Name = "tsmiCobrar"
        Me.tsmiCobrar.Size = New System.Drawing.Size(55, 20)
        Me.tsmiCobrar.Text = "Cobrar"
        '
        'tsmiFacturas
        '
        Me.tsmiFacturas.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsmiConsultarFecturas, Me.tsmiGenerarFacturas, Me.tsmiModificarFecturas})
        Me.tsmiFacturas.Name = "tsmiFacturas"
        Me.tsmiFacturas.Size = New System.Drawing.Size(63, 20)
        Me.tsmiFacturas.Text = "Facturas"
        '
        'tsmiConsultarFecturas
        '
        Me.tsmiConsultarFecturas.Name = "tsmiConsultarFecturas"
        Me.tsmiConsultarFecturas.Size = New System.Drawing.Size(125, 22)
        Me.tsmiConsultarFecturas.Text = "Consultar"
        '
        'tsmiGenerarFacturas
        '
        Me.tsmiGenerarFacturas.Name = "tsmiGenerarFacturas"
        Me.tsmiGenerarFacturas.Size = New System.Drawing.Size(125, 22)
        Me.tsmiGenerarFacturas.Text = "Generar"
        '
        'tsmiModificarFecturas
        '
        Me.tsmiModificarFecturas.Name = "tsmiModificarFecturas"
        Me.tsmiModificarFecturas.Size = New System.Drawing.Size(125, 22)
        Me.tsmiModificarFecturas.Text = "Modificar"
        '
        'tsmiPedidos
        '
        Me.tsmiPedidos.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsmiConsultarPedidos, Me.tsmiAñadirPedidos, Me.tsmiModificarPedidos, Me.tsmiEliminarPedidos})
        Me.tsmiPedidos.Name = "tsmiPedidos"
        Me.tsmiPedidos.Size = New System.Drawing.Size(61, 20)
        Me.tsmiPedidos.Text = "Pedidos"
        '
        'tsmiConsultarPedidos
        '
        Me.tsmiConsultarPedidos.Name = "tsmiConsultarPedidos"
        Me.tsmiConsultarPedidos.Size = New System.Drawing.Size(125, 22)
        Me.tsmiConsultarPedidos.Text = "Consultar"
        '
        'tsmiAñadirPedidos
        '
        Me.tsmiAñadirPedidos.Name = "tsmiAñadirPedidos"
        Me.tsmiAñadirPedidos.Size = New System.Drawing.Size(125, 22)
        Me.tsmiAñadirPedidos.Text = "Añadir"
        '
        'tsmiModificarPedidos
        '
        Me.tsmiModificarPedidos.Name = "tsmiModificarPedidos"
        Me.tsmiModificarPedidos.Size = New System.Drawing.Size(125, 22)
        Me.tsmiModificarPedidos.Text = "Modificar"
        '
        'tsmiEliminarPedidos
        '
        Me.tsmiEliminarPedidos.Name = "tsmiEliminarPedidos"
        Me.tsmiEliminarPedidos.Size = New System.Drawing.Size(125, 22)
        Me.tsmiEliminarPedidos.Text = "Eliminar"
        '
        'MesasToolStripMenuItem
        '
        Me.MesasToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AgregarToolStripMenuItem, Me.ModificarToolStripMenuItem, Me.EliminarToolStripMenuItem, Me.VerToolStripMenuItem})
        Me.MesasToolStripMenuItem.Name = "MesasToolStripMenuItem"
        Me.MesasToolStripMenuItem.Size = New System.Drawing.Size(52, 20)
        Me.MesasToolStripMenuItem.Text = "Mesas"
        '
        'MenúToolStripMenuItem
        '
        Me.MenúToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BebidasToolStripMenuItem, Me.EntrantesToolStripMenuItem, Me.InfantilesToolStripMenuItem, Me.PlatosToolStripMenuItem, Me.PostresToolStripMenuItem, Me.AcompañamientoToolStripMenuItem})
        Me.MenúToolStripMenuItem.Name = "MenúToolStripMenuItem"
        Me.MenúToolStripMenuItem.Size = New System.Drawing.Size(120, 20)
        Me.MenúToolStripMenuItem.Text = "Carta de productos"
        '
        'BebidasToolStripMenuItem
        '
        Me.BebidasToolStripMenuItem.Name = "BebidasToolStripMenuItem"
        Me.BebidasToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.BebidasToolStripMenuItem.Text = "Bebidas"
        '
        'EntrantesToolStripMenuItem
        '
        Me.EntrantesToolStripMenuItem.Name = "EntrantesToolStripMenuItem"
        Me.EntrantesToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.EntrantesToolStripMenuItem.Text = "Entrantes"
        '
        'InfantilesToolStripMenuItem
        '
        Me.InfantilesToolStripMenuItem.Name = "InfantilesToolStripMenuItem"
        Me.InfantilesToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.InfantilesToolStripMenuItem.Text = "Infantiles"
        '
        'PlatosToolStripMenuItem
        '
        Me.PlatosToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.HamburguesasToolStripMenuItem, Me.CostillasToolStripMenuItem, Me.TexMexToolStripMenuItem, Me.SandwichToolStripMenuItem, Me.PollopescadoToolStripMenuItem, Me.ParillaToolStripMenuItem})
        Me.PlatosToolStripMenuItem.Name = "PlatosToolStripMenuItem"
        Me.PlatosToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.PlatosToolStripMenuItem.Text = "Platos"
        '
        'HamburguesasToolStripMenuItem
        '
        Me.HamburguesasToolStripMenuItem.Name = "HamburguesasToolStripMenuItem"
        Me.HamburguesasToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.HamburguesasToolStripMenuItem.Text = "Hamburguesas"
        '
        'CostillasToolStripMenuItem
        '
        Me.CostillasToolStripMenuItem.Name = "CostillasToolStripMenuItem"
        Me.CostillasToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.CostillasToolStripMenuItem.Text = "Costillas"
        '
        'TexMexToolStripMenuItem
        '
        Me.TexMexToolStripMenuItem.Name = "TexMexToolStripMenuItem"
        Me.TexMexToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.TexMexToolStripMenuItem.Text = "Tex-Mex"
        '
        'SandwichToolStripMenuItem
        '
        Me.SandwichToolStripMenuItem.Name = "SandwichToolStripMenuItem"
        Me.SandwichToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.SandwichToolStripMenuItem.Text = "Sandwich"
        '
        'PollopescadoToolStripMenuItem
        '
        Me.PollopescadoToolStripMenuItem.Name = "PollopescadoToolStripMenuItem"
        Me.PollopescadoToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.PollopescadoToolStripMenuItem.Text = "Pollo/pescado"
        '
        'ParillaToolStripMenuItem
        '
        Me.ParillaToolStripMenuItem.Name = "ParillaToolStripMenuItem"
        Me.ParillaToolStripMenuItem.Size = New System.Drawing.Size(154, 22)
        Me.ParillaToolStripMenuItem.Text = "Parilla"
        '
        'PostresToolStripMenuItem
        '
        Me.PostresToolStripMenuItem.Name = "PostresToolStripMenuItem"
        Me.PostresToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.PostresToolStripMenuItem.Text = "Postres"
        '
        'AcompañamientoToolStripMenuItem
        '
        Me.AcompañamientoToolStripMenuItem.Name = "AcompañamientoToolStripMenuItem"
        Me.AcompañamientoToolStripMenuItem.Size = New System.Drawing.Size(170, 22)
        Me.AcompañamientoToolStripMenuItem.Text = "Acompañamiento"
        '
        'AyudaToolStripMenuItem
        '
        Me.AyudaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ManualToolStripMenuItem, Me.AcercaDeToolStripMenuItem})
        Me.AyudaToolStripMenuItem.Name = "AyudaToolStripMenuItem"
        Me.AyudaToolStripMenuItem.Size = New System.Drawing.Size(53, 20)
        Me.AyudaToolStripMenuItem.Text = "Ayuda"
        '
        'ManualToolStripMenuItem
        '
        Me.ManualToolStripMenuItem.Name = "ManualToolStripMenuItem"
        Me.ManualToolStripMenuItem.Size = New System.Drawing.Size(135, 22)
        Me.ManualToolStripMenuItem.Text = "Manual"
        '
        'AcercaDeToolStripMenuItem
        '
        Me.AcercaDeToolStripMenuItem.Name = "AcercaDeToolStripMenuItem"
        Me.AcercaDeToolStripMenuItem.Size = New System.Drawing.Size(135, 22)
        Me.AcercaDeToolStripMenuItem.Text = "Acerca de..."
        '
        'AgregarToolStripMenuItem
        '
        Me.AgregarToolStripMenuItem.Name = "AgregarToolStripMenuItem"
        Me.AgregarToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.AgregarToolStripMenuItem.Text = "Agregar"
        '
        'ModificarToolStripMenuItem
        '
        Me.ModificarToolStripMenuItem.Name = "ModificarToolStripMenuItem"
        Me.ModificarToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.ModificarToolStripMenuItem.Text = "Modificar"
        '
        'EliminarToolStripMenuItem
        '
        Me.EliminarToolStripMenuItem.Name = "EliminarToolStripMenuItem"
        Me.EliminarToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.EliminarToolStripMenuItem.Text = "Eliminar"
        '
        'VerToolStripMenuItem
        '
        Me.VerToolStripMenuItem.Name = "VerToolStripMenuItem"
        Me.VerToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.VerToolStripMenuItem.Text = "Ver"
        '
        'FormPrincipal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Proyecto_Foster_Servidor.My.Resources.Resources.cartel_carta2
        Me.ClientSize = New System.Drawing.Size(784, 201)
        Me.Controls.Add(Me.msBarra)
        Me.DoubleBuffered = True
        Me.MainMenuStrip = Me.msBarra
        Me.Name = "FormPrincipal"
        Me.ShowInTaskbar = False
        Me.Text = "Administración Foster Hollywood"
        Me.msBarra.ResumeLayout(False)
        Me.msBarra.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents msBarra As System.Windows.Forms.MenuStrip
    Friend WithEvents tsmiArchivo As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiCopiaSeguridad As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiRestaurarCopiaSeguridad As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiSalir As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiCobrar As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiFacturas As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiPedidos As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MesasToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MenúToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AyudaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ManualToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AcercaDeToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiConsultarFecturas As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiGenerarFacturas As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiModificarFecturas As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiConsultarPedidos As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiAñadirPedidos As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiModificarPedidos As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsmiEliminarPedidos As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents BebidasToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EntrantesToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents InfantilesToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PlatosToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents HamburguesasToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents CostillasToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents TexMexToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SandwichToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PollopescadoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ParillaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PostresToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AcompañamientoToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents AgregarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ModificarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EliminarToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents VerToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem

End Class
