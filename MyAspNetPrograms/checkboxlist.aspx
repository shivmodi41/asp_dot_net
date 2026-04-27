<%@ Page Language="VB" AutoEventWireup="false" CodeFile="checkboxlist.aspx.vb" Inherits="checkboxlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
            <asp:ListItem>cricket</asp:ListItem>
            <asp:ListItem>vallyball</asp:ListItem>
            <asp:ListItem>tennis</asp:ListItem>
            <asp:ListItem>football</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
