<%@ Page Language="VB" AutoEventWireup="false" CodeFile="panelcontrol.aspx.vb" Inherits="panelcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="register form" Height="74px" ScrollBars="Auto" Width="549px">
            enter first name<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            enter last name<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </asp:Panel>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="hide the panel" />
    </form>
</body>
</html>
