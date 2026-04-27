
Partial Class registeration
    Inherits System.Web.UI.Page


    Protected Sub CreateUserWizard1_ContinueButtonClick(sender As Object, e As EventArgs) Handles CreateUserWizard1.ContinueButtonClick
        Response.Redirect("login.aspx")
    End Sub
End Class
