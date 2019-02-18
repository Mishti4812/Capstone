<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Study.aspx.cs" Inherits="flashCards.Study" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 71px;
        }
        .auto-style3 {
            width: 134px;
        }
        .auto-style8 {
            height: 54px;
        }
        .auto-style9 {
            width: 54px;
        }
        .auto-style10 {
            width: 62px;
        }
        .auto-style11 {
            width: 2px;
        }
        .auto-style16 {
            height: 54px;
            width: 118px;
        }
        .auto-style17 {
            width: 118px;
        }
        .auto-style18 {
            width: 200px;
        }
        .auto-style19 {
            height: 54px;
            width: 200px;
        }
        .auto-style20 {
            width: 120px;
        }
        .auto-style21 {
            height: 54px;
            width: 120px;
        }
        .auto-style23 {
            height: 54px;
            width: 70px;
        }
        .auto-style24 {
            width: 70px;
        }
        .auto-style26 {
            height: 54px;
            width: 51px;
        }
        .auto-style27 {
            width: 51px;
        }
        .auto-style28 {
            height: 54px;
            width: 72px;
        }
        .auto-style29 {
            width: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="you are studying:"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label6" runat="server" Text="/"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="Label7" runat="server" Text="/"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Label ID="Label12" runat="server" Text="Progress"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:Label ID="Label13" runat="server" Text="0"></asp:Label>
                    <asp:Label ID="Label14" runat="server" Text="%"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Label ID="Label11" runat="server" Text="Correct"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:Label ID="Label15" runat="server" Text="0"></asp:Label>
                    <asp:Label ID="Label16" runat="server" Text="%"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="193px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style26"></td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Label ID="Label9" runat="server" Text="The correct answer was: " Visible="False"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" Width="73px" />
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save this result" Visible="False" />
                </td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">HomePage</asp:HyperLink>
                </td>
                <td class="auto-style20">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">SignOut</asp:HyperLink>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="catagory" HeaderText="catagory" SortExpression="catagory" />
                <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                <asp:CheckBoxField DataField="private" HeaderText="private" SortExpression="private" />
                <asp:BoundField DataField="createdBy" HeaderText="createdBy" SortExpression="createdBy" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flaschcardConnectionString %>" SelectCommand="SELECT * FROM [Questions] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label5" Name="name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
