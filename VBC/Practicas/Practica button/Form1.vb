Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Txtescribir.Text = "carga"
    End Sub

    Private Sub btnejecutar_Click(sender As Object, e As EventArgs) Handles btnejecutar.Click
        Txtescribir.Text = "Texto cambiado"
    End Sub
End Class
