<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_school_sthrength.aspx.cs" Inherits="add_school_sthrength" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add School Strength</h2>

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
        <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label>
        <asp:TextBox ID="txtclass" runat="server" class="form-control"   placeHolder="Class" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Male Students"></asp:Label>
        <asp:TextBox ID="txtmalestudent" runat="server" class="form-control" placeHolder="Male Students" type="number"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label5" runat="server" Text="Female Students"></asp:Label>
        <asp:TextBox ID="txtfemalestudent" runat="server" class="form-control" placeHolder="Female Students" type="number"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label6" runat="server" Text="Total Students"></asp:Label>
        <asp:TextBox ID="txttotal" runat="server" class="form-control email"   placeHolder="Total Students" type="number" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid Email
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Class Teacher Name"></asp:Label>
        <asp:TextBox ID="txtclassteachername" runat="server" class="form-control" placeHolder="Class Teacher Name"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label2" runat="server" Text="Salary"></asp:Label>
        <asp:TextBox ID="txtsalery" runat="server" class="form-control number"   placeHolder="Salary" type="number" required></asp:TextBox>
         <div class="valid-feedback text-danger">
        Invalid Number
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

