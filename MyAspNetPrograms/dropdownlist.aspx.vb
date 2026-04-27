
Imports System.Drawing
Imports System.Reflection.Emit

Partial Class dropdownlist
    Inherits System.Web.UI.Page

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlcolor.SelectedIndexChanged
        If ddlcolor.SelectedIndex = 0 Then
            Label1.Text = "Select any color"
            Label1.ForeColor = System.Drawing.Color.White
        ElseIf ddlcolor.SelectedItem.Text = "Green" Then
            Label1.BackColor = System.Drawing.Color.Green
            Label1.ForeColor = System.Drawing.Color.White
        ElseIf ddlcolor.SelectedItem.Text = "Red" Then
            Label1.BackColor = System.Drawing.Color.Red
            Label1.ForeColor = System.Drawing.Color.White
        ElseIf ddlcolor.SelectedValue = "B" Then
            Label1.BackColor = System.Drawing.Color.Blue
            Label1.ForeColor = System.Drawing.Color.White

        End If


    End Sub
End Class
