
Partial Class viewstatedemo
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim clickcounter As Integer

        clickcounter = Convert.ToInt16(ViewState("vcc")) + 1
        ViewState("vcc") = clickcounter
            Label1.Text = "button clicked" & clickcounter & "times"

    End Sub
End Class
