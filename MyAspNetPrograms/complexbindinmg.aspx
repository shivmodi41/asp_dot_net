<%@ Page Language="VB" AutoEventWireup="false" CodeFile="complexbindinmg.aspx.vb" Inherits="complexbindinmg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            country<br />
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        country<br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
