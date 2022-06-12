<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="detailview_infund.aspx.cs" Inherits="detailview_infund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
        Height="50px" Width="450px">
        <Fields>
            <asp:BoundField DataField="s_no" HeaderText="Serial Number" />
            <asp:BoundField DataField="amount" HeaderText="Amount" />
            <asp:BoundField DataField="source" HeaderText="Source" />
            <asp:BoundField DataField="date" HeaderText="Date" />
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="s_no" 
                DataNavigateUrlFormatString="Edit_infund.aspx?abc={0}" />
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

