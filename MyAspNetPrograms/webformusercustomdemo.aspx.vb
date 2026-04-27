
Partial Class webformusercustomdemo
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Page.IsPostBack) Then
            Label1.Text = "username is " & l1.userid & "<br/>password is " & l1.pass
        End If
    End Sub
End Class
