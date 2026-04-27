<%@ Page Language="VB" AutoEventWireup="false" CodeFile="complexbindingdatabase.aspx.vb" Inherits="complexbindingdatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            student&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="load data" />
        </div>
    </form>
</body>
</html>
