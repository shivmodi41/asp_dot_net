Imports System.Data
Imports System.Data.SqlClient
Partial Class adddetail
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ins As String
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asppracticalquestion\App_Data\laptopselling.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ins = "insert into laptopdetail values('" & TextBox1.Text & "','" & TextBox2.Text & "'," & TextBox3.Text & ")"
        ' Response.Write(ins)
        cmd = New SqlCommand(ins, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = TextBox1.Text & " ADD succesfully"
        Catch ex As Exception
            Label1.Text = TextBox1.Text & " not added"
        Finally
            con.Close()
        End Try
    End Sub
End Class
