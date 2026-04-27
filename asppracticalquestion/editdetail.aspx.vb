Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Reflection.Emit
Partial Class editdetail
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim ssql, dsql, usql As String
    Dim reader As SqlDataReader
    Dim cstring As String = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asppracticalquestion\App_Data\laptopselling.mdf;Integrated Security=True"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        con = New SqlConnection(cstring)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        ssql = "select * from laptopdetail where modelname='" & DropDownList1.SelectedItem.Text & "'"
        cmd = New SqlCommand(ssql, con)
        Try
            con.Open()
            reader = cmd.ExecuteReader()
            While (reader.Read())
                DropDownList1.Text = reader.GetString(0)
                TextBox4.Text = reader.GetInt32(2).ToString()
                TextBox3.Text = reader.GetString(1)
            End While
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        usql = " update laptopdetail set company='" _
        & TextBox3.Text & "',price=" _
        & TextBox4.Text & " where modelname='" & DropDownList1.SelectedItem.Text & "'"
        cmd = New SqlCommand(usql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = TextBox3.Text & " update succesfully"
        Catch ex As Exception
            Label1.Text = TextBox3.Text & " not updated"
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        dsql = "delete from laptopdetail where modelname='" & DropDownList1.SelectedItem.Text & "'"
        cmd = New SqlCommand(dsql, con)
        Try
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = TextBox3.Text & " deleted"
        Catch ex As Exception
            Label1.Text = TextBox3.Text & " not deleted"
        Finally
            con.Close()
        End Try
    End Sub
End Class
