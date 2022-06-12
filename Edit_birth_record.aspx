     <%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_birth_record.aspx.cs" Inherits="Edit_birth_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 246px; font-size: large">
                <span style="font-style: normal; color: #964D6E; font-size: x-large;">Edit Birth Record</span></td>
            <td style="width: 261px; font-size: xx-large">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Birth ID</span></td>
            <td style="width: 261px">
                <asp:Label ID="lblbirthid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Applicant Name</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtapplicantname" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtapplicantname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Applicant NIC</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtapplicantnic" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtapplicantnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Child Name</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtchildname" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtchildname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Gender</span></td>
            <td style="width: 261px">
                <asp:DropDownList ID="drpgender" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="drpgender" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father Name</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtfname" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father NIC</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtfnic" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtfnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Mother Name</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtmname" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtmname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Mother NIC</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtmnic" runat="server" style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtmnic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">DOB</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtdob" runat="server" 
                    style="font-size: medium"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Address</span></td>
            <td style="width: 261px">
                <asp:TextBox ID="txtaddress" runat="server" 
                    style="font-size: medium; font-style: italic"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Select Village Council</span></td>
            <td style="width: 261px">
                <asp:DropDownList ID="drpvcname" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="drpvcname_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="drpvcname" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Select Village</span></td>
            <td style="width: 261px">
                <asp:DropDownList ID="drpvillagename" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="drpvillagename" ErrorMessage="*" ForeColor="Red" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px">
                &nbsp;</td>
            <td style="width: 261px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 246px">
                &nbsp;</td>
            <td style="width: 261px">
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

