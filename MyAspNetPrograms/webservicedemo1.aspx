<%@ Page Language="VB" AutoEventWireup="false" CodeFile="webservicedemo1.aspx.vb" Inherits="webservicedemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="WebServicedemo.asmx/Add">
        <div>
            enter value of a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="a" runat="server"></asp:TextBox>
            <br />
            <br />
            enter value of b&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="b" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="calc" />
        </div>
    </form>
</body>
</html>
