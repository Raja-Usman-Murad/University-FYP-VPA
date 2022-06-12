<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="Admin_village.aspx.cs" Inherits="Admin_village" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
            <div class="row row d-flex justify-content-center align-items-center" style="width:100%">
                <center style="width:75%">
                    <h2>Add Village Name</h2>

<form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-12 mb-3">
        <label>Select Village Council</label>
           <asp:DropDownList class="custom-select form-control" ID="drpvc" runat="server" AutoPostBack="True" 
                     required>
                    <asp:ListItem class="dropdown-item" >Select</asp:ListItem>
          </asp:DropDownList>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>

    </div>
    <div class="col-md-12 mb-3">
        <asp:Label ID="Label7" runat="server" Text="Village Name"></asp:Label>
        <asp:TextBox ID="txtvillage" runat="server" class="form-control" placeHolder="Village Name"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
      </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
     <asp:Button ID="Button3" runat="server" onclick="Button1_Click" Text="Add" class="btn btn-primary w-100 addJS"/>
    </div>
      <div class="col-md-6 mb-3">
      <asp:Button ID="Button4" runat="server" onclick="Button2_Click" Text="Delete" class="btn btn-danger w-100 addJS"/>
    </div>
  </div>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
   <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-striped mt-3 w-100 text-center" AutoGenerateColumns="False" 
        Height="54px" Width="120px">
        <Columns>
            <asp:BoundField DataField="village_name" HeaderText="Village Name" />
            <asp:BoundField DataField="vc_name" HeaderText="Village Council Name" />
        </Columns>
</asp:GridView> 
</center>
   
 </div>
 </div>
   
</asp:Content>

