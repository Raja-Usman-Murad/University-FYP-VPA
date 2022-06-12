<%@ Page Title="" Language="C#" enableEventValidation="false" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Edit_outfund.aspx.cs" Inherits="Edit_outfund" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td style="width: 243px; font-size: large;">
                <span style="font-style: normal; font-size: x-large; color: #964D6E">Edit OutFund</span></td>
            <td style="width: 276px; font-size: xx-large">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px; font-size: medium">
                <span style="font-style: normal">Serial No</span></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtserialno" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtserialno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 243px; font-size: medium">
                <span style="font-style: normal">Amount</span></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtamount" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 243px; font-size: medium">
                <span style="font-style: normal">Expendicture All</span></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtexpall" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtexpall" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 243px; font-size: medium">
                <span style="font-style: normal">Date</span></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 243px; font-size: medium">
                &nbsp;</td>
            <td style="width: 276px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 243px">
                &nbsp;</td>
            <td style="width: 276px">
                <asp:Button ID="Button1" runat="server" style="font-size: medium" Text="Update" 
                    onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" style="font-size: medium" 
                    Text="Delete" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <script>
        $(document).ready(function () {
            console.log($("#ContentPlaceHolder1_txtserialno"))
            $("#ContentPlaceHolder1_txtserialno").prop("readonly", true);
        });
    </script>
</asp:Content>

