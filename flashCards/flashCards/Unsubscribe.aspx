<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unsubscribe.aspx.cs" Inherits="flashCards.Unsubscribe" %>

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
            height: 73px;
        }
        .auto-style3 {
            height: 73px;
            width: 473px;
        }
        .auto-style4 {
            width: 473px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Are you sure you want to unsbscribe your account ?"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="No" Width="124px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="73px" OnClick="Button2_Click" Text="Unsubscribe" Width="175px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
