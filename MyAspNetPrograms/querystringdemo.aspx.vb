
Partial Class querystrindemo
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("querystringdemo1.aspx?fn=" & TextBox1.Text & "&ln=" & TextBox2.Text)
    End Sub
End Class
