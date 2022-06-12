<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_ detailview_application_water.aspx.cs" Inherits="detailview_application_water" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                 <Fields>
            <asp:BoundField DataField="app_no" HeaderText="Application Number" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council" />
            <asp:BoundField DataField="village_name" HeaderText="Village Name" />
            <asp:BoundField DataField="f_name" HeaderText="Father Name" />
            <asp:BoundField DataField="nic" HeaderText="NIC" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="date" HeaderText="Date" />
        </Fields>
            	</asp:DetailsView>
                <div class="col-md-6 mx-auto">
                    <a href="./SuperAdmin_view_application_water.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
		</center>	
	</div>
</div>
</asp:Content>

