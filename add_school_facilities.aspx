<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="add_school_facilities.aspx.cs" Inherits="add_school_facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add School Facilities</h2>

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
    <div class="col-md-6  mb-3">
        <label>Select Village</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvillage" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6  mb-3">
        <label>Electricity</label>
           <asp:DropDownList class="custom-select form-control" ID="drpelectricity" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Yes</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >No</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="drpelectricity" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6  mb-3">
        <label>Water</label>
           <asp:DropDownList class="custom-select form-control" ID="drpwater" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Yes</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >No</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drpwater" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6  mb-3">
        <label>Boundarey Wall</label>
           <asp:DropDownList class="custom-select form-control" ID="drpboundareywall" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Yes</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >No</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="drpboundareywall" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6  mb-3">
        <label>Teacher Washroom</label>
           <asp:DropDownList class="custom-select form-control" ID="drpteacherwashroom" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Yes</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >No</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="drpteacherwashroom" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-6  mb-3">
        <label>Student Washroom</label>
           <asp:DropDownList class="custom-select form-control" ID="drpstudentwashroom" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >Yes</asp:ListItem>
                    <asp:ListItem class="dropdown-item" >No</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpstudentwashroom" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
  </div>

  <div class="form-row">
    <div class="col-md-12 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Total Rooms"></asp:Label>
        <asp:TextBox ID="txttotalroom" runat="server" class="form-control" placeHolder="Total Rooms" type="number"  required></asp:TextBox>
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

