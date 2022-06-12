<%@ Page Title="" Language="C#"  MasterPageFile="~/Admin_master.master"  enableEventValidation="false" AutoEventWireup="true" CodeFile="add_application_water.aspx.cs" Inherits="add_application_water" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Application water</h2>
                    <form class="needs-validation" novalidate>
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
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div> 
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" class="form-control" placeHolder="Applicant Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Father Name"></asp:Label>
        <asp:TextBox ID="txtfname" runat="server" class="form-control" placeHolder="Father Name"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="CNIC"></asp:Label>
        <asp:TextBox ID="txtnic" runat="server" class="form-control cnic" type="text"  required maxlength="15" placeHolder="xxxxx-xxxxxxx-x"></asp:TextBox>
      <p class="valid-feedback-cnic text-danger">
        Invalid (xxxxx-xxxxxxx-x)
      </p>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeHolder="Address"  required></asp:TextBox>
      <p class="valid-feedback">
        Looks good!
      </p>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Date" ></asp:Label>
        <asp:TextBox ID="txtdate" runat="server" class="form-control" type="Date" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
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
       /*
        let cnic = document.querySelector('.cnic');
        cnic.addEventListener("keyup", function (e) {
            console.log(e)
            console.log(this.maxlength)
        })
        console.log(cnic);
        */
       $(document).ready(function () {
           let cnicValid = $(".valid-feedback-cnic");
           cnicValid.hide();
          
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
       });
    </script>
</asp:Content>

