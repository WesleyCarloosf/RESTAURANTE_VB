Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class Configurar_mesas_ok


    Dim foco As String = "Salon 1"
    Sub dibujar_salones()
        FlowLayoutPanel1.Controls.Clear()
        Try
            abrir()
            Dim con As String = "mostrar_SALON"
            Dim cmd As New SqlCommand(con, conexion)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@buscar", txtbuscar.Text)
            Dim rdr As SqlDataReader = cmd.ExecuteReader()
            While rdr.Read
                Dim b As New Button
                Dim panelc1 As New Panel
                Dim panellateral As New Panel

                b.Text = rdr("Salon").ToString
                b.Name = rdr("Id_salon").ToString
                b.Dock = DockStyle.Fill
                b.BackColor = Color.Transparent

                b.Font = New System.Drawing.Font(10, 12)
                b.FlatStyle = FlatStyle.Flat
                b.FlatAppearance.BorderSize = 0
                b.FlatAppearance.MouseDownBackColor = Color.FromArgb(64, 64, 64)
                b.FlatAppearance.MouseOverBackColor = Color.FromArgb(43, 43, 43)
                b.ForeColor = Color.White
                b.TextAlign = ContentAlignment.MiddleLeft
                panelc1.Size = New System.Drawing.Size(348, 100)
                panellateral.Size = New System.Drawing.Size(3, 58)
                panellateral.Dock = DockStyle.Left

                If foco = b.Text Then
                    panellateral.BackColor = Color.OrangeRed
                    b.BackColor = Color.FromArgb(60, 60, 60)

                Else
                    panellateral.BackColor = Color.Transparent
                    b.BackColor = Color.Transparent
                End If
                panelc1.Controls.Add(b)
                panelc1.Controls.Add(panellateral)
                FlowLayoutPanel1.Controls.Add(panelc1)
                b.BringToFront()
                panellateral.SendToBack()

                AddHandler b.Click, AddressOf btn_salon_Click

            End While
            Cerrar()
        Catch ex As Exception
            MessageBox.Show(ex.Message)

        End Try

    End Sub

    Dim id_salon As Integer
    Private Sub btn_salon_Click(ByVal sender As System.Object, ByVal e As EventArgs)
        Try
            foco = DirectCast(sender, Button).Text
            id_salon = DirectCast(sender, Button).Name
            dibujar_salones()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub


    Private Sub txtbuscar_TextChanged(sender As Object, e As EventArgs) Handles txtbuscar.TextChanged

        dibujar_salones()

    End Sub

    Private Sub Configurar_mesas_ok_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        frmPrueba.ShowDialog()
        dibujar_salones()





    End Sub
End Class
