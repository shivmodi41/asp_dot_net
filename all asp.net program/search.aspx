<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            enter dept<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True">
                <asp:ListItem>choose</asp:ListItem>
                <asp:ListItem>comp</asp:ListItem>
                <asp:ListItem>mach</asp:ListItem>
                <asp:ListItem>civil</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="rollno" DataSourceID="SqlDataSource1" EmptyDataText="no data found" ForeColor="#333333" GridLines="None" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                    <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table1] WHERE ([dept] LIKE '%' + @dept + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dept" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table1] WHERE ([dept] = @dept)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddl" Name="dept" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="rollno" DataSourceID="SqlDataSource2" EmptyDataText="no data found" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="rollno" DataSourceID="SqlDataSource1" ForeColor="#333333">
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
                username:
                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
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
                username:
                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
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
                username:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="rollno" DataSourceID="SqlDataSource2" ForeColor="Black">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
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
                username:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    </form>
</body>
</html>
