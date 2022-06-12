<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_school_sthrength.aspx.cs" Inherits="Edit_school_sthrength" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 238px; font-size: large">
                <span style="font-style: normal">
                <span style="color: #964D6E; font-size: x-large;">Edit</span>
                <span style="color: #964D6E; font-size: x-large;">School Strength</span></span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Sthrength ID</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:Label ID="lblsthid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">School Name</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:DropDownList ID="drpschool" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpschool" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Class</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtclass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Male Students</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txtmalestudent" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmalestudent" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Female Students</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txtfemalestudent" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtfemalestudent" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Total Students</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txttotal" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">ClassTeacher Name</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txtclassteachername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtclassteachername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Salrey</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:TextBox ID="txtsalery" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtsalery" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                <span style="font-style: normal">Select Village Council</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
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
            <td style="width: 238px">
                <span style="font-style: normal">Select Village</span></td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:DropDownList ID="drpvillage" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="drpvc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 238px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 238px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 283px; font-size: large">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

