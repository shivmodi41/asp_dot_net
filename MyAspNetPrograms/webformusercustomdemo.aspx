<%@register Tagprefix="mylogin" TagName="login" Src="~/loginuserdemo.ascx" %>
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="webformusercustomdemo.aspx.vb" Inherits="webformusercustomdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <mylogin:login id="l1" runat="server" userid="enter your name" pass="1234"/>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
