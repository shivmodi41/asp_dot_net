<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registerpage.aspx.vb" Inherits="registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            roll no<asp:TextBox ID="txtrno" runat="server"></asp:TextBox>
            <br />
            <br />
            name<asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
            <br />
            <br />
            dept<asp:DropDownList ID="ddl" runat="server">
                <asp:ListItem>choose</asp:ListItem>
                <asp:ListItem>comp</asp:ListItem>
                <asp:ListItem>mach</asp:ListItem>
                <asp:ListItem>civil</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            sem<asp:TextBox ID="txtsem" runat="server"></asp:TextBox>
            <br />
            <br />
            username<asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            <br />
            <br />
            password<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            <br />
            <br />
            conform password<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="register" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        </div>
    </form>
</body>
</html>
