<%@ Page Title="" Language="C#" MasterPageFile="~/visistor_master.master" AutoEventWireup="true" CodeFile="visitor_sectery.aspx.cs" Inherits="Sectery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td style="width: 252px">
                <span style="font-style: normal; font-size: x-large; color: #A1295F">View</span></td>
            <td class="modal-sm" 
                style="width: 250px; font-style: normal; font-size: x-large; color: #A1295F;">
                Sectery 
                Record</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                Search&nbsp; By</td>
            <td class="modal-sm" style="width: 250px">
                <asp:DropDownList ID="drpsearch" runat="server" Width="200px">
                    <asp:ListItem>Enter value to search</asp:ListItem>
                    <asp:ListItem>Sectery ID</asp:ListItem>
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Village Concil</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                Enter value to search</td>
            <td class="modal-sm" style="width: 250px">
                <asp:TextBox ID="txtsearch" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 252px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 250px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="SearchAll" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="796px">
        <Columns>
            <asp:BoundField DataField="s_id" HeaderText="Sectery ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="f_name" HeaderText="Father Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village_Council" />
            <asp:BoundField DataField="contact_no" HeaderText="Countact Number" />
        </Columns>
    </asp:GridView>
</asp:Content>

