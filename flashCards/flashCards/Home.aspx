<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="flashCards.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 385px;
        }
        .auto-style4 {
            width: 163px;
        }
        .auto-style5 {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#F7F6F3" />
                        <DynamicSelectedStyle BackColor="#5D7B9D" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Login.aspx" Text="SignOUt" Value="SignOUt"></asp:MenuItem>
                            <asp:MenuItem Text="Manage Profile" Value="Manage Profile">
                                <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                                <asp:MenuItem Text="Change UserName" Value="Change UserName"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Unsubscribe.aspx" Text="Unsubscribe" Value="Unsubscribe"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#5D7B9D" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"></td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    Select FlashCard to study from</td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Creat Flashcard" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="151px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="16px" Width="152px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
