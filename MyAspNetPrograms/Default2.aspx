<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <asp:Button ID="Btnadd" runat="server" CommandName="add" Text="add" Font-Bold="True" Font-Size="16pt" Height="40px" Width="200px" />
            <br /><br />
       
        <asp:Button ID="btnedit" runat="server" CommandName="edit" Text="edit" Font-Bold="True" Font-Size="16pt" Height="40px" Width="200px" />
        <br /><br />
            <asp:Button ID="btnremove" runat="server" CommandName="remove" Height="40px" Text="remove" Font-Bold="True" Font-Size="16pt" Width="200px" />
        <br /><br />
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
