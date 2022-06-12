<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_disable_record.aspx.cs" Inherits="Edit_disable_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 216px; font-size: large; height: 26px;">
                <span style="font-style: normal; font-size: x-large; color: #964D6E">Edit Disable Record</span></td>
            <td class="modal-sm" style="width: 255px; font-size: xx-large; height: 26px;">
                &nbsp;</td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Disable ID</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:Label ID="lbldisableid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Select Village Concil</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:DropDownList ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Select Village</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Name</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">NIC</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:TextBox ID="txtnic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Death of Birth</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Contact No</span></td>
            <td class="modal-sm" style="width: 255px">
                <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcontactno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; font-size: medium">
                <span style="font-style: normal">Disability Type
            </span>
            </td>
            <td class="modal-sm" style="width: 255px">
                <asp:TextBox ID="txtdistype" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtdistype" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 255px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 255px">
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

