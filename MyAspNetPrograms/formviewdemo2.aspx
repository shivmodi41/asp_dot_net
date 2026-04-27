<%@ Page Language="VB" AutoEventWireup="false" CodeFile="formviewdemo2.aspx.vb" Inherits="formviewdemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM Table1 WHERE (rollno = @rollno)" 
                InsertCommand="INSERT INTO Table1(rollno, name, dept, sem) VALUES (@rollno, @name, @dept, @sem)" 
                SelectCommand="SELECT Table1.* FROM Table1" 
                UpdateCommand="UPDATE Table1 SET name = @name, dept = @dept, sem = @sem WHERE (rollno = @rollno)">
                <DeleteParameters>
                    <asp:Parameter Name="rollno" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="rollno" />
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="dept" />
                    <asp:Parameter Name="sem" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="dept" />
                    <asp:Parameter Name="sem" />
                    <asp:Parameter Name="rollno" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
