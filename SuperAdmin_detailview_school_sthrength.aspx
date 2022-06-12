<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="SuperAdmin_detailview_school_sthrength.aspx.cs" Inherits="detailview_school_sthrength" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row d-flex justify-content-center align-items-center" style="margin-top:60px">  
	<div class="row row d-flex justify-content-center align-items-center" style="width:100%">
		<center style="width:75%">
		<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" class="table table-bordered table-striped mt-3 w-100 text-center"
                Height="50px" Width="766px">
                <Fields>
            <asp:BoundField DataField="sth_id" HeaderText="Strength ID" />
            <asp:BoundField DataField="school_name" HeaderText="School Name" />
            <asp:BoundField DataField="class" HeaderText="Class" />
            <asp:BoundField DataField="male_students" HeaderText="Male Students" />
            <asp:BoundField DataField="female_students" HeaderText="Female Students" />
            <asp:BoundField DataField="total_students" HeaderText="Total Students" />
            <asp:BoundField DataField="classteacher_name" HeaderText="Class Teacher Name" />
            <asp:BoundField DataField="salrey" HeaderText="Salrey" />
        </Fields>
            	</asp:DetailsView>
                        <div class="row">
                <div class="col-md-6 mx-auto">
                    <a href="./SuperAdmin_view_school_strenght.aspx" class="btn btn-secondary w-100"><i class="fa fa-hand-point-left text-dark"></i> GO BACK</a>
                </div>
            </div>	
		</center>	
	</div>
</div>
    <script>

        $(document).ready(function () {
            let salary = $("td:contains('Salrey')")[0];
            salary.innerHTML = 'Salary'
            console.log(salary)
        })
    </script>
</asp:Content>

