<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="flashCards.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            width: 209px;
            height: 48px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            width: 118px;
        }
        .auto-style6 {
            height: 48px;
            width: 558px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="16px">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HomePage" Value="HomePage"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Login.aspx" Text="SignOUt" Value="SignOUt"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Confirm new password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Chage Password" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" Text="HomePage" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" Text="SignOut" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
