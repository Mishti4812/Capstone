<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Theme ="Theme1" Inherits="flashCards.Home" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 260px;
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
        .auto-style16 {
            height: 46px;
        }
        .auto-style19 {
            width: 260px;
            height: 46px;
        }
        .auto-style23 {
            height: 33px;
            width: 13px;
        }
        .auto-style28 {
            height: 46px;
            width: 140px;
        }
        .auto-style29 {
            width: 140px;
        }
        .auto-style30 {
            width: 399px;
        }
        .auto-style31 {
            width: 13px;
        }
        .auto-style32 {
            height: 46px;
            width: 13px;
        }
        .auto-style33 {
            height: 186px;
        }
        .auto-style34 {
            width: 140px;
            height: 28px;
        }
        .auto-style35 {
            width: 399px;
            height: 28px;
        }
        .auto-style36 {
            height: 28px;
        }
        .auto-style37 {
            width: 13px;
            height: 4px;
        }
        .auto-style38 {
            width: 211px;
        }
        .auto-style39 {
            width: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> <body bgcolor =" #DBDBDB"></body></div>
        <table class="auto-style1">
            <tr>
                <td colspan="7" class="auto-style33">
                    <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style30">
                    <asp:Menu ID="Menu2" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px" Orientation="Horizontal">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/CreatFlashcard.aspx" Text="Create FlashCards" Value="Create FlashCards"></asp:MenuItem>
                            <asp:MenuItem Text="Edit Flashcards" Value="Edit Flashcards">
                                <asp:MenuItem NavigateUrl="~/Edit.aspx" Text="Public" Value="Public"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/EditMyFlashcard.aspx" Text="My FlashCards" Value="My FlashCards"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Report.aspx" Text="Report Card" Value="Report Card"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
                </td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Login.aspx" Text="SignOUt" Value="SignOUt"></asp:MenuItem>
                            <asp:MenuItem Text="Manage Profile" Value="Manage Profile">
                                <asp:MenuItem NavigateUrl="~/ChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                                <asp:MenuItem Text="Change UserName" Value="Change UserName"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Unsubscribe.aspx" Text="Unsubscribe" Value="Unsubscribe"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2"></td>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style31"></td>
                <td class="auto-style4" colspan="2"></td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="2"></td>
                <td class="auto-style35">
                </td>
                <td colspan="3" class="auto-style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    </td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style38" rowspan="2">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style30">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="auto-style23">
                </td>
                <td class="auto-style4" colspan="2" rowspan="2">
                    &nbsp;</td>
                <td rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="151px">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style37">
                </td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style30" rowspan="3">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style4" colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28" colspan="2">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ok" CssClass="auto-style11" Visible="False" Width="74px" />
                            </td>
                <td class="auto-style32"></td>
                <td class="auto-style19" colspan="2"></td>
                <td class="auto-style16"></td>
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
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
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
                <td>
                    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
