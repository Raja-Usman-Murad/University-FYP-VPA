<%@ Page Title="" Language="C#" MasterPageFile="~/visistor_master.master"  enableEventValidation="false" AutoEventWireup="true" CodeFile="SuperAdminLoign.aspx.cs" Inherits="AdminLoign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="row d-flex justify-content-center align-items-center slideInLeft" style="margin-top: 60px">
                <center>
                    <h2>Admin Login</h2>

                    <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label3" runat="server" Text="Admin ID"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" class="form-control" placeHolder="Admin ID"  required></asp:TextBox>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-6 mb-3">
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPwd" runat="server" class="form-control"  TextMode="Password" placeHolder="Password" required></asp:TextBox>
         <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  
  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" class="btn btn-primary w-100"/>
  <asp:Label ID="lblmsg" class="bounceIn" runat="server"></asp:Label>
</form>
</center>
                
 </div>
    
</asp:Content>

