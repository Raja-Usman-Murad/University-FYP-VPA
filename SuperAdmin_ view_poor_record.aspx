<%@ Page Title=""  EnableEventValidation="false" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_ view_poor_record.aspx.cs" Inherits="view_poor_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>View Poor Record</h2>

<form class="needs-validation" novalidate>
<div class="form-row">
    <div class="col-md-12 mb-3">
        <label>Search By</label>
           <asp:DropDownList class="custom-select form-control dropDownChange" ID="drpsearch" runat="server"  required>
                    <asp:ListItem class="dropdown-item" >Select option to search</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Poor ID</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Name</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Village Council</asp:ListItem>


          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpsearch" ErrorMessage="*" ForeColor="Red" InitialValue="Select option to search"></asp:RequiredFieldValidator>

    </div>
  </div>
<div class="form-row">
    <div class="col-md-12 mb-8">
        <asp:Label ID="label1" runat="server" Text="Enter value to search"></asp:Label>
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
            <asp:BoundField DataField="p_id" HeaderText="Poor ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="village_concil" HeaderText="Village Concil" />
            <asp:HyperLinkField DataNavigateUrlFields="p_id" 
                DataNavigateUrlFormatString="SuperAdmin_detailview_poor_record.aspx?abc={0}" 
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
           if (dropDownChange.val() == 'Application No') {
               query.attr('type', 'number');
               query[0].placeholder = 'Enter Only ID Number';
           }
           dropDownChange.change(function () {
               if ($(this).val() == 'Poor ID') {
                   query.attr('type', 'number');
                   query[0].placeholder = 'Enter Only ID Number';
               } else if ($(this).val() == 'Name') {
                   query[0].placeholder = 'Name';
                   query.attr('type', 'text');
               } else if ($(this).val() == 'Village Council') {
                   query[0].placeholder = 'Village Council';
                   query.attr('type', 'text');
               }
               else {
                   query[0].placeholder = '';
                   query.attr('type', 'text');
               }
               
           });
           Array.from(SlicedArray, x => x.setAttribute("class", "btn btn-info w-50 text-center"));
       });
   </script>
  
</asp:Content>

