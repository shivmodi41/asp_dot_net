<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hyperlinkdemo.aspx.vb" Inherits="hyperlinkdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/checkbox.aspx">home</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ddlimg.aspx">about us</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/panigale-v4.jpg">contact us</asp:HyperLink>
        </div>
    </form>
</body>
</html>
