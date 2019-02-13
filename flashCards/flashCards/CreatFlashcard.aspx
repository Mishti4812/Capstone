<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatFlashcard.aspx.cs" Inherits="flashCards.CreatFlashcard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style2 {
            width: 188px;
        }
        .auto-style3 {
            width: 98px;
        }
        .auto-style4 {
            width: 429px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticSubMenuIndent="16px">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HomePage" Value="HomePage"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Login.aspx" Text="SignOut" Value="SignOut"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Catagory"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Section"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Private"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Yes" />
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Text="No" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Question"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="413px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Answer"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="415px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                </td>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <p>
            <asp:Button ID="Button3" runat="server" Height="64px" OnClick="Button3_Click" Text="Ok" Visible="False" Width="143px" />
        </p>
    </form>
</body>
</html>
