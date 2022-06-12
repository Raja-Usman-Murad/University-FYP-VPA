<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_poor_record.aspx.cs" Inherits="Edit_poor_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td class="modal-sm" 
                
                
                style="width: 246px; font-size: x-large; font-style: normal; color: #964D6E;">
                Edit Poor Record</td>
            <td class="modal-sm" style="width: 282px; font-size: xx-large">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Poor ID</td>
            <td class="modal-sm" style="width: 282px">
                <asp:Label ID="lblpoorid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Name</td>
            <td class="modal-sm" style="width: 282px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Father Name</td>
            <td class="modal-sm" style="width: 282px">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                NIC</td>
            <td class="modal-sm" style="width: 282px">
                <asp:TextBox ID="txtnic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Date of Birth</td>
            <td class="modal-sm" style="width: 282px">
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Contact No</td>
            <td class="modal-sm" style="width: 282px">
                <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcontactno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Select
                Village Council</td>
            <td class="modal-sm" style="width: 282px">
                <asp:DropDownList ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" 
                style="width: 246px; font-size: medium; font-style: normal;">
                Select
                Village</td>
            <td class="modal-sm" style="width: 282px">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 246px; font-size: x-large">
                &nbsp;</td>
            <td class="modal-sm" style="width: 282px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 246px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 282px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 246px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 282px">
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

