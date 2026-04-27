
Partial Class complexbindinmg
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not (Page.IsPostBack) Then
            Dim mycountries As New ArrayList
            mycountries.Add("india")
            mycountries.Add("usa")
            mycountries.Add("uk")
            RadioButtonList1.DataSource = mycountries
            RadioButtonList1.DataBind()
            DropDownList1.DataSource = mycountries
            DropDownList1.DataBind()


        End If
    End Sub

    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Label1.Text = "ypur fav countries is :" & RadioButtonList1.SelectedItem.Text

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label2.Text = "ypur fav countries is :" & DropDownList1.SelectedItem.Text
    End Sub
End Class
