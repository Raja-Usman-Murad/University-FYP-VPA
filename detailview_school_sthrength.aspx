<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="detailview_school_sthrength.aspx.cs" Inherits="detailview_school_sthrength" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  class="table table-bordered table-striped mt-3 w-100 text-center"
        Height="50px" Width="450px">
        <Fields>
            <asp:BoundField DataField="sth_id" HeaderText="Strength ID" />
            <asp:BoundField DataField="school_name" HeaderText="School Name" />
            <asp:BoundField DataField="class" HeaderText="Class" />
            <asp:BoundField DataField="male_students" HeaderText="Male Students" />
            <asp:BoundField DataField="female_students" HeaderText="Female Students" />
            <asp:BoundField DataField="total_students" HeaderText="Total Students" />
            <asp:BoundField DataField="classteacher_name" HeaderText="Class Teacher Name" />
            <asp:BoundField DataField="salrey" HeaderText="Salrey" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council" />
            <asp:BoundField DataField="village_name" HeaderText="Village" />
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="sth_id" 
                DataNavigateUrlFormatString="Edit_school_sthrength.aspx?abc={0}" />
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

