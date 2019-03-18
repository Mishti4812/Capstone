<%@ Page Language="C#" AutoEventWireup="true" Theme ="Theme1" CodeBehind="EditMyFlashcard.aspx.cs" Inherits="flashCards.EditMyFlashcard" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 532px;
        }
        .auto-style3 {
            width: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Home.aspx" Text="HomePage" Value="HomePage"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Login.aspx" Text="SignOut" Value="SignOut"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                            <asp:CheckBoxField DataField="private" HeaderText="private" SortExpression="private" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flaschcardConnectionString %>" DeleteCommand="DELETE FROM [CreateFlashcard] WHERE [name] = @name" InsertCommand="INSERT INTO [CreateFlashcard] ([name], [category], [subject], [private]) VALUES (@name, @category, @subject, @private)" SelectCommand="SELECT [name], [category], [subject], [private] FROM [CreateFlashcard] WHERE ([createdBY] = @createdBY)" UpdateCommand="UPDATE [CreateFlashcard] SET [category] = @category, [subject] = @subject, [private] = @private WHERE [name] = @name">
                        <DeleteParameters>
                            <asp:Parameter Name="name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="private" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label1" Name="createdBY" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="category" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="private" Type="Boolean" />
                            <asp:Parameter Name="name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SerialNo" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" Height="50px" HorizontalAlign="Left" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="343px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                            <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                            <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:flaschcardConnectionString %>" DeleteCommand="DELETE FROM [questions1] WHERE [SerialNo] = @SerialNo" InsertCommand="INSERT INTO [questions1] ([question], [answer],[createdBy],[name],[catagory],[section]) VALUES (@question, @answer,@createdBy,@name,@catagory,@subject)" SelectCommand="SELECT [question], [answer], [SerialNo] FROM [questions1] WHERE ([name] = @name)" UpdateCommand="UPDATE [questions1] SET [question] = @question, [answer] = @answer WHERE [SerialNo] = @SerialNo">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="DetailsView1" Name="SerialNo" PropertyName="SelectedValue" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DetailsView1" Name="question" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DetailsView1" Name="answer" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="Label1" Name="createdBy" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label3" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label4" Name="catagory" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Label5" Name="subject" PropertyName="Text" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label3" Name="name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DetailsView1" Name="question" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DetailsView1" Name="answer" PropertyName="SelectedValue" Type="String" />
                            <asp:Parameter Name="SerialNo" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <div aria-orientation="vertical"> <body bgcolor =" #DBDBDB"></body></div>
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Finish" Visible="False" Width="114px" />
    </form>
</body>
</html>
