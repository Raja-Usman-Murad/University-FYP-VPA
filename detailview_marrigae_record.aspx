<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="detailview_marrigae_record.aspx.cs" Inherits="detailview_marrigae_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
        Height="50px" Width="450px">
        <Fields>
            <asp:BoundField DataField="m_id" HeaderText="Marriage ID" />
            <asp:BoundField DataField="dulha_name" HeaderText="Dulha Name" />
            <asp:BoundField DataField="dulha_nic" HeaderText="Dulha NIC" />
            <asp:BoundField DataField="F_namedulha" HeaderText="Father Name Dulha" />
            <asp:BoundField DataField="f_dulha_nic" HeaderText="Father Dulha NIC" />
            <asp:BoundField DataField="age" HeaderText="Age" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="address_dulha" HeaderText="Address Dulha" />
            <asp:BoundField DataField="marriage_date" HeaderText="Marriage Date" />
            <asp:BoundField DataField="dulhan_name" HeaderText="Dulhan Name" />
            <asp:BoundField DataField="dulhan_nic" HeaderText="Dulhan NIC" />
            <asp:BoundField DataField="f_namedulhan" HeaderText="Father Name Dulhan" />
            <asp:BoundField DataField="f_dulhan_nic" HeaderText="Father Dulhan NIC" />
            <asp:BoundField DataField="age_at_marriage" HeaderText="Age At Marriage" />
            <asp:BoundField DataField="address_dulhan" HeaderText="Address Dulhan" />
            <asp:BoundField DataField="mehr_amount" HeaderText="Mahr Amount" />
            <asp:BoundField DataField="detail_mehr" HeaderText="Detail Mahr" />
            <asp:HyperLinkField HeaderText="Edit Record" Text="Edit" 
                DataNavigateUrlFields="m_id" 
                DataNavigateUrlFormatString="Edit_marriage_record.aspx?abc={0}" />
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

