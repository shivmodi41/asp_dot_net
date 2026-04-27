
Partial Class panelcontrol
    Inherits System.Web.UI.Page


    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            Panel1.Visible = False
        Else
            Panel1.Visible = True

        End If
    End Sub
End Class
