<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="Admin_tehsil.aspx.cs" Inherits="Admin_tehsil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add Tehsil</h2>

<form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-12 mb-3">
        <label>Select District</label>
           <asp:DropDownList class="custom-select form-control" ID="drpdistrict" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpdistrict_SelectedIndexChanged" required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpdistrict" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-12 mb-3">
        <asp:Label ID="Label7" runat="server" Text="Tehsil Name"></asp:Label>
        <asp:TextBox ID="txttehsil" runat="server" class="form-control" placeHolder="Tehsil Name"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
      </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
     <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" class="btn btn-primary w-100 addJS"/>
    </div>
      <div class="col-md-6 mb-3">
      <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" class="btn btn-danger w-100 addJS"/>
    </div>
  </div>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
   <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-striped mt-3 w-100 text-center" AutoGenerateColumns="False" 
        Height="54px" Width="120px">
        <Columns>
            <asp:BoundField DataField="dis_name" HeaderText="District Name" />
            <asp:BoundField DataField="tehsil_name" HeaderText="Tehsil Name" />
        </Columns>
</asp:GridView> 
</center>
   
 </div>
 

    </div>
    
</asp:Content>

