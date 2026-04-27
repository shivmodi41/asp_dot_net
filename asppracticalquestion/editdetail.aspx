<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPagelaptop.master" AutoEventWireup="false" CodeFile="editdetail.aspx.vb" Inherits="editdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    edit details</p>
<p>
    model name:<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="modelname" DataValueField="modelname">
        <asp:ListItem>choose</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [modelname] FROM [laptopdetail]"></asp:SqlDataSource>
    </p>
<p>
    company name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    price:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="delete" style="height: 29px" />
</p>
<p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
</asp:Content>

