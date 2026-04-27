<%@ Page Language="VB" AutoEventWireup="false" CodeFile="hyperlinks.aspx.vb" Inherits="hyperlinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/welcomepage.aspx">welcome</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/editdeleteinfopage.aspx">edit info</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/editdeleteinfopage.aspx">delete info</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/search.aspx">search</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/logoutpage.aspx">logout</asp:HyperLink>
        </div>
    </form>
</body>
</html>
