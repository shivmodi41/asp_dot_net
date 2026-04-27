
Partial Class listbox
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged
        If ListBox1.SelectedIndex = 0 Then
            Label1.Font.Name = "Arial"
        ElseIf ListBox1.SelectedIndex = 1 Then
            Label1.Font.Name = "Century Gothic"
        ElseIf ListBox1.SelectedIndex = 2 Then
            Label1.Font.Name = "Times New Roman"
        End If
    End Sub

    Protected Sub ListBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox2.SelectedIndexChanged
        If ListBox2.SelectedIndex = 0 Then
            Label1.Font.Size = "20"
        ElseIf ListBox2.SelectedIndex = 1 Then
            Label1.Font.Size = "30"
        ElseIf ListBox2.SelectedIndex = 2 Then
            Label1.Font.Size = "40"
        ElseIf ListBox2.SelectedIndex = 3 Then
            Label1.Font.Size = "50"
        End If
    End Sub
End Class
