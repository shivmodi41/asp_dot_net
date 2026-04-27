
Partial Class cookiecolordemo
    Inherits System.Web.UI.Page


    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        bodytag.Style("background-color") = DropDownList1.SelectedItem.Text
        Dim cookie As HttpCookie = New HttpCookie("bgcolor")
        cookie.Value = DropDownList1.SelectedValue
        cookie.Expires = DateAndTime.Now.AddMinutes(2)
        Response.SetCookie(cookie)
        Response.Redirect("colorcookiesdemo.aspx")
    End Sub
End Class
