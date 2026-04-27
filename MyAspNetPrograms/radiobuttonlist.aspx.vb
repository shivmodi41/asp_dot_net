
Partial Class radiobuttonlist
    Inherits System.Web.UI.Page


    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Label1.Text = "my study field is<br>"
        If RadioButtonList1.SelectedIndex = 0 Then
            Label1.Text += "mca"
        ElseIf RadioButtonList1.SelectedIndex = 1 Then
            Label1.Text += "bca"
        ElseIf RadioButtonList1.SelectedIndex = 2 Then
            Label1.Text += "mba"
        ElseIf RadioButtonList1.SelectedIndex = 3 Then
            Label1.Text += "bba"
        End If
    End Sub
End Class
