<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Edit_marriage_record.aspx.cs" Inherits="Edit_marriage_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td style="width: 246px; font-size: large;">
                <span style="font-style: normal; font-size: x-large; color: #964D6E">Edit Marriage Record</span></td>
            <td class="modal-sm" style="width: 278px; font-size: xx-large">
                &nbsp;</td>
            <td>
                </span></td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Marriage ID</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:Label ID="lblmarrgid" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Dulha Name</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdulhaname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdulhaname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Dulha NIC</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdulhanic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdulhanic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father NameDulha</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtfndulha" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtfndulha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father Dulha NIC</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtfdulhanic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtfdulhanic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Age</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Status</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtstatus" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Address Dulha</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtaddressdulha" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtaddressdulha" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Union Concil</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtuc" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtuc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Tehsil</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txttehsil" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txttehsil" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">District</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtdistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Marriage Date</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtmarrigedate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtmarrigedate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Dulhan Name</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdulhanname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtdulhanname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Dulhan NIC</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdulhannic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtdulhannic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father NameDulhan</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtfnamedulhan" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtfnamedulhan" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Father Dulhan NIC</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtfdulhannic" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtfdulhannic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Age at Marriage
            </span>
            </td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtageatmaarg" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtageatmaarg" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Address Dulhan</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtadressdulhan" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtadressdulhan" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Mehr Amount</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtmehramount" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="txtmehramount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px; font-size: medium">
                <span style="font-style: normal">Detail Mehr</span></td>
            <td class="modal-sm" style="width: 278px">
                <asp:TextBox ID="txtdetailmehr" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="txtdetailmehr" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 246px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 278px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 246px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 278px">
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

