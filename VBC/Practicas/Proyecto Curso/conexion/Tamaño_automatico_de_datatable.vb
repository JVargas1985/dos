Module Tamaño_automatico_de_datatable
    Public Sub Multilinea(ByRef List As DataGridView)
        List.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells

        List.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        List.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter
        List.DefaultCellStyle.WrapMode = DataGridViewTriState.True

        List.EnableHeadersVisualStyles = False
        Dim stycabeceras As DataGridViewCellStyle = New DataGridViewCellStyle()
        stycabeceras.BackColor = Color.White
        stycabeceras.ForeColor = Color.Black
        stycabeceras.Font = New Font("segoe UI", 10, FontStyle.Regular Or FontStyle.Bold)
        List.ColumnHeadersDefaultCellStyle = stycabeceras


    End Sub
End Module
