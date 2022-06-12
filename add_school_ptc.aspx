<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_school_ptc.aspx.cs" Inherits="add_schhol_ptc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add School PTC</h2>

 <form class="needs-validation" novalidate>
<div class="form-row">
    <div class="col-md-6 mb-3">
        <label>Select School Name</label>
           <asp:DropDownList class="custom-select form-control" ID="drpschool" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpschool" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6 mb-3">
    <label>Select Village Council</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvc" runat="server" onselectedindexchanged="drpvc_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>
 <div class="form-row">
    <div class="col-md-12  mb-3">
        <label>Select Village</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillage" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="PTC Acount No"></asp:Label>
        <asp:TextBox ID="txtptcacountno" runat="server" class="form-control" placeHolder="PTC Acount No"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Bank Name"></asp:Label>
        <asp:TextBox ID="txtbankname" runat="server" class="form-control"   placeHolder="Bank Name" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Bank branch"></asp:Label>
        <asp:TextBox ID="txtbankbranch" runat="server" class="form-control" placeHolder="Bank branch"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Present Balance"></asp:Label>
        <asp:TextBox ID="txtpresentbal" runat="server" class="form-control email"   placeHolder="Present Balance" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid Email
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Chairman"></asp:Label>
        <asp:TextBox ID="txtchairman" runat="server" class="form-control" placeHolder="Chairman"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Vice Chairman"></asp:Label>
        <asp:TextBox ID="txtvice" runat="server" class="form-control number"   placeHolder="Vice Chairman" maxlength="11" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid Number
      </div>
    </div>
  </div>
  
  <div class="form-row">
    <div class="col-md-12  mb-3">
      <asp:Label ID="Label8" runat="server" Text="Member Parent"></asp:Label>
        <asp:TextBox ID="txtparent" runat="server" class="form-control" placeHolder="Member Parent"  required></asp:TextBox>
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
   
</asp:Content>

