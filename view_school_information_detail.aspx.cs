using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class view_school_information_detail : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    private void readdist()
    {
        SqlCommand cmd = new SqlCommand("select * from district", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpdistrict.Items.Add(r["dis_name"].ToString());

        }
        r.Close();
        con.Close();
    }
    private void readtehsil()
    {
        SqlCommand cmd = new SqlCommand("select * from tehsil where dis_name ='"+drpdistrict.SelectedItem    +"'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drptehsil.Items.Add(r["tehsil_name"].ToString());

        }
        r.Close();
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Page.IsPostBack == false)
        {
            readdist();
        }

    }
    protected void drpdistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        drptehsil.Items.Clear();
        drptehsil.Items.Add("select tehsil");
        readtehsil();
    
    }
    protected void drptehsil_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvc.Items.Clear();
        drpvc.Items.Add("Select VC");
        SqlCommand cmd = new SqlCommand("select * from village_council where tehsil_name ='" + drptehsil.SelectedItem + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvc.Items.Add(r["vc_name"].ToString());

        }
        r.Close();
        con.Close();
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        drpvillage.Items.Add("Select Village");
        SqlCommand cmd = new SqlCommand("select * from village where vc_name ='" + drpvc.SelectedItem + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvillage.Items.Add(r["village_name"].ToString());

        }
        r.Close();
        con.Close();
    }
    protected void drpvillage_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Items.Clear();
        DropDownList5.Items.Add("Select School");
        SqlCommand cmd = new SqlCommand("select * from school_information where village_name ='" + drpvillage.SelectedItem + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            DropDownList5.Items.Add(r["School_name"].ToString());

        }
        r.Close();
        con.Close();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        // read school information code 
        SqlDataAdapter ad = new SqlDataAdapter("select * from school_information where school_name='" + DropDownList5.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        detailschool_info.DataSource = ds;
        detailschool_info.DataBind();

        /// read strength 

        SqlDataAdapter ad1 = new SqlDataAdapter("select * from school_sthrength where school_name='"+DropDownList5.SelectedItem.Text+"' ", con);
        DataSet ds1 = new DataSet();
        ad1.Fill(ds1);
        grid_strength.DataSource = ds1;
        grid_strength.DataBind();

        // read facilities
        SqlDataAdapter ad2 = new SqlDataAdapter("select * from schools_facilities where school_name='" + DropDownList5.SelectedItem.Text + "' ", con);
        DataSet ds2 = new DataSet();
        ad2.Fill(ds2);
        GridFacilities.DataSource = ds2;
        GridFacilities.DataBind();



        /// read PTC 
        SqlDataAdapter ad3 = new SqlDataAdapter("select * from school_ptc where school_name='" + DropDownList5.SelectedItem.Text + "'", con);
        DataSet ds3 = new DataSet();
        ad3.Fill(ds3);
        gridptc.DataSource = ds3;
        gridptc.DataBind();
    }
    protected void gridptc_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}