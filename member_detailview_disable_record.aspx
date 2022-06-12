<%@ Page Title="" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_detailview_disable_record.aspx.cs" Inherits="member_detailview_disable_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                <Fields>
            <asp:BoundField DataField="dis_id" HeaderText="Disable ID" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Concil" />
            <asp:BoundField DataField="village_name" HeaderText="Village" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="nic" HeaderText="NIC" />
            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact Number" />
        </Fields>
            	</asp:DetailsView>
                <div class="col-md-6 mx-auto">
                    <a href="./member_view_disable_record.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
		</center>	
	</div>
</div>
</asp:Content>

