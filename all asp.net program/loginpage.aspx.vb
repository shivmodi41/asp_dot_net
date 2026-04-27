Imports System.Data
Imports System.Data.SqlClient
Partial Class loginpage
    Inherits System.Web.UI.Page


    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ssql As String
    Dim da As SqlDataAdapter
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\all asp.net program\App_Data\studmgmt.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        ssql = "select rollno,name from table1 where username='" & TextBox1.Text & "' and password='" & TextBox2.Text & "'"
        da = New SqlDataAdapter(ssql, con)
        Dim dt As New DataTable()
        da.Fill(dt)

        Session("rn") = dt.Rows(0)("rollno")
            Session("nm") = dt.Rows(0)("name")
            Response.Redirect("welcomepage.aspx")

    End Sub
End Class
