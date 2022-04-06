<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
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
        Me.btnejecutar = New System.Windows.Forms.Button()
        Me.Txtescribir = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'btnejecutar
        '
        Me.btnejecutar.Location = New System.Drawing.Point(283, 142)
        Me.btnejecutar.Name = "btnejecutar"
        Me.btnejecutar.Size = New System.Drawing.Size(146, 40)
        Me.btnejecutar.TabIndex = 0
        Me.btnejecutar.Text = "Ejecutar"
        Me.btnejecutar.UseVisualStyleBackColor = True
        '
        'Txtescribir
        '
        Me.Txtescribir.Location = New System.Drawing.Point(283, 98)
        Me.Txtescribir.Name = "Txtescribir"
        Me.Txtescribir.Size = New System.Drawing.Size(146, 20)
        Me.Txtescribir.TabIndex = 1
        Me.Txtescribir.Text = "Hola mundo"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.Txtescribir)
        Me.Controls.Add(Me.btnejecutar)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btnejecutar As Button
    Friend WithEvents Txtescribir As TextBox
End Class
