<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themSample.aspx.cs" Inherits="flashCards.themSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            background-color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        </div>
        <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Groove" ForeColor="#CCCCCC" Text="Button" />
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#666666"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC" ForeColor="#CCCCCC">
        </asp:DropDownList>
    </form>
</body>
</html>
