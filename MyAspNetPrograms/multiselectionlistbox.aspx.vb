
Partial Class multiselectionlistbox
    Inherits System.Web.UI.Page




    Protected Sub btntransfer(sender As Object, e As CommandEventArgs) Handles Button1.Command, Button2.Command, Button3.Command, Button4.Command
        If e.CommandName = "add" Then
            ListBox2.Items.Add(ListBox1.SelectedItem)
        ElseIf e.CommandName = "remove" Then
            ListBox1.Items.Remove(ListBox1.SelectedItem)
        ElseIf e.CommandName = "addall" Then
            For i = 0 To ListBox1.Items.Count - 1
                If ListBox1.Items(i).Selected Then
                    ListBox2.Items.Add(ListBox1.Items(i).Text)
                End If
            Next
        ElseIf e.CommandName = "removeall" Then
            For i = 0 To ListBox1.Items.Count - 1
                ListBox1.Items.Clear()
            Next
        End If
    End Sub
End Class
