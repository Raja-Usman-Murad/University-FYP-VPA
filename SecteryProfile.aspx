<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="SecteryProfile.aspx.cs" Inherits="detailview_sectery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row d-flex justify-content-center align-items-center" style="margin-top: 60px">
        <div class="row row d-flex justify-content-center align-items-center" style="width: 100%">
            <center style="width: 75%">
                <h2>SECRETARY PROFILE</h2>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                    Height="50px" Width="413px" class="table table-bordered table-striped mt-3 w-100 text-center">
                    <Fields>
                        <asp:BoundField DataField="s_id" HeaderText="Sectery ID" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="nic" HeaderText="NIC" />
                        <asp:BoundField DataField="f_name" HeaderText="Father Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="contact_no" HeaderText="Contact Number" />
                        <asp:BoundField DataField="date_hirring" HeaderText="Date Hirring" />
                        <asp:BoundField DataField="vc_name" HeaderText="Village Concil" />
                        <asp:BoundField DataField="tehsil" HeaderText="Tehsil" />
                        <asp:BoundField DataField="district" HeaderText="District" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                    </Fields>
                </asp:DetailsView>
            </center>

        </div>
    </div>

</asp:Content>

