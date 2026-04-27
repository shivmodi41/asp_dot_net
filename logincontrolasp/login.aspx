<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server">
            </asp:Login>
            <br />
            <br />
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/registeration.aspx">new user</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                </AnonymousTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>
