Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Reflection.Emit

Partial Class insert
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ssql, dsql, usql As String
    Dim ins As String
    Dim da As SqlDataAdapter
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\i-u-d-v-asp\App_Data\studentdetails.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ins = "insert into student (rollno,name,percemtage) values(" & TextBox1.Text & ",'" _
        & TextBox2.Text & "'," & TextBox3.Text & ")"
        ' Response.Write(ins)
        cmd = New SqlCommand(ins, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Response.Write("data added")
        Catch ex As Exception
            '  Response.Write(ex.Message)
        End Try
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("display.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        usql = " update student set name='" _
        & TextBox2.Text & "',percemtage=" & TextBox3.Text & " where rollno=" & DropDownList1.SelectedValue
        cmd = New SqlCommand(usql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Response.Write("data edited")
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        dsql = "delete from student where rollno=" & DropDownList1.SelectedValue
        cmd = New SqlCommand(dsql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Response.Write("data deleted")
        Catch ex As Exception
        End Try
    End Sub
End Class
