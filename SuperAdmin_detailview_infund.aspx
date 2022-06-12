<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_detailview_infund.aspx.cs" Inherits="detailview_infund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                  <Fields>
            <asp:BoundField DataField="s_no" HeaderText="Serial Number" />
            <asp:BoundField DataField="amount" HeaderText="Amount" />
            <asp:BoundField DataField="source" HeaderText="Source" />
            <asp:BoundField DataField="date" HeaderText="Date" />
        </Fields>
            	</asp:DetailsView>
                        <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./SuperAdmin_view_infund.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>	
		</center>	
	</div>
</div>
</asp:Content>

