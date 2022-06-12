<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="add_member.aspx.cs" Inherits="add_member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add Member</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Member ID"></asp:Label>
        <asp:TextBox ID="txtmid" runat="server" class="form-control" placeHolder="Member ID"  required></asp:TextBox>
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
        <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeHolder="Password"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label11" runat="server" Text="CNIC"></asp:Label>
        <asp:TextBox ID="txtnic" runat="server" class="form-control  cnic" maxlength="15" placeHolder="xxxxx-xxxxxxx-x"  required></asp:TextBox>
      <p class="valid-feedback-cnic text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>



  <div class="form-row">
          <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Position"></asp:Label>
        <asp:TextBox ID="txtposition" runat="server" class="form-control" placeHolder="MNA/MPA/DC/AC/etc"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
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
       });
    </script>
</asp:Content>

