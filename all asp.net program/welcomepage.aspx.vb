
Partial Class welcomepage
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = "your roll no is" & Session("rn") & "<br/><br/> your name is" & Session("nm")
    End Sub
End Class
