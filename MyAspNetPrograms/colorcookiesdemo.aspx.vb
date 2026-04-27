
Partial Class colorcookiesdemo
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Not Request.Cookies("bgcolor") Is
System.DBNull.Value Then
            Label1.Text = "cookie value is " & Request.Cookies("bgcolor").Value
            Label1.ForeColor = Drawing.Color.White
            Label1.Style("background-color") = Request.Cookies("bgcolor").Value
        End If
    End Sub
End Class
