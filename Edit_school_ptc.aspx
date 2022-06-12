<%@ Page Title="" EnableEventValidation="false"  Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_school_ptc.aspx.cs" Inherits="Edit_school_ptc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 235px; font-size: large; color: #964D6E">
                <span style="font-style: normal; font-size: x-large;">Edit School Ptc</span></td>
            <td class="modal-sm" style="width: 273px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal; font-size: medium">Ptc ID</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:Label ID="lblscholptc" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">School Name</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:DropDownList ID="drpschool" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpschool" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Select Village Council </span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:DropDownList ID="drpvc" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvc_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Select Village</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="drpvillage" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Ptc Acount No</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtptcacountno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtptcacountno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Bank Name</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtbankname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Bank branch</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtbankbranch" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtbankname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Present Balance</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtpresentbal" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpresentbal" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Chairman</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtchairman" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtchairman" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Vice Chairman</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtvice" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtvice" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; font-size: medium">
                <span style="font-style: normal">Member Parent</span></td>
            <td class="modal-sm" style="width: 273px">
                <asp:TextBox ID="txtparent" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtparent" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 273px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 235px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 273px">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

