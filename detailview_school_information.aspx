<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="detailview_school_information.aspx.cs" Inherits="detailview_school_information" %>

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
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="school_name" 
                DataNavigateUrlFormatString="Edit_School_information.aspx?abc={0}" />
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

