
Imports System.Reflection.Emit

Partial Class applicationstatedemo
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim count As Integer = 0
        If (Application("visit") Is Nothing) Then
            count = 1
        Else
            count = Convert.ToInt32(Application("visit")) + 1
        End If
        Application("visit") = count
        Label1.Text = "total visit=" & count
    End Sub
End Class
