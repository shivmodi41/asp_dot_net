<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPagelaptop.master" AutoEventWireup="false" CodeFile="adddetail.aspx.vb" Inherits="adddetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    add detail</p>
<p>
    model name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</p>
<p>
    &nbsp;</p>
<p>
    company name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</p>
<p>
    &nbsp;</p>
<p>
    price:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="add details" />
</p>
<p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
</asp:Content>

