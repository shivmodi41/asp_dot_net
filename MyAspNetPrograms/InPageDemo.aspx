<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub btnClick_Click(sender As Object, e As EventArgs)
        btnClick.Text = "Welcome TO Asp.Net"
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="Click Me" />
        </div>
    </form>
</body>
</html>
