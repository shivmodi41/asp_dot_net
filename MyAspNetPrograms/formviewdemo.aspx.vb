Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class formviewdemo
    Inherits System.Web.UI.Page
    Private con As SqlConnection
    Private da As SqlDataAdapter
    Private ssql As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.BindFormView()
    End Sub
    Private Sub BindFormView()
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        ssql = "select rollno,name,dept from table1"
        da = New SqlDataAdapter(ssql, con)
        Dim dt As New DataTable()
        da.Fill(dt)
        Try
            con.Open()
            FormView1.DataSource = dt
            FormView1.DataBind()
        Finally
            con.Close()

        End Try
    End Sub
    Public Sub onPageIndexChanging(ByVal sender As Object, ByVal e As FormViewPageEventArgs)
        FormView1.PageIndex = e.NewPageIndex
        Me.BindFormView()
    End Sub
End Class
