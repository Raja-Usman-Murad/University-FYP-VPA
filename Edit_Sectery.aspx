<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_Sectery.aspx.cs" Inherits="Edit_Sectery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 259px; font-size: large">
                <span style="font-style: normal; font-size: x-large; color: #964D6E">Edit </span>
                <span style="font-style: normal">
                <span style="color: #964D6E; font-size: x-large;">Sectery</span></span></td>
            <td class="modal-sm" style="width: 258px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Sectery ID</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtsectid" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtsectid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Name</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">NIC</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtnic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Father Name</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Email Address</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Password</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Contact Number</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtcontno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcontno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Date Hirring</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtdatehirring" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdatehirring" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Select Village Council</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:DropDownList ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Select Council</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Tehsil</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txttehsil" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txttehsil" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">District</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtdistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                <span style="font-style: normal">Address</span></td>
            <td class="modal-sm" style="width: 258px">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 259px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 258px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 258px">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

