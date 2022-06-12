<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_death_record.aspx.cs" Inherits="Edit_death_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td style="width: 280px; font-size: medium; color: #A1295F;">
                <span style="font-style: normal; font-size: x-large">Edit </span>
                <span style="font-style: normal"><span style="font-size: x-large">Death Record</span></span></td>
            <td style="width: 297px; font-size: xx-large" class="modal-sm">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Death ID</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:Label ID="lbldeathID" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Applicant Name</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtapplicantname" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtapplicantname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Applicant NIC</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtapplicantnic" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtapplicantnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Name</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtname" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">NIC</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtnic" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Gender</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:DropDownList ID="drpgender" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="drpgender" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Father Name</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtfname" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Father NIC</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtfnic" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtfnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Date of Birth</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtdob" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Date of death</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtdod" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtdod" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Select Village Council</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:DropDownList ID="drpvillagecouncil" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvillagecouncil_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="drpvillagecouncil" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Select Village</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium">
                <span style="font-style: normal">Address</span></td>
            <td style="width: 297px" class="modal-sm">
                <asp:TextBox ID="txtaddress" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: medium;">
                &nbsp;</td>
            <td style="width: 297px" class="modal-sm">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px">
                &nbsp;</td>
            <td style="width: 297px" class="modal-sm">
                <asp:Button ID="Button1" runat="server" style="font-size: medium" Text="Update" 
                    onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" style="font-size: medium" 
                    Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

