<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmListarProducto
    Inherits DevComponents.DotNetBar.Metro.MetroForm

    'Form overrides dispose to clean up the component list.
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

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim DataGridViewCellStyle13 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle14 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle15 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmListarProducto))
        Me.Highlighter1 = New DevComponents.DotNetBar.Validator.Highlighter()
        Me.txtbusca = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.gbob = New System.Windows.Forms.GroupBox()
        Me.LbF8 = New DevComponents.DotNetBar.LabelX()
        Me.LBF7 = New DevComponents.DotNetBar.LabelX()
        Me.LBF6 = New DevComponents.DotNetBar.LabelX()
        Me.LBF5 = New DevComponents.DotNetBar.LabelX()
        Me.LBF4 = New DevComponents.DotNetBar.LabelX()
        Me.LBF3 = New DevComponents.DotNetBar.LabelX()
        Me.LBF2 = New DevComponents.DotNetBar.LabelX()
        Me.RbNom_Com = New System.Windows.Forms.RadioButton()
        Me.Rbenvase = New System.Windows.Forms.RadioButton()
        Me.Rblogo = New System.Windows.Forms.RadioButton()
        Me.RbTodos = New System.Windows.Forms.RadioButton()
        Me.rbcat = New System.Windows.Forms.RadioButton()
        Me.rbProducto = New System.Windows.Forms.RadioButton()
        Me.rbcolor = New System.Windows.Forms.RadioButton()
        Me.LabelX2 = New DevComponents.DotNetBar.LabelX()
        Me.dgvlista = New DevComponents.DotNetBar.Controls.DataGridViewX()
        Me.btn_Acep = New DevComponents.DotNetBar.ButtonX()
        Me.mesajeerror = New DevComponents.DotNetBar.LabelX()
        Me.StyleManager1 = New DevComponents.DotNetBar.StyleManager(Me.components)
        Me.btnNuevo = New DevComponents.DotNetBar.ButtonX()
        Me.gbob.SuspendLayout()
        CType(Me.dgvlista, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Highlighter1
        '
        Me.Highlighter1.ContainerControl = Me
        '
        'txtbusca
        '
        Me.txtbusca.BackColor = System.Drawing.Color.White
        '
        '
        '
        Me.txtbusca.Border.Class = "TextBoxBorder"
        Me.txtbusca.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txtbusca.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtbusca.DisabledBackColor = System.Drawing.Color.White
        Me.txtbusca.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtbusca.ForeColor = System.Drawing.Color.Black
        Me.Highlighter1.SetHighlightOnFocus(Me.txtbusca, True)
        Me.txtbusca.Location = New System.Drawing.Point(80, 49)
        Me.txtbusca.Name = "txtbusca"
        Me.txtbusca.Size = New System.Drawing.Size(881, 23)
        Me.txtbusca.TabIndex = 0
        '
        'gbob
        '
        Me.gbob.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.gbob.Controls.Add(Me.LbF8)
        Me.gbob.Controls.Add(Me.LBF7)
        Me.gbob.Controls.Add(Me.LBF6)
        Me.gbob.Controls.Add(Me.LBF5)
        Me.gbob.Controls.Add(Me.LBF4)
        Me.gbob.Controls.Add(Me.LBF3)
        Me.gbob.Controls.Add(Me.LBF2)
        Me.gbob.Controls.Add(Me.RbNom_Com)
        Me.gbob.Controls.Add(Me.Rbenvase)
        Me.gbob.Controls.Add(Me.Rblogo)
        Me.gbob.Controls.Add(Me.RbTodos)
        Me.gbob.Controls.Add(Me.txtbusca)
        Me.gbob.Controls.Add(Me.rbcat)
        Me.gbob.Controls.Add(Me.rbProducto)
        Me.gbob.Controls.Add(Me.rbcolor)
        Me.gbob.Controls.Add(Me.LabelX2)
        Me.gbob.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.gbob.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbob.ForeColor = System.Drawing.Color.Black
        Me.gbob.Location = New System.Drawing.Point(7, 12)
        Me.gbob.Name = "gbob"
        Me.gbob.Size = New System.Drawing.Size(979, 83)
        Me.gbob.TabIndex = 2
        Me.gbob.TabStop = False
        Me.gbob.Text = "Seleccione opciones de busqueda:"
        '
        'LbF8
        '
        Me.LbF8.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LbF8.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LbF8.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LbF8.ForeColor = System.Drawing.Color.Black
        Me.LbF8.Location = New System.Drawing.Point(843, 21)
        Me.LbF8.Name = "LbF8"
        Me.LbF8.Size = New System.Drawing.Size(33, 23)
        Me.LbF8.TabIndex = 237
        Me.LbF8.Text = " [F8]"
        Me.LbF8.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF7
        '
        Me.LBF7.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF7.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF7.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF7.ForeColor = System.Drawing.Color.Black
        Me.LBF7.Location = New System.Drawing.Point(736, 22)
        Me.LBF7.Name = "LBF7"
        Me.LBF7.Size = New System.Drawing.Size(33, 23)
        Me.LBF7.TabIndex = 236
        Me.LBF7.Text = " [F7]"
        Me.LBF7.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF6
        '
        Me.LBF6.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF6.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF6.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF6.ForeColor = System.Drawing.Color.Black
        Me.LBF6.Location = New System.Drawing.Point(605, 22)
        Me.LBF6.Name = "LBF6"
        Me.LBF6.Size = New System.Drawing.Size(33, 23)
        Me.LBF6.TabIndex = 235
        Me.LBF6.Text = " [F6]"
        Me.LBF6.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF5
        '
        Me.LBF5.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF5.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF5.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF5.ForeColor = System.Drawing.Color.Black
        Me.LBF5.Location = New System.Drawing.Point(481, 22)
        Me.LBF5.Name = "LBF5"
        Me.LBF5.Size = New System.Drawing.Size(33, 23)
        Me.LBF5.TabIndex = 234
        Me.LBF5.Text = " [F5]"
        Me.LBF5.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF4
        '
        Me.LBF4.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF4.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF4.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF4.ForeColor = System.Drawing.Color.Black
        Me.LBF4.Location = New System.Drawing.Point(359, 23)
        Me.LBF4.Name = "LBF4"
        Me.LBF4.Size = New System.Drawing.Size(33, 23)
        Me.LBF4.TabIndex = 221
        Me.LBF4.Text = " [F4]"
        Me.LBF4.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF3
        '
        Me.LBF3.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF3.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF3.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF3.ForeColor = System.Drawing.Color.Black
        Me.LBF3.Location = New System.Drawing.Point(263, 23)
        Me.LBF3.Name = "LBF3"
        Me.LBF3.Size = New System.Drawing.Size(33, 23)
        Me.LBF3.TabIndex = 220
        Me.LBF3.Text = " [F3]"
        Me.LBF3.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF2
        '
        Me.LBF2.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LBF2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF2.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF2.ForeColor = System.Drawing.Color.Black
        Me.LBF2.Location = New System.Drawing.Point(90, 22)
        Me.LBF2.Name = "LBF2"
        Me.LBF2.Size = New System.Drawing.Size(33, 23)
        Me.LBF2.TabIndex = 219
        Me.LBF2.Text = " [F2]"
        Me.LBF2.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'RbNom_Com
        '
        Me.RbNom_Com.AutoSize = True
        Me.RbNom_Com.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.RbNom_Com.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.RbNom_Com.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RbNom_Com.ForeColor = System.Drawing.Color.Black
        Me.RbNom_Com.Location = New System.Drawing.Point(127, 24)
        Me.RbNom_Com.Name = "RbNom_Com"
        Me.RbNom_Com.Size = New System.Drawing.Size(140, 21)
        Me.RbNom_Com.TabIndex = 10
        Me.RbNom_Com.TabStop = True
        Me.RbNom_Com.Tag = "Nombre Comercial"
        Me.RbNom_Com.Text = "Nombre Comercial"
        Me.RbNom_Com.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.RbNom_Com.UseVisualStyleBackColor = False
        '
        'Rbenvase
        '
        Me.Rbenvase.AutoSize = True
        Me.Rbenvase.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.Rbenvase.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Rbenvase.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Rbenvase.ForeColor = System.Drawing.Color.Black
        Me.Rbenvase.Location = New System.Drawing.Point(657, 22)
        Me.Rbenvase.Name = "Rbenvase"
        Me.Rbenvase.Size = New System.Drawing.Size(83, 21)
        Me.Rbenvase.TabIndex = 8
        Me.Rbenvase.TabStop = True
        Me.Rbenvase.Tag = "Envasado"
        Me.Rbenvase.Text = "Envasado"
        Me.Rbenvase.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.Rbenvase.UseVisualStyleBackColor = False
        '
        'Rblogo
        '
        Me.Rblogo.AutoSize = True
        Me.Rblogo.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.Rblogo.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Rblogo.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Rblogo.ForeColor = System.Drawing.Color.Black
        Me.Rblogo.Location = New System.Drawing.Point(527, 22)
        Me.Rblogo.Name = "Rblogo"
        Me.Rblogo.Size = New System.Drawing.Size(81, 21)
        Me.Rblogo.TabIndex = 7
        Me.Rblogo.TabStop = True
        Me.Rblogo.Tag = "Logotipo"
        Me.Rblogo.Text = "Logotipo"
        Me.Rblogo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.Rblogo.UseVisualStyleBackColor = False
        '
        'RbTodos
        '
        Me.RbTodos.AutoSize = True
        Me.RbTodos.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.RbTodos.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.RbTodos.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.RbTodos.ForeColor = System.Drawing.Color.Black
        Me.RbTodos.Location = New System.Drawing.Point(780, 22)
        Me.RbTodos.Name = "RbTodos"
        Me.RbTodos.Size = New System.Drawing.Size(62, 21)
        Me.RbTodos.TabIndex = 6
        Me.RbTodos.TabStop = True
        Me.RbTodos.Tag = "Todos"
        Me.RbTodos.Text = "Todos"
        Me.RbTodos.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.RbTodos.UseVisualStyleBackColor = False
        '
        'rbcat
        '
        Me.rbcat.AutoSize = True
        Me.rbcat.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.rbcat.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbcat.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbcat.ForeColor = System.Drawing.Color.Black
        Me.rbcat.Location = New System.Drawing.Point(401, 22)
        Me.rbcat.Name = "rbcat"
        Me.rbcat.Size = New System.Drawing.Size(84, 21)
        Me.rbcat.TabIndex = 5
        Me.rbcat.TabStop = True
        Me.rbcat.Tag = "Categoria"
        Me.rbcat.Text = "Categoria"
        Me.rbcat.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbcat.UseVisualStyleBackColor = False
        '
        'rbProducto
        '
        Me.rbProducto.AutoSize = True
        Me.rbProducto.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.rbProducto.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red
        Me.rbProducto.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.rbProducto.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.rbProducto.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbProducto.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbProducto.ForeColor = System.Drawing.Color.Black
        Me.rbProducto.Location = New System.Drawing.Point(15, 22)
        Me.rbProducto.Name = "rbProducto"
        Me.rbProducto.Size = New System.Drawing.Size(81, 21)
        Me.rbProducto.TabIndex = 2
        Me.rbProducto.TabStop = True
        Me.rbProducto.Tag = "Producto"
        Me.rbProducto.Text = "Producto"
        Me.rbProducto.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbProducto.UseVisualStyleBackColor = False
        '
        'rbcolor
        '
        Me.rbcolor.AutoSize = True
        Me.rbcolor.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.rbcolor.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbcolor.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbcolor.ForeColor = System.Drawing.Color.Black
        Me.rbcolor.Location = New System.Drawing.Point(302, 22)
        Me.rbcolor.Name = "rbcolor"
        Me.rbcolor.Size = New System.Drawing.Size(58, 21)
        Me.rbcolor.TabIndex = 4
        Me.rbcolor.TabStop = True
        Me.rbcolor.Tag = "Color"
        Me.rbcolor.Text = "Color"
        Me.rbcolor.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbcolor.UseVisualStyleBackColor = False
        '
        'LabelX2
        '
        Me.LabelX2.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.LabelX2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LabelX2.Font = New System.Drawing.Font("Segoe UI Symbol", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LabelX2.ForeColor = System.Drawing.Color.Black
        Me.LabelX2.Location = New System.Drawing.Point(15, 48)
        Me.LabelX2.Name = "LabelX2"
        Me.LabelX2.Size = New System.Drawing.Size(59, 23)
        Me.LabelX2.TabIndex = 1
        Me.LabelX2.Text = "Buscar:"
        '
        'dgvlista
        '
        Me.dgvlista.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.dgvlista.BackgroundColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        DataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle13.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle13.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle13.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle13.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle13.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle13.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgvlista.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle13
        Me.dgvlista.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle14.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        DataGridViewCellStyle14.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle14.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle14.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle14.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle14.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgvlista.DefaultCellStyle = DataGridViewCellStyle14
        Me.dgvlista.EnableHeadersVisualStyles = False
        Me.dgvlista.GridColor = System.Drawing.Color.FromArgb(CType(CType(200, Byte), Integer), CType(CType(200, Byte), Integer), CType(CType(200, Byte), Integer))
        Me.dgvlista.Location = New System.Drawing.Point(7, 101)
        Me.dgvlista.Name = "dgvlista"
        DataGridViewCellStyle15.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle15.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle15.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle15.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle15.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle15.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle15.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgvlista.RowHeadersDefaultCellStyle = DataGridViewCellStyle15
        Me.dgvlista.Size = New System.Drawing.Size(975, 323)
        Me.dgvlista.TabIndex = 4
        '
        'btn_Acep
        '
        Me.btn_Acep.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        Me.btn_Acep.ColorTable = DevComponents.DotNetBar.eButtonColor.Flat
        Me.btn_Acep.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_Acep.Image = CType(resources.GetObject("btn_Acep.Image"), System.Drawing.Image)
        Me.btn_Acep.Location = New System.Drawing.Point(377, 473)
        Me.btn_Acep.Name = "btn_Acep"
        Me.btn_Acep.Size = New System.Drawing.Size(108, 40)
        Me.btn_Acep.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.btn_Acep.TabIndex = 149
        Me.btn_Acep.Text = "Aceptar"
        Me.btn_Acep.TextColor = System.Drawing.Color.Black
        '
        'mesajeerror
        '
        Me.mesajeerror.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer))
        '
        '
        '
        Me.mesajeerror.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.mesajeerror.Font = New System.Drawing.Font("Segoe UI Semibold", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.mesajeerror.ForeColor = System.Drawing.Color.Black
        Me.mesajeerror.Location = New System.Drawing.Point(17, 444)
        Me.mesajeerror.Name = "mesajeerror"
        Me.mesajeerror.Size = New System.Drawing.Size(966, 23)
        Me.mesajeerror.TabIndex = 148
        Me.mesajeerror.Text = "LabelX2"
        Me.mesajeerror.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'StyleManager1
        '
        Me.StyleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.Office2007VistaGlass
        Me.StyleManager1.MetroColorParameters = New DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer)), System.Drawing.Color.FromArgb(CType(CType(146, Byte), Integer), CType(CType(170, Byte), Integer), CType(CType(177, Byte), Integer)))
        '
        'btnNuevo
        '
        Me.btnNuevo.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        Me.btnNuevo.ColorTable = DevComponents.DotNetBar.eButtonColor.Flat
        Me.btnNuevo.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnNuevo.Image = CType(resources.GetObject("btnNuevo.Image"), System.Drawing.Image)
        Me.btnNuevo.Location = New System.Drawing.Point(522, 473)
        Me.btnNuevo.Name = "btnNuevo"
        Me.btnNuevo.Size = New System.Drawing.Size(121, 41)
        Me.btnNuevo.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.btnNuevo.TabIndex = 181
        Me.btnNuevo.Text = "&Nuevo"
        Me.btnNuevo.TextColor = System.Drawing.Color.Black
        '
        'FrmListarProducto
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(995, 524)
        Me.Controls.Add(Me.btnNuevo)
        Me.Controls.Add(Me.btn_Acep)
        Me.Controls.Add(Me.mesajeerror)
        Me.Controls.Add(Me.dgvlista)
        Me.Controls.Add(Me.gbob)
        Me.DoubleBuffered = True
        Me.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Highlighter1.SetHighlightOnFocus(Me, True)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.KeyPreview = True
        Me.MaximizeBox = False
        Me.Name = "FrmListarProducto"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Listar Productos"
        Me.gbob.ResumeLayout(False)
        Me.gbob.PerformLayout()
        CType(Me.dgvlista, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Highlighter1 As DevComponents.DotNetBar.Validator.Highlighter
    Friend WithEvents gbob As System.Windows.Forms.GroupBox
    Friend WithEvents Rbenvase As System.Windows.Forms.RadioButton
    Friend WithEvents Rblogo As System.Windows.Forms.RadioButton
    Friend WithEvents RbTodos As System.Windows.Forms.RadioButton
    Friend WithEvents txtbusca As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents rbcat As System.Windows.Forms.RadioButton
    Friend WithEvents rbProducto As System.Windows.Forms.RadioButton
    Friend WithEvents rbcolor As System.Windows.Forms.RadioButton
    Friend WithEvents LabelX2 As DevComponents.DotNetBar.LabelX
    Friend WithEvents dgvlista As DevComponents.DotNetBar.Controls.DataGridViewX
    Friend WithEvents btn_Acep As DevComponents.DotNetBar.ButtonX
    Friend WithEvents mesajeerror As DevComponents.DotNetBar.LabelX
    Friend WithEvents StyleManager1 As DevComponents.DotNetBar.StyleManager
    Friend WithEvents RbNom_Com As System.Windows.Forms.RadioButton
    Friend WithEvents LBF2 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF3 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF4 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF5 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF6 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF7 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LbF8 As DevComponents.DotNetBar.LabelX
    Friend WithEvents btnNuevo As DevComponents.DotNetBar.ButtonX
End Class
