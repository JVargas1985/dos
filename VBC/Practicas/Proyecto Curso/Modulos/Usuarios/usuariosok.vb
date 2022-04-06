Imports System.Data.SqlClient

Public Class usuariosok
    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Close()
    End Sub

    Private Sub usuariosok_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        pnlcaptura.Visible = False
        mostrar()

    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        pnlcaptura.Visible = True
    End Sub

    Private Sub GuardarToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GuardarToolStripMenuItem.Click
        Try
            Dim cmd As New SqlCommand
            abrir()
            cmd = New SqlCommand("insertar_usuario", conexion)
            cmd.CommandType = 4
            cmd.Parameters.AddWithValue("@nombres", txtnombre.Text)
            cmd.Parameters.AddWithValue("@login", txtlogin.Text)
            cmd.Parameters.AddWithValue("@password", txtcontraseña.Text)
            cmd.ExecuteNonQuery()
            cerrar()
            mostrar()
            pnlcaptura.Visible = False


        Catch ex As Exception : MsgBox(ex.Message)


        End Try


    End Sub

    Sub mostrar()
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Try
            abrir()
            da = New SqlDataAdapter("mostrar_usuario", conexion)
            da.Fill(dt)
            datalistado.DataSource = dt

            cerrar()
            Multilinea(datalistado)


        Catch ex As Exception : MessageBox.Show(ex.Message)


        End Try
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint

    End Sub



    Private Sub datalistado_CellDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles datalistado.CellDoubleClick
        Try
            pnlcaptura.Visible = True
            GuardarToolStripMenuItem.Visible = False
            GuardarCambiosToolStripMenuItem.Visible = True

            txtnombre.Text = datalistado.SelectedCells.Item(2).Value
            txtlogin.Text = datalistado.SelectedCells.Item(3).Value
            txtcontraseña.Text = datalistado.SelectedCells.Item(4).Value
            lblusuario.Text = datalistado.SelectedCells.Item(1).Value


        Catch ex As Exception

        End Try
    End Sub

    Private Sub GuardarCambiosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GuardarCambiosToolStripMenuItem.Click
        Try
            Dim cmd As New SqlCommand
            abrir()
            cmd = New SqlCommand("editar_usuario", conexion)
            cmd.CommandType = 4
            cmd.Parameters.AddWithValue("@idusuario", lblusuario.Text)
            cmd.Parameters.AddWithValue("@nombres", txtnombre.Text)
            cmd.Parameters.AddWithValue("@login", txtlogin.Text)
            cmd.Parameters.AddWithValue("@password", txtcontraseña.Text)
            cmd.ExecuteNonQuery()
            cerrar()
            mostrar()
            pnlcaptura.Visible = False

            '@idusuario int,
            '@nombres varchar(50),
            '@login varchar(50),
            '@password varchar(50)


        Catch ex As Exception : MsgBox(ex.Message)


        End Try

    End Sub

    Private Sub datalistado_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles datalistado.CellContentClick

    End Sub

    Private Sub datalistado_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles datalistado.CellClick
        If e.ColumnIndex = Me.datalistado.Columns.Item("eli").Index Then
            Dim result As DialogResult
            result = MessageBox.Show("Desea eliminar al usuario?", "eliminando registros", MessageBoxButtons.OKCancel, MessageBoxIcon.Question)
            If result = DialogResult.OK Then
                Try

                    Dim cmd As New SqlCommand
                    abrir()
                    cmd = New SqlCommand("eliminar_usuario", conexion)
                    cmd.CommandType = 4
                    cmd.Parameters.AddWithValue("@idusuario", datalistado.SelectedCells.Item(1).Value)


                    cmd.ExecuteNonQuery()
                    cerrar()
                    mostrar()


                    '@idusuario int,
                    '@nombres varchar(50),
                    '@login varchar(50),
                    '@password varchar(50)


                Catch ex As Exception : MsgBox(ex.Message)


                End Try

            Else
                MessageBox.Show("Cancelando eliminación de registros", "Eliminando Registros", MessageBoxButtons.OK, MessageBoxIcon.Information)
            End If
        End If

    End Sub
    Sub buscar()
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        Try
            abrir()
            da = New SqlDataAdapter("buscar_usuarios", conexion)
            da.SelectCommand.CommandType = 4
            da.SelectCommand.Parameters.AddWithValue("@letra", txtbusca.Text)



            da.Fill(dt)
            datalistado.DataSource = dt

            cerrar()

        Catch ex As Exception : MessageBox.Show(ex.Message)


        End Try
    End Sub
    Private Sub txtbusca_TextChanged(sender As Object, e As EventArgs) Handles txtbusca.TextChanged
        buscar()
    End Sub
End Class