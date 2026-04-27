
Imports System.Activities.Tracking

Partial Class querypagedemo1
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "your first name is:" & Request.QueryString("fn").ToString()
        Label2.Text = "your last name is:" & Request.QueryString("ln").ToString()
    End Sub
End Class
