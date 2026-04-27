<%@ Page Language="VB" AutoEventWireup="false" CodeFile="editdeleteinfopage.aspx.vb" Inherits="editdeleteinfopage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            roll no<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="rollno" DataValueField="rollno" AutoPostBack="True">
                <asp:ListItem>choose</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [rollno] FROM [Table1]"></asp:SqlDataSource>
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
            <asp:Button ID="Button1" runat="server" Text="update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="delete" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
