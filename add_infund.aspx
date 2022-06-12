<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_infund.aspx.cs" Inherits="add_infund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add InFund</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Serial No"></asp:Label>
        <asp:TextBox ID="txtserial" runat="server" class="form-control" placeHolder="Serial No" type="number" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
        <asp:TextBox ID="txtamount" runat="server" class="form-control"   placeHolder="Amount" type="number" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Source"></asp:Label>
        <asp:TextBox ID="txtsource" runat="server" class="form-control" placeHolder="Source"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="txtdate" runat="server" class="form-control number" type="date"   placeHolder=" Date" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid Number
      </div>
    </div>
  </div>
  
  <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add" class="btn btn-primary w-100 addJS"/>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
</center>
                
 </div>


    </div>
    
</asp:Content>

