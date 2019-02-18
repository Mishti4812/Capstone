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
        .auto-style6 {
            width: 100%;
            height: 164px;
            margin-left: 32px;
            background-color: #999999;
        }
        .auto-style7 {
            margin-left: 506px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 87px;
        }
        .auto-style13 {
            width: 554px;
        }
        .auto-style14 {
            height: 10px;
        }
        .auto-style15 {
            width: 385px;
            height: 10px;
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
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                </td>
                <td colspan="2" class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    <br />
                    </td>
                <td class="auto-style14"></td>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Report Card" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="16px" Width="152px" DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem>Subject</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
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
        <table class="auto-style6">
            <tr>
                <td draggable="true" style="background-color: #FFFFFF">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="name" DataSourceID="SqlDataSource1" CssClass="auto-style7" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:BoundField DataField="createdBY" HeaderText="createdBY" SortExpression="createdBY" />
                <asp:CheckBoxField DataField="private" HeaderText="private" SortExpression="private" />
            </Columns>
        </asp:GridView>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ok" CssClass="auto-style11" Visible="False" Width="74px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flaschcardConnectionString %>" SelectCommand="SELECT * FROM [CreateFlashcard] WHERE ([category] = @category2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="category2" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
