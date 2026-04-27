<%@ Page Language="VB" AutoEventWireup="false" CodeFile="validatincontrols.aspx.vb" Inherits="validatincontrols" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            roll no<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter rollno">*</asp:RequiredFieldValidator>
            <br />
            <br />
            name<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter name">*</asp:RequiredFieldValidator>
            <br />
            <br />
            address<asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter addressr">*</asp:RequiredFieldValidator>
            <br />
            <br />
            age
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="please entert your age" ControlToValidate="TextBox5" MaximumValue="25" MinimumValue="16" Type="Integer">*</asp:RangeValidator>
            <br />
            <br />
            <br />
            email<asp:TextBox ID="TextBox4" runat="server" Height="16px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="pls enter correct email" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            phone<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="pls enter proper phno" ValidationExpression="\d{5}(-)\d{5}">*</asp:RegularExpressionValidator>
            <br />
            <br />
            birthdate<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="dd-mm-yyyy" ValidationExpression="\d{2}(-)\w{3}(-)\d{4}">*</asp:RegularExpressionValidator>
            <br />
            <br />
            password<asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            confirm password<asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="pass doesnt match" ControlToCompare="TextBox8" ControlToValidate="TextBox9">*</asp:CompareValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="register" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="list of error" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>
