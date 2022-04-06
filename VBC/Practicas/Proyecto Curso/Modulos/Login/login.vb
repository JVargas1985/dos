Imports System.Data.SqlClient

Public Class login
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Close()

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles txtpasword.TextChanged

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles txtlogin.TextChanged


    End Sub

    Private Sub TextBox1_Click(sender As Object, e As EventArgs) Handles txtlogin.Click
        txtlogin.Text = ""
        txtlogin.Focus()
    End Sub

    Private Sub txtpasword_Click(sender As Object, e As EventArgs) Handles txtpasword.Click
        txtpasword.Text = ""
        txtpasword.Focus()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        cargarusuarios()
        If datalistado.RowCount > 0 Then
            Dispose()
            menuprincipalmatriculas.ShowDialog()
        Else
            MessageBox.Show("Verifique su Usuario y contraseña", "Control de Acceso", MessageBoxButtons.OK, MessageBoxIcon.Information)

        End If
    End Sub

    Public Sub cargarusuarios()
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Try
            abrir()
            da = New SqlDataAdapter("validar_usuario", conexion)
            da.SelectCommand.CommandType = 4
            da.SelectCommand.Parameters.AddWithValue("@login", txtlogin.Text)
            da.SelectCommand.Parameters.AddWithValue("@password", txtpasword.Text)
            da.Fill(dt)
            datalistado.DataSource = dt
            cerrar()

        Catch ex As Exception

        End Try

    End Sub
End Class
