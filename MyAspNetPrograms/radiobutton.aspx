<%@ Page Language="VB" AutoEventWireup="false" CodeFile="radiobutton.aspx.vb" Inherits="radiobutton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            enter name<asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
        </div>
        <asp:RadioButton ID="rdbold" runat="server" AutoPostBack="True" GroupName="cfont" Text="bold" />
        <p>
            <asp:RadioButton ID="rditalic" runat="server" AutoPostBack="True" GroupName="cfont" Text="italic" />
        </p>
        <p>
            <asp:RadioButton ID="rdunderline" runat="server" AutoPostBack="True" GroupName="cfont" Text="underline" />
        </p>
        <asp:Label ID="Lblmsg" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
