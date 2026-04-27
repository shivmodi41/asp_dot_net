<%@ Page Language="VB" AutoEventWireup="false" CodeFile="dropdownlist.aspx.vb" Inherits="dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            select color
            <asp:DropDownList ID="ddlcolor" runat="server" AutoPostBack="True">
                <asp:ListItem Value="NA">Choose</asp:ListItem>
                <asp:ListItem Value="R">Red</asp:ListItem>
                <asp:ListItem Value="B">Blue</asp:ListItem>
                <asp:ListItem Value="G">Green</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Label ID="Label1" runat="server" Text="welcome to asp.net"></asp:Label>
    </form>
</body>
</html>
