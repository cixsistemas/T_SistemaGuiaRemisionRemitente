<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmListarUbigeo
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle3 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmListarUbigeo))
        Me.StyleManager1 = New DevComponents.DotNetBar.StyleManager(Me.components)
        Me.Highlighter1 = New DevComponents.DotNetBar.Validator.Highlighter()
        Me.txtbusca = New DevComponents.DotNetBar.Controls.TextBoxX()
        Me.LabelX1 = New DevComponents.DotNetBar.LabelX()
        Me.rbdistrito = New System.Windows.Forms.RadioButton()
        Me.rbprovincia = New System.Windows.Forms.RadioButton()
        Me.rbdepartamento = New System.Windows.Forms.RadioButton()
        Me.dgvlista = New DevComponents.DotNetBar.Controls.DataGridViewX()
        Me.btn_Acep = New DevComponents.DotNetBar.ButtonX()
        Me.mesajeerror = New DevComponents.DotNetBar.LabelX()
        Me.gbob = New System.Windows.Forms.GroupBox()
        Me.LBF4 = New DevComponents.DotNetBar.LabelX()
        Me.LBF3 = New DevComponents.DotNetBar.LabelX()
        Me.LBF2 = New DevComponents.DotNetBar.LabelX()
        CType(Me.dgvlista, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.gbob.SuspendLayout()
        Me.SuspendLayout()
        '
        'StyleManager1
        '
        Me.StyleManager1.ManagerStyle = DevComponents.DotNetBar.eStyle.Office2007VistaGlass
        Me.StyleManager1.MetroColorParameters = New DevComponents.DotNetBar.Metro.ColorTables.MetroColorGeneratorParameters(System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer)), System.Drawing.Color.FromArgb(CType(CType(146, Byte), Integer), CType(CType(170, Byte), Integer), CType(CType(177, Byte), Integer)))
        '
        'Highlighter1
        '
        Me.Highlighter1.ContainerControl = Me
        '
        'txtbusca
        '
        Me.txtbusca.BackColor = System.Drawing.SystemColors.Control
        '
        '
        '
        Me.txtbusca.Border.Class = "TextBoxBorder"
        Me.txtbusca.Border.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.txtbusca.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtbusca.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtbusca.ForeColor = System.Drawing.SystemColors.ControlText
        Me.Highlighter1.SetHighlightOnFocus(Me.txtbusca, True)
        Me.txtbusca.Location = New System.Drawing.Point(198, 47)
        Me.txtbusca.Name = "txtbusca"
        Me.txtbusca.Size = New System.Drawing.Size(341, 23)
        Me.txtbusca.TabIndex = 0
        '
        'LabelX1
        '
        Me.LabelX1.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        '
        '
        '
        Me.LabelX1.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LabelX1.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LabelX1.ForeColor = System.Drawing.Color.Black
        Me.LabelX1.Location = New System.Drawing.Point(14, 47)
        Me.LabelX1.Name = "LabelX1"
        Me.LabelX1.Size = New System.Drawing.Size(178, 23)
        Me.LabelX1.TabIndex = 1
        Me.LabelX1.Text = "Ingrese Ubigeo a Buscar:"
        '
        'rbdistrito
        '
        Me.rbdistrito.AutoSize = True
        Me.rbdistrito.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        Me.rbdistrito.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbdistrito.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbdistrito.ForeColor = System.Drawing.Color.Black
        Me.rbdistrito.Location = New System.Drawing.Point(6, 20)
        Me.rbdistrito.Name = "rbdistrito"
        Me.rbdistrito.Size = New System.Drawing.Size(72, 21)
        Me.rbdistrito.TabIndex = 4
        Me.rbdistrito.TabStop = True
        Me.rbdistrito.Tag = "Distrito"
        Me.rbdistrito.Text = "Distrito"
        Me.rbdistrito.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbdistrito.UseVisualStyleBackColor = False
        '
        'rbprovincia
        '
        Me.rbprovincia.AutoSize = True
        Me.rbprovincia.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        Me.rbprovincia.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbprovincia.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbprovincia.ForeColor = System.Drawing.Color.Black
        Me.rbprovincia.Location = New System.Drawing.Point(135, 20)
        Me.rbprovincia.Name = "rbprovincia"
        Me.rbprovincia.Size = New System.Drawing.Size(82, 21)
        Me.rbprovincia.TabIndex = 3
        Me.rbprovincia.TabStop = True
        Me.rbprovincia.Tag = "Provincia"
        Me.rbprovincia.Text = "Provincia"
        Me.rbprovincia.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbprovincia.UseVisualStyleBackColor = False
        '
        'rbdepartamento
        '
        Me.rbdepartamento.AutoSize = True
        Me.rbdepartamento.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        Me.rbdepartamento.FlatAppearance.CheckedBackColor = System.Drawing.Color.Red
        Me.rbdepartamento.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.rbdepartamento.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(CType(CType(128, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.rbdepartamento.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.rbdepartamento.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.rbdepartamento.ForeColor = System.Drawing.Color.Black
        Me.rbdepartamento.Location = New System.Drawing.Point(274, 20)
        Me.rbdepartamento.Name = "rbdepartamento"
        Me.rbdepartamento.Size = New System.Drawing.Size(114, 21)
        Me.rbdepartamento.TabIndex = 2
        Me.rbdepartamento.TabStop = True
        Me.rbdepartamento.Tag = "Departamento"
        Me.rbdepartamento.Text = "Departamento"
        Me.rbdepartamento.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rbdepartamento.UseVisualStyleBackColor = False
        '
        'dgvlista
        '
        Me.dgvlista.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgvlista.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle1
        Me.dgvlista.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.dgvlista.DefaultCellStyle = DataGridViewCellStyle2
        Me.dgvlista.EnableHeadersVisualStyles = False
        Me.dgvlista.GridColor = System.Drawing.Color.FromArgb(CType(CType(208, Byte), Integer), CType(CType(215, Byte), Integer), CType(CType(229, Byte), Integer))
        Me.dgvlista.Location = New System.Drawing.Point(8, 101)
        Me.dgvlista.Name = "dgvlista"
        Me.dgvlista.ReadOnly = True
        DataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control
        DataGridViewCellStyle3.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.WindowText
        DataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.dgvlista.RowHeadersDefaultCellStyle = DataGridViewCellStyle3
        Me.dgvlista.Size = New System.Drawing.Size(550, 201)
        Me.dgvlista.TabIndex = 5
        '
        'btn_Acep
        '
        Me.btn_Acep.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton
        Me.btn_Acep.ColorTable = DevComponents.DotNetBar.eButtonColor.Flat
        Me.btn_Acep.Font = New System.Drawing.Font("Segoe UI", 11.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn_Acep.Image = CType(resources.GetObject("btn_Acep.Image"), System.Drawing.Image)
        Me.btn_Acep.Location = New System.Drawing.Point(231, 350)
        Me.btn_Acep.Name = "btn_Acep"
        Me.btn_Acep.Size = New System.Drawing.Size(107, 40)
        Me.btn_Acep.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled
        Me.btn_Acep.TabIndex = 16
        Me.btn_Acep.Text = "Aceptar"
        Me.btn_Acep.TextColor = System.Drawing.Color.Black
        '
        'mesajeerror
        '
        Me.mesajeerror.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        '
        '
        '
        Me.mesajeerror.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.mesajeerror.Font = New System.Drawing.Font("Segoe UI Semibold", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.mesajeerror.ForeColor = System.Drawing.Color.Black
        Me.mesajeerror.Location = New System.Drawing.Point(11, 317)
        Me.mesajeerror.Name = "mesajeerror"
        Me.mesajeerror.Size = New System.Drawing.Size(547, 23)
        Me.mesajeerror.TabIndex = 17
        Me.mesajeerror.Text = "LabelX2"
        Me.mesajeerror.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'gbob
        '
        Me.gbob.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        Me.gbob.Controls.Add(Me.LBF4)
        Me.gbob.Controls.Add(Me.LBF3)
        Me.gbob.Controls.Add(Me.LBF2)
        Me.gbob.Controls.Add(Me.rbdepartamento)
        Me.gbob.Controls.Add(Me.rbprovincia)
        Me.gbob.Controls.Add(Me.rbdistrito)
        Me.gbob.Controls.Add(Me.LabelX1)
        Me.gbob.Controls.Add(Me.txtbusca)
        Me.gbob.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.gbob.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gbob.ForeColor = System.Drawing.Color.Black
        Me.gbob.Location = New System.Drawing.Point(8, 12)
        Me.gbob.Name = "gbob"
        Me.gbob.Size = New System.Drawing.Size(550, 83)
        Me.gbob.TabIndex = 1
        Me.gbob.TabStop = False
        Me.gbob.Text = "Seleccione opciones de busqueda:"
        '
        'LBF4
        '
        Me.LBF4.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        '
        '
        '
        Me.LBF4.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF4.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF4.ForeColor = System.Drawing.Color.Black
        Me.LBF4.Location = New System.Drawing.Point(392, 19)
        Me.LBF4.Name = "LBF4"
        Me.LBF4.Size = New System.Drawing.Size(33, 23)
        Me.LBF4.TabIndex = 8
        Me.LBF4.Text = " [F4]"
        Me.LBF4.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF3
        '
        Me.LBF3.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        '
        '
        '
        Me.LBF3.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF3.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF3.ForeColor = System.Drawing.Color.Black
        Me.LBF3.Location = New System.Drawing.Point(215, 18)
        Me.LBF3.Name = "LBF3"
        Me.LBF3.Size = New System.Drawing.Size(33, 23)
        Me.LBF3.TabIndex = 7
        Me.LBF3.Text = " [F3]"
        Me.LBF3.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'LBF2
        '
        Me.LBF2.BackColor = System.Drawing.Color.FromArgb(CType(CType(254, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(248, Byte), Integer))
        '
        '
        '
        Me.LBF2.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square
        Me.LBF2.Font = New System.Drawing.Font("Segoe UI Symbol", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LBF2.ForeColor = System.Drawing.Color.Black
        Me.LBF2.Location = New System.Drawing.Point(76, 18)
        Me.LBF2.Name = "LBF2"
        Me.LBF2.Size = New System.Drawing.Size(33, 23)
        Me.LBF2.TabIndex = 6
        Me.LBF2.Text = " [F2]"
        Me.LBF2.TextAlignment = System.Drawing.StringAlignment.Center
        '
        'frmListarUbigeo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(570, 401)
        Me.Controls.Add(Me.gbob)
        Me.Controls.Add(Me.mesajeerror)
        Me.Controls.Add(Me.btn_Acep)
        Me.Controls.Add(Me.dgvlista)
        Me.DoubleBuffered = True
        Me.Font = New System.Drawing.Font("Segoe UI", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.KeyPreview = True
        Me.Name = "frmListarUbigeo"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Listar Ubigeos"
        CType(Me.dgvlista, System.ComponentModel.ISupportInitialize).EndInit()
        Me.gbob.ResumeLayout(False)
        Me.gbob.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents StyleManager1 As DevComponents.DotNetBar.StyleManager
    Friend WithEvents Highlighter1 As DevComponents.DotNetBar.Validator.Highlighter
    Friend WithEvents LabelX1 As DevComponents.DotNetBar.LabelX
    Friend WithEvents txtbusca As DevComponents.DotNetBar.Controls.TextBoxX
    Friend WithEvents rbdistrito As System.Windows.Forms.RadioButton
    Friend WithEvents rbprovincia As System.Windows.Forms.RadioButton
    Friend WithEvents rbdepartamento As System.Windows.Forms.RadioButton
    Friend WithEvents dgvlista As DevComponents.DotNetBar.Controls.DataGridViewX
    Friend WithEvents btn_Acep As DevComponents.DotNetBar.ButtonX
    Friend WithEvents mesajeerror As DevComponents.DotNetBar.LabelX
    Friend WithEvents gbob As System.Windows.Forms.GroupBox
    Friend WithEvents LBF2 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF3 As DevComponents.DotNetBar.LabelX
    Friend WithEvents LBF4 As DevComponents.DotNetBar.LabelX
End Class
