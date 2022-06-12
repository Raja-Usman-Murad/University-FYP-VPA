<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_death_record.aspx.cs" Inherits="add_death_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Death Record</h2>
                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <label>Select Village Council</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillagecouncil" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvillagecouncil_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpvillagecouncil" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6 mb-3">
    <label>Select Village</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillage" runat="server" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
  <div class="form-row">
    <div class="col-md-12 mb-3">
    <label>Gender</label>
           <asp:DropDownList class="custom-select form-control" ID="drpgender" runat="server" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Male</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Female</asp:ListItem>

          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpgender" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>  
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label>
        <asp:TextBox ID="txtapplicantname" runat="server" class="form-control" placeHolder="Applicant Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Applicant CNIC"></asp:Label>
        <asp:TextBox ID="txtapplicantnic" runat="server" class="form-control cnicA" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicA text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Name" ></asp:Label>
        <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="CNIC"></asp:Label>
        <asp:TextBox ID="txtnic" runat="server" class="form-control cnicM" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicM text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label7" runat="server" Text="Father Name"></asp:Label>
        <asp:TextBox ID="txtfname" runat="server" class="form-control" placeHolder="Father Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label8" runat="server" Text="Father CNIC"></asp:Label>
        <asp:TextBox ID="txtfnic" runat="server" class="form-control cnicF" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicF text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Date of Birth" ></asp:Label>
        <asp:TextBox ID="txtdob" runat="server" class="form-control" type="Date" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label9" runat="server" Text="Date of Death" ></asp:Label>
        <asp:TextBox ID="txtdod" runat="server" class="form-control" type="Date" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-12 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="txtaddress" runat="server" class="form-control"   placeHolder="Address"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
  </div>


  <div class="form-row">
    <div class="col-md-12 mb-3">
  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" class="btn btn-primary w-100 addJS"/>
    </div>

  </div>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
                </center>
            </div>
        </div>
   <script>
       $(document).ready(function () {
           let cnicValidA = $(".valid-feedback-cnicA").hide();
           let cnicValidF = $(".valid-feedback-cnicF").hide();
           let cnicValidM = $(".valid-feedback-cnicM").hide();
           let numberValid = $(".valid-feedback-number").hide();
           $(".cnicA").blur(function () {
               let string = $(".cnicA").val()
               console.log(string, typeof string);
               let regex = new RegExp("^[0-9]{5}-[0-9]{7}-[0-9]$");
               if (!regex.test(string)) {
                   $(".valid-feedback-cnicA").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               } else {
                   cnicValidA.fadeOut(2000);
                   $(".addJS").prop("disabled", false)
               }
           });
           $(".cnicF").blur(function () {
               let string = $(".cnicF").val()
               console.log(string, typeof string);
               let regex = new RegExp("^[0-9]{5}-[0-9]{7}-[0-9]$");
               if (!regex.test(string)) {
                   $(".valid-feedback-cnicF").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               } else {
                   cnicValidF.fadeOut(2000);
                   $(".addJS").prop("disabled", false)
               }
           });
           $(".cnicM").blur(function () {
               let string = $(".cnicM").val()
               console.log(string, typeof string);
               let regex = new RegExp("^[0-9]{5}-[0-9]{7}-[0-9]$");
               if (!regex.test(string)) {
                   $(".valid-feedback-cnicM").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               } else {
                   cnicValidM.fadeOut(2000);
                   $(".addJS").prop("disabled", false)
               }
           });
           $(".number").blur(function () {
               let string = $(".number").val()
               console.log(string, typeof string);
               let regex = /^([0-9]){11}$/
               if (regex.test(string)) {
                   numberValid.fadeOut(2000);
                   $(".addJS").prop("disabled", false)

               } else {
                   $(".valid-feedback-number").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               }
           });
       });
    </script>
</asp:Content>

