    <%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_changepassword.aspx.cs" Inherits="Secetery_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Change Password</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Admin ID"></asp:Label>
        <asp:TextBox ID="txtadmin" runat="server" class="form-control" placeHolder="Admin ID"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Old Password"></asp:Label>
        <asp:TextBox ID="txtoldpassword" runat="server" class="form-control"  TextMode="Password" placeHolder="Old Password" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
        <asp:TextBox ID="txtnewpassword" runat="server" class="form-control New" placeHolder="New Password"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Confrim Password"></asp:Label>
        <asp:TextBox ID="txtconfimepass" runat="server" class="form-control Confirm"   placeHolder="Confrim Password" required></asp:TextBox>
         <div class="valid-feedback-Confirm text-danger">
        Password Not Matched
      </div>
    </div>
  </div>
 
  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Change" class="btn btn-primary w-100 addJS"/>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
</center>
                
 </div>


    </div>
   <script>
       $(document).ready(function () {
           $(".valid-feedback-Confirm").hide();
           $(".Confirm").blur(function () {
               console.log($(".New").val());
               console.log($(".Confirm").val());
               if ($(".New").val() == $(".Confirm").val()) {
                   $(".valid-feedback-Confirm").fadeOut(2000)
                   $(".addJS").prop("disabled", false)
               } else {
                   $(".valid-feedback-Confirm").fadeIn(2000)
                   $(".addJS").prop("disabled",true)
               }
           });
       });
   </script>
</asp:Content>

