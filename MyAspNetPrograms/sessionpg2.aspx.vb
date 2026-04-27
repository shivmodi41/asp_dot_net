
Partial Class sessionpg2
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = Session("nm").ToString()
        Label2.Text = Session("col").ToString()
    End Sub
End Class
