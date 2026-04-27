<%@ Page Language="VB" AutoEventWireup="false" CodeFile="imgmapdemo.aspx.vb" Inherits="imgmapdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 4px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageMap ID="ImageMap1" runat="server" CssClass="auto-style1" ImageUrl="~/imgmap.png">
                <asp:RectangleHotSpot Bottom="100" NavigateUrl="~/mphome.aspx" Right="200" />
                <asp:RectangleHotSpot Bottom="100" Left="200" NavigateUrl="~/radiobuttonlist.aspx" Right="400" />
                <asp:RectangleHotSpot Bottom="100" Left="400" NavigateUrl="~/checkbox.aspx" Right="600" />
            </asp:ImageMap>
        </p>
    </form>
</body>
</html>
