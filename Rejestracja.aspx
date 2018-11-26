<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 256px;
        }
        .auto-style5 {
            width: 256px;
            height: 23px;
        }
        .auto-style6 {
            width: 158px;
            height: 23px;
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            margin-bottom: 0px;
        }
        .auto-style9 {
            width: 256px;
            height: 30px;
        }
        .auto-style10 {
            width: 158px;
            height: 30px;
            text-align: left;
        }
        .auto-style11 {
            height: 30px;
            text-align: left;
        }
        .auto-style12 {
            width: 158px;
            text-align: left;
        }
        .auto-style13 {
            color: #FF0000;
        }
        .auto-style14 {
            width: 256px;
            height: 27px;
        }
        .auto-style16 {
            height: 27px;
        }
        .auto-style17 {
            width: 158px;
            height: 27px;
        }
        .auto-style18 {
            width: 158px;
        }
        .auto-style19 {
            text-align: left;
        }
        .auto-style20 {
            width: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">User Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUserN" runat="server" CssClass="auto-style8" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserN" CssClass="auto-style13" ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">E-mail:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxMail" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxMail" CssClass="auto-style13" ErrorMessage="E-mail is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="You must enter the valid e-mail id." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Password:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxPasswd" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPasswd" CssClass="auto-style13" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxConPasswd" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConPasswd" CssClass="auto-style13" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPasswd" ControlToValidate="TextBoxConPasswd" ErrorMessage="Passwords are not the same." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country:</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="145px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>Poland</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>England</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" CssClass="auto-style13" ErrorMessage="Select a country name." ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style17">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="70px" />
                    <input id="Reset1" class="auto-style20" type="reset" value="Reset" /></td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
