<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/visistor_master.master" AutoEventWireup="true" CodeFile="view_school_information_detail.aspx.cs" Inherits="view_school_information_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>View School Information</h2>

<form class="needs-validation" novalidate>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <label>Select District</label>
           <asp:DropDownList class="custom-select form-control" ID="drpdistrict" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpdistrict_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpdistrict" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6 mb-3">
        <label>Select Tehsil</label>
           <asp:DropDownList class="custom-select form-control" ID="drptehsil" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drptehsil_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drptehsil" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <label>Select Village Council</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6 mb-3">
        <label>Select Village</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillage" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvillage_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
<div class="form-row">
    <div class="col-md-12 mb-3">
        <label>Select School Name</label>
           <asp:DropDownList class="custom-select form-control" ID="DropDownList5" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList5_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
</form>
<h3>School Information</h3>
    <asp:DetailsView ID="detailschool_info" class="table table-bordered table-striped mt-3 w-100 text-center" runat="server" Height="50px" Width="563px" 
        AutoGenerateRows="False">
        <Fields>
            <asp:BoundField HeaderText="School Name" DataField="school_name" />
            <asp:BoundField HeaderText="School Code " DataField="code" />
            <asp:BoundField HeaderText="Head Name" DataField="headmaster_name" />
            <asp:BoundField HeaderText="Contact No" DataField="contact_no" />
        </Fields>
    </asp:DetailsView>
<h3>School Strength</h3>
        <asp:GridView ID="grid_strength" class="table table-bordered table-striped mt-3 w-100 text-center" runat="server" AutoGenerateColumns="False" 
        Width="790px">
            <Columns>
                <asp:BoundField HeaderText="SNO" DataField="sth_id" />
                <asp:BoundField HeaderText="Class" DataField="class" />
                <asp:BoundField HeaderText="Male Student" DataField="male_students" />
                <asp:BoundField HeaderText="Female Student" DataField="female_students" />
                <asp:BoundField HeaderText="Total" DataField="total_students" />
                <asp:BoundField HeaderText="Class Teacher " DataField="classteacher_name" />
            </Columns>
        </asp:GridView>
<h3>School Facilities</h3>
<asp:GridView ID="GridFacilities" runat="server" class="table table-bordered table-striped mt-3 w-100 text-center" AutoGenerateColumns="False" 
        Width="781px">
            <Columns>
                <asp:BoundField HeaderText="Facility ID" DataField="f_id" />
                <asp:BoundField HeaderText="Total Rooms" DataField="total_rooms" />
                <asp:BoundField HeaderText="Electricity" DataField="electricity" />
                <asp:BoundField HeaderText="Water" DataField="water" />
                <asp:BoundField HeaderText="Boundary Wall" DataField="boundarey_wall" />
                <asp:BoundField DataField="teacher_washroom" HeaderText="Teacher Washroom" />
                <asp:BoundField DataField="student_washroom" HeaderText="Student Washroom" />
            </Columns>
        </asp:GridView>
<h3>School PTC</h3>
<asp:GridView ID="gridptc" runat="server" AutoGenerateColumns="False" class="table table-bordered table-striped mt-3 w-100 text-center"
            onselectedindexchanged="gridptc_SelectedIndexChanged" Width="807px">
            <Columns>
                <asp:BoundField DataField="ptc_id" HeaderText="PTC ID" />
                <asp:BoundField DataField="ptc_acountno" HeaderText="Ptc Account No" />
                <asp:BoundField DataField="bank_name" HeaderText="Bank Name" />
                <asp:BoundField DataField="bank_branch" HeaderText="Bank Branch" />
                <asp:BoundField DataField="present_balance" HeaderText="Present Balance" />
                <asp:BoundField DataField="chairman" HeaderText="Chairman" />
                <asp:BoundField DataField="vice_chairman" HeaderText="Vice Chairman" />
                <asp:BoundField DataField="member_parent" HeaderText="Member Parent" />
            </Columns>
        </asp:GridView>
</center>
                
 </div>

</div>
    <script>
        $(document).ready(function () {
            let options = document.querySelectorAll('select');
            let heading3 = $('h3');
            Array.from(heading3, function (e) {
                e.setAttribute("style", "display: none;")
            })
          //  console.log(heading3)
            
         //   console.log(options)
         //   console.log(heading3)

           options.forEach((e) => {
                if (e.value == 'Select') {
                    Array.from(heading3, function (e) {
                        e.setAttribute("style", "display: none;")
                    })
                } else {
                    Array.from(heading3, function (e) {
                        e.setAttribute("style", "display: block;")
                    })
                }
            })
        });
    </script>
   
   

</asp:Content>

