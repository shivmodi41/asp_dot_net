<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPagelaptop.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    search</p>
<p>
    company name:<asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="modelname" DataSourceID="SqlDataSource1" EmptyDataText="no data found">
        <Columns>
            <asp:BoundField DataField="modelname" HeaderText="modelname" ReadOnly="True" SortExpression="modelname" />
            <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [laptopdetail] WHERE ([company] LIKE '%' + @company + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox3" Name="company" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

