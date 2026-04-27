<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ddlimg.aspx.vb" Inherits="ddlimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="re-continental-gt.jpg">re gt</asp:ListItem>
            <asp:ListItem Value="fafery.jpg">ducati</asp:ListItem>
            <asp:ListItem Value="bikeimg.jpg">yamaha</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Value="re-continental-gt.jpg">re gt</asp:ListItem>
            <asp:ListItem Value="fafery.jpg">ducati</asp:ListItem>
            <asp:ListItem Value="bikeimg.jpg">yamaha</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Show" />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="124px" ImageUrl="panigale-v4.jpg" Width="269px" />
    </form>
</body>
</html>
