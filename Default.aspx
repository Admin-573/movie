<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h2>Book Your Favourite Shows</h2>
    <table>
        <tr>
            
            <td class="style1">Give Number</td>
            <td class="style1">
                <asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Select Movie Name</td>
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
            <td>Select Theater Type</td>
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
                <asp:Button ID="ButtonBook" runat="server" Text="Book Now" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="mid" HeaderText="Movie ID" />
            <asp:BoundField DataField="mname" HeaderText="Movie Name" />
            <asp:BoundField DataField="mtype" HeaderText="Theater Type" />
            <asp:HyperLinkField DataNavigateUrlFields="mid" 
                DataNavigateUrlFormatString="update.aspx?mid={0}" HeaderText="Update" 
                Text="Update" NavigateUrl="mid" >
            <ControlStyle ForeColor="#009933" />
            </asp:HyperLinkField>
            <asp:HyperLinkField DataNavigateUrlFields="mid" 
                DataNavigateUrlFormatString="delete.aspx?mid={0}" HeaderText="Delete" 
                Text="Delete" NavigateUrl="mid" >
            <ControlStyle ForeColor="Red" />
            <FooterStyle ForeColor="Red" />
            <ItemStyle ForeColor="Red" />
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <EmptyDataTemplate>
            <div style="color:Red">
                No Movies Added Yet
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
</center>
</asp:Content>

