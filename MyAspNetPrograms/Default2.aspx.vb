
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub ShowMsg(sender As Object, e As CommandEventArgs) Handles Btnadd.Command, btnedit.Command, btnremove.Command
        If e.CommandName = "add" Then
            lblmsg.Text = "you have clicked add button"
        ElseIf e.CommandName = "edit" Then
            lblmsg.Text = "you have clicked edit button"
        ElseIf e.CommandName = "remove" Then
            lblmsg.Text = "you have clicked remove button"
        End If
    End Sub
End Class
