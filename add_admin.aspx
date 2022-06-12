<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true"  enableEventValidation="false" CodeFile="add_admin.aspx.cs" Inherits="add_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row d-flex justify-content-center align-items-center slideInLeft" style="margin-top: 60px">
                <center>
                    <h2>Add Admin</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Admin ID"></asp:Label>
        <asp:TextBox ID="txtadmin" runat="server" class="form-control" placeHolder="Admin ID" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" class="form-control"  TextMode="Password" placeHolder="Password" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label1" runat="server" Text="Admin Name"></asp:Label>
        <asp:TextBox ID="txtname" runat="server" class="form-control" placeHolder="Admin Name" required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  
  <asp:Button ID="Botton1" runat="server" onclick="Botton1_Click" Text="Add" class="btn btn-primary w-100"/>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
</center>
                
 </div>
</asp:Content>

