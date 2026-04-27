Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Reflection.Emit

Partial Class editdeleteinfopage
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ssql, dsql, usql As String
    Dim reader As SqlDataReader
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\all asp.net program\App_Data\studmgmt.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub


    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        ssql = "select * from table1 where rollno=" & DropDownList1.SelectedItem.Text
        cmd = New SqlCommand(ssql, con)
        Try
            con.Open()
            reader = cmd.ExecuteReader()
            While (reader.Read())
                txtnm.Text = reader.GetString(1)
                txtsem.Text = reader.GetInt32(3).ToString()
                ddl.Text = reader.GetString(2)
            End While
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        usql = " update table1 set name='" _
        & txtnm.Text & "',dept='" & ddl.SelectedItem.Text & "',sem=" _
        & txtsem.Text & " where rollno=" & DropDownList1.SelectedItem.Text
        cmd = New SqlCommand(usql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = txtnm.Text & " update succesfully"
        Catch ex As Exception
            Label1.Text = txtnm.Text & " not updated"
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        dsql = "delete from table1 where rollno=" & DropDownList1.SelectedItem.Text
        cmd = New SqlCommand(dsql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = txtnm.Text & " deleted"
        Catch ex As Exception
            Label1.Text = txtnm.Text & " not deleted"
        Finally
            con.Close()
        End Try
    End Sub
End Class
