
Partial Class checkbox
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub chkswp_CheckedChanged(sender As Object, e As EventArgs) Handles chkswp.CheckedChanged
        If chkswp.Checked Then
            thphone.Text = twphone.Text
        Else
            thphone.Text = ""
        End If
    End Sub
End Class
