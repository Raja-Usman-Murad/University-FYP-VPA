<%@ Page Title=""  EnableEventValidation="false" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_detailview_school_ptc.aspx.cs" Inherits="detailview_school_ptc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
               
        <Fields>
            <asp:BoundField DataField="ptc_id" HeaderText="Ptc ID" />
            <asp:BoundField DataField="school_name" HeaderText="School Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village_council" />
            <asp:BoundField DataField="village_name" HeaderText="Village Name" />
            <asp:BoundField DataField="ptc_acountno" HeaderText="Ptc Acount No" />
            <asp:BoundField DataField="bank_name" HeaderText="Bank Name" />
            <asp:BoundField DataField="bank_branch" HeaderText="Bank Branch" />
            <asp:BoundField DataField="present_balance" HeaderText="Present Balance" />
            <asp:BoundField DataField="chairman" HeaderText="Chairman" />
            <asp:BoundField DataField="vice_chairman" HeaderText="Vice Chairman" />
            <asp:BoundField DataField="member_parent" HeaderText="Member Parent" />
        </Fields>
            	</asp:DetailsView>
                        <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./member_view_school_ptc.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>	
		</center>	
	</div>
</div>
</asp:Content>

