<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_application_water.aspx.cs" Inherits="Edit_application_water" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style="width: 100%;">
        <tr>
            <td style="font-size: x-large; height: 31px; text-align: left;" colspan="3">
                <span style="font-style: normal">&nbsp;<span style="color: #964D6E"><strong>Edit Application water</strong></span></span></td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Application number</span></td>
            <td style="width: 256px" class="text-left">
                <asp:Label ID="lblapp" runat="server"></asp:Label>
            </td>
            <td class="text-left">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Select Village Council</span></td>
            <td style="width: 256px" class="text-left">
                <asp:DropDownList ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Select Village</span></td>
            <td style="width: 256px" class="text-left">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Applicant
                Name</span></td>
            <td style="width: 256px" class="text-left">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Father Name</span></td>
            <td style="width: 256px" class="text-left">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">NIC</span></td>
            <td style="width: 256px" class="text-left">
                <asp:TextBox ID="txtnic" runat="server" placeholder="1111-1111111-1"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Address</span></td>
            <td style="width: 256px" class="text-left">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px; font-size: medium;">
                <span style="font-style: normal">Date</span></td>
            <td style="width: 256px" class="text-left">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 190px">
                <span style="font-style: normal"></span></td>
            <td style="width: 256px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 256px">
                <asp:Button ID="Button1" runat="server" Text="Update" style="font-size: medium" 
                    onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Delete" 
                    style="font-size: medium" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

