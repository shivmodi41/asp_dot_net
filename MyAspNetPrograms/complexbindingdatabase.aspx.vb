Imports System.Data
Imports System.Data.SqlClient
Partial Class complexbindingdatabase
    Inherits System.Web.UI.Page
    Private con As SqlConnection
    Private ssql As String
    Private strcon As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\MyAspNetPrograms\App_Data\studmgmt.mdf;Integrated Security=True;"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(strcon)
        If (Page.IsPostBack = False) Then
            bindddl()

        End If
    End Sub
    Private Sub bindddl()
        ssql = "select rollno,name from Table1"
        Dim cmd As SqlCommand = New SqlCommand(ssql, con)
        Try
            con.Open()
            DropDownList1.DataSource = cmd.ExecuteReader()
            DropDownList1.DataTextField = "name"
            DropDownList1.DataValueField = "rollno"
            DropDownList1.DataBind()
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ssql = "select * from Table1"
        Dim cmd As SqlCommand = New SqlCommand(ssql, con)
        Try
            con.Open()
            GridView1.DataSource = cmd.ExecuteReader()
            GridView1.DataBind()
            con.Close()
            con.Open()
            DetailsView1.DataSource = cmd.ExecuteReader()
            DetailsView1.DataBind()
            con.Close()
        Finally
            con.Close()
        End Try
    End Sub
End Class
