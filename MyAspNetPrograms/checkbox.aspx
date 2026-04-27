<%@ Page Language="VB" AutoEventWireup="false" CodeFile="checkbox.aspx.vb" Inherits="checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lwphone" runat="server" Text="enter work phone"></asp:Label>
        </div>
        <p style="font-size: medium">
            <asp:TextBox ID="twphone" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lhphone" runat="server" Text="enter home phone"></asp:Label>
        <p>
            <asp:TextBox ID="thphone" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBox ID="chkswp" runat="server" AutoPostBack="True" Text="same as work phone" />
        </p>
    </form>
</body>
</html>
