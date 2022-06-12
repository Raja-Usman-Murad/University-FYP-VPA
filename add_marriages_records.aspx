<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_marriages_records.aspx.cs" Inherits="add_marriages_records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Marriage Record</h2>
                    <form class="needs-validation" novalidate>
  
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Dulha Name"></asp:Label>
        <asp:TextBox ID="txtdulhaname" runat="server" class="form-control" placeHolder="Dulha Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Dulha CNIC"></asp:Label>
        <asp:TextBox ID="txtdulhanic" runat="server" class="form-control cnicA" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicA text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Father Name Dulha" ></asp:Label>
        <asp:TextBox ID="txtfnamedulha" runat="server" class="form-control" placeholder="Father Name Dulha" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Father CNIC Dulha"></asp:Label>
        <asp:TextBox ID="txtfdulhanic" runat="server" class="form-control cnicM" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicM text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="txtage" runat="server" class="form-control"   placeHolder="Age" type="number" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label10" runat="server" Text="Status"></asp:Label>
        <asp:TextBox ID="txtstatus" runat="server" class="form-control"   placeHolder="Status"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label11" runat="server" Text="Address Dulha"></asp:Label>
        <asp:TextBox ID="txtaddressdulha" runat="server" class="form-control"   placeHolder="Address Dulha" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label12" runat="server" Text=" Union Concil"></asp:Label>
        <asp:TextBox ID="txtuc" runat="server" class="form-control"   placeHolder=" Union Concil"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label13" runat="server" Text="Tehsil"></asp:Label>
        <asp:TextBox ID="txttehsil" runat="server" class="form-control"   placeHolder="Tehsil"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label14" runat="server" Text="District"></asp:Label>
        <asp:TextBox ID="txtdistrict" runat="server" class="form-control"   placeHolder="District"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-12 mb-3">
        <asp:Label ID="Label15" runat="server" Text=" Marriage Date" ></asp:Label>
        <asp:TextBox ID="txtmarriagedate" runat="server" class="form-control" type="Date" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label7" runat="server" Text="Dulhan Name"></asp:Label>
        <asp:TextBox ID="txtdulhanname" runat="server" class="form-control" placeHolder="Dulhan Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label8" runat="server" Text="Dulhan CNIC"></asp:Label>
        <asp:TextBox ID="txtdulhannic" runat="server" class="form-control cnicF" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicF text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Father Name Dulhan" ></asp:Label>
        <asp:TextBox ID="txtfnamedulhan" runat="server" class="form-control" placeholder="Father Name Dulhan" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label9" runat="server" Text="Father CNIC Dulhan"></asp:Label>
        <asp:TextBox ID="txtfdulhannic" runat="server" class="form-control cnicFD" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnicFD text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label16" runat="server" Text="Age At Marriage"></asp:Label>
        <asp:TextBox ID="txtageatmarrg" runat="server" class="form-control"   placeHolder="Age At Marriage"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label17" runat="server" Text="Address Dulhan"></asp:Label>
        <asp:TextBox ID="txtaddressdulhan" runat="server" class="form-control"   placeHolder="Address Dulhan"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label18" runat="server" Text="Mehr Amount"></asp:Label>
        <asp:TextBox ID="txtmehramount" runat="server" class="form-control"   placeHolder="Mehr Amount"  required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label19" runat="server" Text="Detail Amount"></asp:Label>
        <asp:TextBox ID="txtdetailamount" runat="server" class="form-control"   placeHolder="Detail Amount"  required></asp:TextBox>
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
           let cnicValidFD = $(".valid-feedback-cnicFD").hide();
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
           $(".cnicFD").blur(function () {
               let string = $(".cnicFD").val()
               console.log(string, typeof string);
               let regex = new RegExp("^[0-9]{5}-[0-9]{7}-[0-9]$");
               if (!regex.test(string)) {
                   $(".valid-feedback-cnicFD").fadeIn(2000);
                   $(".addJS").prop("disabled", true)
               } else {
                   cnicValidFD.fadeOut(2000);
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

