Public Class Ejercicios
    Private Sub Ejercicios_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim fecha As Date
        Dim mensaje As String

        mensaje = "HOLA MUNDO"
        lblmensaje.Text = mensaje

        fecha = Date.Now
        lblfecha.Text = fecha


    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim numero1 As Double
        Dim numero2 As Double
        Dim resultado As Double

        numero1 = txtNumero1.Text
        numero2 = txtNumero2.Text

        resultado = numero1 + numero2
        txtResultado.Text = resultado
    End Sub
End Class
