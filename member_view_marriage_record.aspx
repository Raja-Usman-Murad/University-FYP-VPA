<%@ Page Title="" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_view_marriage_record.aspx.cs" Inherits="member_view_marriage_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td style="width: 239px">
                <span style="font-style: normal; font-size: x-large; color: #A1295F">View</span></td>
            <td style="width: 240px">
                <span style="font-style: normal; font-size: x-large; color: #A1295F">Marriage 
                Record</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">
                <span style="font-style: normal">Search By</span></td>
            <td style="width: 240px">
                <asp:DropDownList ID="drpsearch" runat="server" Width="200px">
                    <asp:ListItem>Select option to Search</asp:ListItem>
                    <asp:ListItem>Marriage ID</asp:ListItem>
                    <asp:ListItem>Marriage Date</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">
                <span style="font-style: normal">Enter value to search</span></td>
            <td style="width: 240px">
                <asp:TextBox ID="txtsearch" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px">
                &nbsp;</td>
            <td style="width: 240px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Show All" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="971px">
        <Columns>
            <asp:BoundField DataField="m_id" HeaderText="Marriage ID" />
            <asp:BoundField DataField="marriage_date" HeaderText="Marriage Date" />
            <asp:BoundField DataField="dulha_name" HeaderText="Dulha Name" />
            <asp:BoundField DataField="dulhan_name" HeaderText="Dulhan Name" />
            <asp:HyperLinkField DataNavigateUrlFields="m_id" 
                DataNavigateUrlFormatString="member_detailview_marriage_record.aspx?abc={0}" 
                HeaderText="Detail View" Text="View" />
        </Columns>
    </asp:GridView>
</asp:Content>

