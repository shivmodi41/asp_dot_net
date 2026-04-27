Imports System.Data
Imports System.Data.SqlClient

Partial Class registerpage
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ins As String
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\all asp.net program\App_Data\studmgmt.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ins = "insert into table1 values(" & txtrno.Text & ",'" _
        & txtnm.Text & "','" & ddl.SelectedItem.Text & "'," & txtsem.Text & ",'" _
        & txtuname.Text & "','" & txtpass.Text & "')"
        ' Response.Write(ins)
        cmd = New SqlCommand(ins, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = txtnm.Text & " register succesfully"
        Catch ex As Exception
            Label1.Text = txtnm.Text & " not register"
        Finally
            con.Close()
        End Try

    End Sub
End Class
