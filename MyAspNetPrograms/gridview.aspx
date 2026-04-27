<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rollno" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="rollno" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
            </Fields>
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="rollno" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                rollno:
                <asp:Label ID="rollnoLabel1" runat="server" Text='<%# Eval("rollno") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                dept:
                <asp:TextBox ID="deptTextBox" runat="server" Text='<%# Bind("dept") %>' />
                <br />
                sem:
                <asp:TextBox ID="semTextBox" runat="server" Text='<%# Bind("sem") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                rollno:
                <asp:TextBox ID="rollnoTextBox" runat="server" Text='<%# Bind("rollno") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                dept:
                <asp:TextBox ID="deptTextBox" runat="server" Text='<%# Bind("dept") %>' />
                <br />
                sem:
                <asp:TextBox ID="semTextBox" runat="server" Text='<%# Bind("sem") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                rollno:
                <asp:Label ID="rollnoLabel" runat="server" Text='<%# Eval("rollno") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                dept:
                <asp:Label ID="deptLabel" runat="server" Text='<%# Bind("dept") %>' />
                <br />
                sem:
                <asp:Label ID="semLabel" runat="server" Text='<%# Bind("sem") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="rollno" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                rollno:
                <asp:Label ID="rollnoLabel" runat="server" Text='<%# Eval("rollno") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                dept:
                <asp:Label ID="deptLabel" runat="server" Text='<%# Eval("dept") %>' />
                <br />
                sem:
                <asp:Label ID="semLabel" runat="server" Text='<%# Eval("sem") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
