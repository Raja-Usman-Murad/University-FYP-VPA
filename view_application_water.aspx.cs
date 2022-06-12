using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_application_water : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["sec_id"] == null)
            {
                Response.Redirect("SecteryLoign.aspx");
            }
            else
            {
                sid = Session["sec_id"].ToString();
                con = new SqlConnection(obj.cons);
                SqlDataAdapter ad = new SqlDataAdapter("select * from application_water where s_id='" + sid + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        catch(Exception ex)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (drpsearch.SelectedIndex == 1)
            {
                SqlDataAdapter ad = new SqlDataAdapter("select * from application_water where app_no='" +txtsearch.Text  + "' and s_id='" + sid + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (drpsearch.SelectedIndex == 2)
            {
                SqlDataAdapter ad = new SqlDataAdapter("select * from application_water where name='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }
        catch (Exception ex)
        {
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from application_water where s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
}