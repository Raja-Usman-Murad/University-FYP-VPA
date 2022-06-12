<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_ detailview_birth_record.aspx.cs" Inherits="detailview_birth_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                <Fields>
            <asp:BoundField DataField="b_id" HeaderText="Birth_ID" />
            <asp:BoundField DataField="applicante_name" HeaderText="Applicant Name" />
            <asp:BoundField DataField="applicante_nic" HeaderText="Applicant NIC" />
            <asp:BoundField DataField="child_name" HeaderText="Child Name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
            <asp:BoundField DataField="f_name" HeaderText="Father Name" />
            <asp:BoundField DataField="f_nic" HeaderText="Father NIC" />
            <asp:BoundField DataField="m_name" HeaderText="Mother Name" />
            <asp:BoundField DataField="m_nic" HeaderText="Mother_NIC" />
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council " />
            <asp:BoundField DataField="village" HeaderText="Village Name" />
        </Fields>
            	</asp:DetailsView>
                            <div class="col-md-6 mx-auto">
                    <a href="SuperAdmin_%20view_birth_record.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
		</center>	
	</div>
</div>
</asp:Content>

