<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_school_facilities.aspx.cs" Inherits="Edit_school_facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal; font-size: x-large; color: #964D6E">Edit</span><span 
                    style="font-style: normal"><span style="font-size: x-large; color: #964D6E"> School 
                Facilities</span></span></td>
            <td class="modal-sm" style="width: 262px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Facilities ID</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:Label ID="lblfacilitiesid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">School Name</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpschoolname" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="drpschoolname" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Select Village Council</span></td>
            <td class="modal-sm" style="width: 262px">
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
            <td style="width: 260px">
                <span style="font-style: normal">Select Village</span></td>
            <td class="modal-sm" style="width: 262px">
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
            <td style="width: 260px">
                <span style="font-style: normal">Total Rooms</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:TextBox ID="txttotalroom" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txttotalroom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Electricity</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpelectricity" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="drpelectricity" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Water</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpwater" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="drpwater" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Boundarey Wall</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpboundareywall" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="drpboundareywall" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Teacher Washroom</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpteacherwashroom" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="drpteacherwashroom" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                <span style="font-style: normal">Student Washroom</span></td>
            <td class="modal-sm" style="width: 262px">
                <asp:DropDownList ID="drpstudentwashroom" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="drpstudentwashroom" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 260px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 262px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 260px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 262px">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

