
Partial Class checkboxlist
    Inherits System.Web.UI.Page




    Protected Sub CheckBoxList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckBoxList1.SelectedIndexChanged
        Label1.Text = "your favourit sport is<br>"
        For i = 0 To CheckBoxList1.Items.Count - 1
            If CheckBoxList1.Items(i).Selected Then
                Label1.Text += CheckBoxList1.Items(i).Text + "<br></br>"
            End If
        Next
    End Sub
End Class
