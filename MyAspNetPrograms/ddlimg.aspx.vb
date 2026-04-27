
Partial Class ddlimg
    Inherits System.Web.UI.Page


    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedIndex = 0 Then
            Image1.ImageUrl = DropDownList1.SelectedValue
            Image1.AlternateText = DropDownList1.SelectedItem.Text
        ElseIf DropDownList1.SelectedIndex = 1 Then
            Image1.ImageUrl = DropDownList1.SelectedValue
            Image1.AlternateText = DropDownList1.SelectedItem.Text
        ElseIf DropDownList1.SelectedIndex = 2 Then
            Image1.ImageUrl = DropDownList1.SelectedValue
            Image1.AlternateText = DropDownList1.SelectedItem.Text
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Image1.ImageUrl = DropDownList2.SelectedValue
        Image1.AlternateText = DropDownList2.SelectedItem.Text
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Image1.ImageUrl = DropDownList2.SelectedValue
        Image1.AlternateText = DropDownList2.SelectedItem.Text
    End Sub
End Class
