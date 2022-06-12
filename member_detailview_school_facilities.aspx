<%@ Page Title=""  EnableEventValidation="false" Language="C#" MasterPageFile="~/Member_master.master" AutoEventWireup="true" CodeFile="member_detailview_school_facilities.aspx.cs" Inherits="detailview_school_facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                <Fields>
                     <asp:BoundField DataField="f_id" HeaderText="Facilitie ID" />
            <asp:BoundField DataField="school_name" HeaderText="School Name" />
            <asp:BoundField DataField="total_rooms" HeaderText="Total Rooms" />
            <asp:BoundField DataField="electricity" HeaderText="Electricity" />
            <asp:BoundField DataField="water" HeaderText="Water" />
            <asp:BoundField DataField="boundarey_wall" HeaderText="Boundarey Wall" />
            <asp:BoundField DataField="teacher_washroom" HeaderText="Teacher Washroom" />
            <asp:BoundField DataField="student_washroom" HeaderText="Student Washroom" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council" />
            <asp:BoundField DataField="village_name" HeaderText="Village" />
                </Fields>
            	</asp:DetailsView>
                        <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./member_view_school_facilities.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>	
		</center>	
	</div>
</div>
</asp:Content>

