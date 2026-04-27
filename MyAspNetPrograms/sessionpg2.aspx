<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sessionpg2.aspx.vb" Inherits="sessionpg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            your name is<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            your favourite color is<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/sessiondpg1.aspx">go to session page 1</asp:HyperLink>
        </div>
    </form>
</body>
</html>
