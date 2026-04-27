
Partial Class logoutpage
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session.Abandon()
        Session.Clear()
        Session.RemoveAll()
        Response.Redirect("loginpage.aspx")
    End Sub
End Class
