Public Class Ingresar_instancia_sqlserver
    Private Sub Button2_Click(sender As Object, e As EventArgs)
        Close()

    End Sub

    Private Sub Ingresar_instancia_sqlserver_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtservidor.Focus()

    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        BIENVENIDO.txtservidor.Text = txtservidor.Text
        BIENVENIDO.Timer3.Start()
        Close()
        BIENVENIDO.txtservidor.Text = txtservidor.Text

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Close()

    End Sub
End Class