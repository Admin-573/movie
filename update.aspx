<%@ Page Language="VB" AutoEventWireup="false" CodeFile="update.aspx.vb" Inherits="update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
    <h2>Book Your Favourite Shows</h2>
    <table>
        <tr>
            
            <td class="style1">Number</td>
            <td class="style1">
                <asp:TextBox ID="TextBoxID" runat="server" Disabled="disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Update Movie Name</td>
            <td>
                <asp:DropDownList ID="DropDownListMname" runat="server">
                    <asp:ListItem>Jawan</asp:ListItem>
                    <asp:ListItem>OMG 2</asp:ListItem>
                    <asp:ListItem>Jailer</asp:ListItem>
                    <asp:ListItem>Dream Girl 2</asp:ListItem>
                    <asp:ListItem>Gadar 2</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Update Theater Type</td>
            <td>
                <asp:DropDownList ID="DropDownListThtype" runat="server">
                    <asp:ListItem>Thrust Stage</asp:ListItem>
                    <asp:ListItem>BlackBox Theatre</asp:ListItem>
                    <asp:ListItem>Elemental</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="ButtonUpdate" runat="server" Text="Update Now" />
            </td>
        </tr>
    </table>
    </center>
    </div>
    </form>
</body>
</html>
