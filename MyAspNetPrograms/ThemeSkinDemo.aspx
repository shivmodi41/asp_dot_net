<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ThemeSkinDemo.aspx.vb" Inherits="ThemeSkinDemo" Theme="Blue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Hello"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" SkinID="lblMsg" Text="Weclome To Theme"></asp:Label>
            <br />
       <br />
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Thank YOu"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Button" />
            <br />
            </div>
    </form>
</body>
</html>
