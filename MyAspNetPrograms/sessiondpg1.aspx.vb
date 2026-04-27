
Partial Class sessiondpg1
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("nm") = txtname.Text.ToString()
        Session("col") = txtcolor.Text.ToString()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Abandon() 'or'
        Session.Clear()  'or'
        Session.RemoveAll()
    End Sub
End Class
