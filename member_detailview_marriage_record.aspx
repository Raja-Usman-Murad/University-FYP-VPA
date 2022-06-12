<%@ Page Title="" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_detailview_marriage_record.aspx.cs" Inherits="member_detailview_marriage_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        Height="50px" Width="285px">
        <Fields>
            <asp:BoundField DataField="m_id" HeaderText="Marriage ID" />
            <asp:BoundField DataField="dulha_name" HeaderText="Dulha Name" />
            <asp:BoundField DataField="dulha_nic" HeaderText="Dulha NIC" />
            <asp:BoundField DataField="F_namedulha" HeaderText="Father Name Dulha" />
            <asp:BoundField DataField="f_dulha_nic" HeaderText="Father Dulha NIC" />
            <asp:BoundField DataField="age" HeaderText="Age" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="address_dulha" HeaderText="Address Dulha" />
            <asp:BoundField DataField="marriage_date" HeaderText="Marriage Date" />
            <asp:BoundField DataField="dulhan_name" HeaderText="Dulhan Name" />
            <asp:BoundField DataField="dulhan_nic" HeaderText="Dulhan NIC" />
            <asp:BoundField DataField="f_namedulhan" HeaderText="Father Name Dulhan" />
            <asp:BoundField DataField="f_dulhan_nic" HeaderText="Father Dulhan NIC" />
            <asp:BoundField DataField="age_at_marriage" HeaderText="Age At Marriage" />
            <asp:BoundField DataField="address_dulhan" HeaderText="Address Dulhan" />
            <asp:BoundField DataField="mehr_amount" HeaderText="Mahr Amount" />
            <asp:BoundField DataField="detail_mehr" HeaderText="Detail Mahr" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

