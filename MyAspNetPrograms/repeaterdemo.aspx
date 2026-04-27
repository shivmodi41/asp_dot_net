<%@ Page Language="VB" AutoEventWireup="false" CodeFile="repeaterdemo.aspx.vb" Inherits="repeaterdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>
                    <table border="2">
                        <tr style="background-color:grey">
                            <th>roll</th>
                            <th>name</th>
                          
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color:aqua">
                        <td>
                            <asp:Label ID="lable1" runat="server" Text='<%# Eval("rollno") %>'></asp:Label>

                        </td>
                         <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>

                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
<tr style="background-color:tomato">
                        <td>
                            <asp:Label ID="lable1" runat="server" Text='<%# Eval("rollno") %>'></asp:Label>

                        </td>
                         <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>

                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <SeparatorTemplate>
                    <tr>
                        <td colspan="2" style="background-color:navy">
                            <hr />
                        </td>
                    </tr>
                </SeparatorTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <br />
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [rollno], [name] FROM [Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
