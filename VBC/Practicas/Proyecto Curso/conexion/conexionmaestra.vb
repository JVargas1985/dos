Imports System.Data.SqlClient

Module conexionmaestra
    Public conexion As New SqlConnection("Data source=SIS-JVARGAS;Initial Catalog=BASECOLEGIO;Integrated Security=True")
    Sub abrir()
        If conexion.State = 0 Then
            conexion.Open()

        End If

    End Sub

    Sub cerrar()
        If conexion.State = 1 Then
            conexion.Close()

        End If
    End Sub
End Module
