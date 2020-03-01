Imports System.Data.SqlClient

Public Class frmPrueba
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            abrir()
            Dim con As String = "a"
            Dim cmd As New SqlCommand(con, conexion)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@salon", TextBox1.Text)
            cmd.ExecuteNonQuery()
            Cerrar()

        Catch ex As Exception
            MsgBox("Error " & ex.Message)

        End Try
        Me.Dispose()

    End Sub
End Class