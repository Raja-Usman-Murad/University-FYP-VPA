<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="detailview_application_water.aspx.cs" Inherits="detailview_application_water" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
        Height="50px" Width="450px">
        <Fields>
            <asp:BoundField DataField="app_no" HeaderText="Application Number" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council" />
            <asp:BoundField DataField="village_name" HeaderText="Village Name" />
            <asp:BoundField DataField="f_name" HeaderText="Father Name" />
            <asp:BoundField DataField="nic" HeaderText="NIC" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="app_no" 
                DataNavigateUrlFormatString="Edit_application_water.aspx?abc={0}" />
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

