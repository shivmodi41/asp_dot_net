<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loginpage.aspx.vb" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            username<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            password<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="login" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registerpage.aspx">register</asp:HyperLink>
        </div>
    </form>
</body>
</html>
