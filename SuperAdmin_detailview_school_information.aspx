<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_detailview_school_information.aspx.cs" Inherits="detailview_school_information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                 <Fields>
            <asp:BoundField DataField="school_name" HeaderText="School Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council" />
            <asp:BoundField DataField="village_name" HeaderText="Village " />
            <asp:BoundField DataField="Code" HeaderText="Code" />
            <asp:BoundField DataField="headmaster_name" HeaderText="Headmaster Name" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact Number" />
        </Fields>
            </asp:DetailsView>
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./SuperAdmin_view_school_information.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>			
		</center>	
	</div>
</div>

</asp:Content>

