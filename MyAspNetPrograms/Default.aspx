<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub btndisplay_Click(sender As Object, e As EventArgs)
        lblname.Text = "your name is" & TextBox1.Text


    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs)
        lblcity.Text = "your city name is" & TextBox2.Text
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="tname" runat="server" Text="enter your name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btndisplay" runat="server" OnClick="btndisplay_Click" Text="display" />
        <p>
            <asp:Label ID="city" runat="server" Text="enter your city"></asp:Label>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
