<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_infund.aspx.cs" Inherits="Edit_infund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        <tr>
            <td style="width: 224px; font-size: large;">
                <span style="font-style: normal; font-size: x-large; color: #A1295F">Edit&nbsp; InFund</span></td>
            <td style="width: 287px; font-size: xx-large">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 224px; font-size: x-large">
                <span style="font-style: normal; font-size: medium">Serial No</span></td>
            <td style="width: 287px">
                <asp:TextBox ID="txtserial" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtserial" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 224px; font-size: x-large">
                <span style="font-style: normal; font-size: medium">Amount</span></td>
            <td style="width: 287px">
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 224px; font-size: x-large">
                <span style="font-style: normal; font-size: medium">Source</span></td>
            <td style="width: 287px">
                <asp:TextBox ID="txtsource" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtsource" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 224px; font-size: x-large">
                <span style="font-style: normal; font-size: medium">Date</span></td>
            <td style="width: 287px">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 224px">
                &nbsp;</td>
            <td style="width: 287px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 224px">
                &nbsp;</td>
            <td style="width: 287px">
                <asp:Button ID="Button2" runat="server" style="font-size: medium" 
                    Text="Update" onclick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_txtserial").prop("readonly", true);
        });
    </script>
</asp:Content>

