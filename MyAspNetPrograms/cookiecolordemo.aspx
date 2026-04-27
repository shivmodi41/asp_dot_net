<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cookiecolordemo.aspx.vb" Inherits="cookiecolordemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="bodytag" runat="server">
    <form id="form1" runat="server">
        <div>
            select color&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>red</asp:ListItem>
                <asp:ListItem>green</asp:ListItem>
                <asp:ListItem>blue</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
