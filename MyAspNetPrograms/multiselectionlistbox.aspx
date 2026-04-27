<%@ Page Language="VB" AutoEventWireup="false" CodeFile="multiselectionlistbox.aspx.vb" Inherits="multiselectionlistbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem>english</asp:ListItem>
            <asp:ListItem>gujarati</asp:ListItem>
            <asp:ListItem>hindi</asp:ListItem>
            <asp:ListItem>marathi</asp:ListItem>
        </asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CommandName="add" Height="35px" Text="add" Width="200px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" CommandName="addall" Height="35px" Text="add all" Width="200px" />
&nbsp;
        <asp:Button ID="Button3" runat="server" CommandName="remove" Height="35px" Text="remove" Width="200px" />
&nbsp;
        <asp:Button ID="Button4" runat="server" CommandName="removeall" Height="35px" Text="remove all" Width="200px" />
    </form>
</body>
</html>
