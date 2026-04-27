<%@ Page Language="VB" AutoEventWireup="false" CodeFile="radiobuttonlist.aspx.vb" Inherits="radiobuttonlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem>mca</asp:ListItem>
                <asp:ListItem>bca</asp:ListItem>
                <asp:ListItem>mba</asp:ListItem>
                <asp:ListItem>bba</asp:ListItem>
            </asp:RadioButtonList>
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
