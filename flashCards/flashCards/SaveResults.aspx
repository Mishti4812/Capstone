<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaveResults.aspx.cs" Inherits="flashCards.SaveResults" %>

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
            width: 100%;
        }
        .auto-style3 {
            width: 295px;
        }
        .auto-style4 {
            width: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Do you want to rate this quiz ?"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yes" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Value="4">Excelent</asp:ListItem>
                            <asp:ListItem Value="3">Very Good</asp:ListItem>
                            <asp:ListItem Value="2">Good</asp:ListItem>
                            <asp:ListItem Value="1">Fair</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Not now" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="FlashcardName" HeaderText="FlashcardName" SortExpression="FlashcardName" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Subjec" HeaderText="Subjec" SortExpression="Subjec" />
                <asp:BoundField DataField="PercentageCompleted" HeaderText="PercentageCompleted" SortExpression="PercentageCompleted" />
                <asp:BoundField DataField="PercentageCorrect" HeaderText="PercentageCorrect" SortExpression="PercentageCorrect" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                <asp:BoundField DataField="StudyDate" HeaderText="StudyDate" SortExpression="StudyDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flaschcardConnectionString %>" DeleteCommand="DELETE FROM [Study1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Study1] ([UserName], [FlashcardName], [Category], [Subjec], [PercentageCompleted], [PercentageCorrect], [Rating], [StudyDate]) VALUES (@UserName, @FlashcardName, @Category, @Subjec, @PercentageCompleted, @PercentageCorrect, @Rating, @StudyDate)" SelectCommand="SELECT [ID], [UserName], [FlashcardName], [Category], [Subjec], [PercentageCompleted], [PercentageCorrect], [Rating], [StudyDate] FROM [Study1]" UpdateCommand="UPDATE [Study1] SET [UserName] = @UserName, [FlashcardName] = @FlashcardName, [Category] = @Category, [Subjec] = @Subjec, [PercentageCompleted] = @PercentageCompleted, [PercentageCorrect] = @PercentageCorrect, [Rating] = @Rating, [StudyDate] = @StudyDate WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="FlashcardName" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Subjec" Type="String" />
                <asp:Parameter Name="PercentageCompleted" Type="Decimal" />
                <asp:Parameter Name="PercentageCorrect" Type="Decimal" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter DbType="Date" Name="StudyDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="FlashcardName" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Subjec" Type="String" />
                <asp:Parameter Name="PercentageCompleted" Type="Decimal" />
                <asp:Parameter Name="PercentageCorrect" Type="Decimal" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter DbType="Date" Name="StudyDate" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
