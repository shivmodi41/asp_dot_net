<%@ Page Language="VB" AutoEventWireup="false" CodeFile="listbox.aspx.vb" Inherits="listbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True">
            <asp:ListItem>Arial</asp:ListItem>
            <asp:ListItem>century gothic</asp:ListItem>
            <asp:ListItem>times new roman</asp:ListItem>
        </asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True">
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>40</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
        </asp:ListBox>
        

        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="hello how are you"></asp:Label>
        

    </form>
</body>
</html>
