<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="view_marriage_record.aspx.cs" Inherits="view_marriage_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>View Marriage Record</h2>

<form class="needs-validation" novalidate>
<div class="form-row">
    <div class="col-md-12 mb-3">
        <label>Search By</label>
           <asp:DropDownList class="custom-select form-control dropDownChange" ID="drpsearch" runat="server"  required>
                    <asp:ListItem class="dropdown-item" >Select option to search</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Marriage ID</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Marriage Date</asp:ListItem>

          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpsearch" ErrorMessage="*" ForeColor="Red" InitialValue="Select option to search"></asp:RequiredFieldValidator>

    </div>
  </div>
<div class="form-row">
    <div class="col-md-12 mb-8">
        <asp:Label ID="Label3" runat="server" Text="Enter value to search"></asp:Label>
        <asp:TextBox ID="txtsearch" runat="server" class="form-control query" placeHolder=""  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row mt-3">
    <div class="col-md-6 mb-3">
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" class="btn btn-primary w-100 addJS searchBtn"/>
    </div>
    <div class="col-md-6 mb-3">
      <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show All" class="btn btn-success w-100 addJS showAllBtn"/>
    </div>
  </div>
</form>

<div class="alert alert-danger alert-dismissible fade show" role="alert">
  No Record Found
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-bordered table-striped mt-3 w-100 text-center"
        Width="984px">
         <Columns>
            <asp:BoundField DataField="m_id" HeaderText="Marriage ID" />
            <asp:BoundField DataField="marriage_date" HeaderText="Marriage Date" />
            <asp:BoundField DataField="dulha_name" HeaderText="Dulha Name" />
            <asp:BoundField DataField="dulhan_name" HeaderText="Dulhan Name" />
            <asp:HyperLinkField DataNavigateUrlFields="m_id" 
                DataNavigateUrlFormatString="detailview_marrigae_record.aspx?abc={0}"  
                HeaderText="Detail View" Text="View" />
        </Columns>
    </asp:GridView>

</center>
                
 </div>

</div>
   <script>
       $(document).ready(function () {
           let alert = $('.alert-danger').hide();
           let alertTable = $('.alert-danger')[0];
           let nextSiblingTable = alertTable.nextElementSibling;
           let anchorTag = $("a:contains('View')");
           let SlicedArray = anchorTag.slice(1);
           console.log(nextSiblingTable.innerHTML.indexOf(" "));
           let searchBtn = $('.searchBtn');
           let showAllBtn = $('.showAllBtn');
           let dropDownChange = $(".dropDownChange");
           let query = $('.query');
           if (nextSiblingTable.innerHTML.indexOf(" ") == -1) {

               $('.alert-danger').show();
           } else {
               $('.alert-danger').hide();
           }
           if (dropDownChange.val() == 'Marriage ID') {
               query.attr('type', 'number');
               query[0].placeholder = 'Enter Only ID Number';
           }
           dropDownChange.change(function () {
               if ($(this).val() == 'Marriage ID') {
                   query.attr('type', 'number');
                   query[0].placeholder = 'Enter Only ID Number';
               } else if ($(this).val() == 'Marriage Date') {
                   query[0].placeholder = 'YY-MM-DD';
                   query.attr('type', 'text');
               } else {
                   query[0].placeholder = '';
                   query.attr('type', 'text');
               }
               
           });
           Array.from(SlicedArray, x => x.setAttribute("class", "btn btn-info w-50 text-center"));
       });
   </script>
    
</asp:Content>

