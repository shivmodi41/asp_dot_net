
Imports System.Drawing

Partial Class radiobutton
    Inherits System.Web.UI.Page


    Protected Sub chgfont(sender As Object, e As EventArgs) Handles rdbold.CheckedChanged, rditalic.CheckedChanged, rdunderline.CheckedChanged
        If rdbold.Checked = True Then
            Lblmsg.Text = "you have selected bold "
            Txtname.Font.Bold = True
            Txtname.Font.Italic = False
            Txtname.Font.Underline = False
        ElseIf rditalic.Checked = True Then
            Lblmsg.Text = "you have selected italic "
            Txtname.Font.Italic = True
            Txtname.Font.Bold = False
            Txtname.Font.Underline = False
        ElseIf rdunderline.Checked = True Then
            Lblmsg.Text = "you have selected underline "
            Txtname.Font.Underline = True
            Txtname.Font.Bold = False
            Txtname.Font.Italic = False
        End If
    End Sub
End Class
