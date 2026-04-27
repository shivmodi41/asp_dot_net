<%@ Page Language="VB" AutoEventWireup="false" CodeFile="formviewdemo.aspx.vb" Inherits="formviewdemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="true" OnPageIndexChanging="onPageIndexChanging">
                <ItemTemplate>
                    rollno:<asp:Label ID="label1" Text='<%# Bind("rollno") %>' runat="server" />
                    <br />
                      name:<asp:Label ID="label2" Text='<%# Bind("name") %>' runat="server" />
                    <br />
                     dept:<asp:Label ID="label3" Text='<%# Bind("dept") %>' runat="server" />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
