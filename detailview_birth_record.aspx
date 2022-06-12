<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="detailview_birth_record.aspx.cs" Inherits="detailview_birth_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
        Height="50px" Width="351px">
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
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="b_id" 
                DataNavigateUrlFormatString="Edit_birth_record.aspx?abc={0}" />
        </Fields>
    </asp:DetailsView>
		
		</center>	
	</div>
</div>
     <script>
       $(document).ready(function () {
           let anchorTag = $("a:contains('Edit')");
           console.log(anchorTag)
           anchorTag[0].setAttribute("class", "btn btn-secondary w-25 text-center")
           
           Array.from(SlicedArray, x => x.setAttribute("class", "btn btn-info w-50 text-center"));
        //  console.log()document.querySelector('table');
       });
   </script>
</asp:Content>

