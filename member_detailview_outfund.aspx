<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_detailview_outfund.aspx.cs" Inherits="member_detailview_outfund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
               <Fields>
            <asp:BoundField DataField="s_no" HeaderText="Serial Number" />
            <asp:BoundField DataField="amount" HeaderText="Amount" />
            <asp:BoundField DataField="exp_all" HeaderText="Expendicture All" />
            <asp:BoundField DataField="date" HeaderText="Date" />
        </Fields>
            	</asp:DetailsView>
                        <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./member_view_outfund.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>	
		</center>	
	</div>
</div>
</asp:Content>

