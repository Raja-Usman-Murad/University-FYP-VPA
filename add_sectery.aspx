<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="add_sectery.aspx.cs" Inherits="add_sectery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add Secretary</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Secretary ID"></asp:Label>
        <asp:TextBox ID="txtsectid" runat="server" class="form-control" placeHolder="Secretary ID"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" class="form-control"   placeHolder="Name" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Father Name"></asp:Label>
        <asp:TextBox ID="txtfname" runat="server" class="form-control" placeHolder="Father Name"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" class="form-control email"   placeHolder="Email" required></asp:TextBox>
         <div class="valid-feedback-email text-danger">
        Invalid Email
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeHolder="Password"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
        <asp:TextBox ID="txtcontno" runat="server" class="form-control number"   placeHolder="Contact Number" maxlength="11" required></asp:TextBox>
         <div class="valid-feedback-number text-danger">
        Invalid Number
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <label>Select Village Council</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6 mb-3">
    <label>Select Village</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillage" runat="server" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label7" runat="server" Text="Date Hirring"></asp:Label>
        <asp:TextBox ID="txtdatehirring" runat="server" class="form-control" type="Date"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label8" runat="server" Text="Tehsil"></asp:Label>
        <asp:TextBox ID="txttehsil" runat="server" class="form-control" placeHolder="Tehsil"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label9" runat="server" Text="District"></asp:Label>
        <asp:TextBox ID="txtdistrict" runat="server" class="form-control" placeHolder="District"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="txtaddress" runat="server" class="form-control"   placeHolder="Address" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label11" runat="server" Text="CNIC"></asp:Label>
        <asp:TextBox ID="txtnic" runat="server" class="form-control  cnic" maxlength="15" placeHolder="xxxxx-xxxxxxx-x"  required></asp:TextBox>
      <p class="valid-feedback-cnic text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  
  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" class="btn btn-primary w-100 addJS"/>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
</center>
                
 </div>


    </div>
    <script>
       $(document).ready(function () {
           let cnicValid = $(".valid-feedback-cnic");
           cnicValid.hide();
           let emailValid = $(".valid-feedback-email").hide();
           let numberValid = $(".valid-feedback-number").hide();
          
           $(".cnic").blur(function () {
               let string = $(".cnic").val()
               console.log(string, typeof string);
               let regex = new RegExp("^[0-9]{5}-[0-9]{7}-[0-9]$");
               if (!regex.test(string)) {
                   $(".valid-feedback-cnic").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               } else {
                   cnicValid.fadeOut(2000);
                   $(".addJS").prop("disabled", false)
               }
           });
           $(".email").blur(function () {
               let string = $(".email").val()
               console.log(string, typeof string);
               let regex = /^([_\-\.a-zA-Z0-9]+)@([_\-\.a-zA-Z0-9]+)\.([a-zA-Z]){2,7}$/
               if (regex.test(string)) {
                   emailValid.fadeOut(2000);
                   $(".addJS").prop("disabled", false)
                   
               } else {
                   $(".valid-feedback-email").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
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

