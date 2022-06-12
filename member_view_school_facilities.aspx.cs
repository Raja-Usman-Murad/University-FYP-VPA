using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_school_facilities : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["mid"] == null)
        {
            Response.Redirect("HighMemberLoign.aspx");
        }
        else
        {
           
            SqlDataAdapter ad = new SqlDataAdapter("select * from schools_facilities", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (drpsearch.SelectedIndex == 1)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from schools_facilities where f_id='" + txtsearch.Text + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (drpsearch.SelectedIndex == 2)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from schools_facilities where school_name='" + txtsearch.Text + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ad = new SqlDataAdapter("select * from schools_facilities", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}