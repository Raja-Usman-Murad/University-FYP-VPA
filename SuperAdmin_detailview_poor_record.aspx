<%@ Page Title=""  EnableEventValidation="false" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_detailview_poor_record.aspx.cs" Inherits="detailview_poor_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                <Fields>
            <asp:BoundField DataField="p_id" HeaderText="Poor ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="f_name" HeaderText="Father Name" />
            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact Number" />
            <asp:BoundField DataField="village_concil" HeaderText="Village Concil" />
            <asp:BoundField DataField="village" HeaderText="Village" />
        </Fields>
            	</asp:DetailsView>
                <div class="col-md-6 mx-auto">
                    <a href="SuperAdmin_%20view_poor_record.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
		</center>	
	</div>
</div>
</asp:Content>

