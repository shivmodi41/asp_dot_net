<%@ Page Language="VB" AutoEventWireup="false" CodeFile="menudemo.aspx.vb" Inherits="menudemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <DynamicHoverStyle BackColor="#0099FF" />
                <DynamicMenuStyle BackColor="#FFCC66" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/mphome.aspx" Target="_blank" Text="home" Value="home"></asp:MenuItem>
                    <asp:MenuItem Text="info" Value="info">
                        <asp:MenuItem NavigateUrl="~/gridview.aspx" Text="add" Value="add"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/listbox.aspx" Text="edit" Value="edit"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/checkboxlist.aspx" Text="contact us" Value="contact us"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#66FFFF" BorderColor="Red" BorderStyle="Double" BorderWidth="2px" />
                <StaticMenuStyle BackColor="#FF99FF" />
            </asp:Menu>
        </div>
        <asp:TreeView ID="TreeView1" runat="server">
            <HoverNodeStyle BackColor="#6600FF" />
            <LeafNodeStyle BackColor="#CC9900" HorizontalPadding="40px" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/colorcookiesdemo.aspx" Text="home" Value="home"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/dropdownlist.aspx" Text="info" Value="info">
                    <asp:TreeNode NavigateUrl="~/hyperlinkdemo.aspx" Text="add" Value="add"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Default2.aspx" Text="edit" Value="edit"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/querystringdemo.aspx" Text="contact us" Value="contact us"></asp:TreeNode>
            </Nodes>
            <NodeStyle BackColor="#FFCCCC" />
            <ParentNodeStyle BackColor="#CC66FF" />
        </asp:TreeView>
    </form>
</body>
</html>
