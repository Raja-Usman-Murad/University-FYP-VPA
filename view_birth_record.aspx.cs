using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_birth_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            sid = Session["sec_id"].ToString();
            con = new SqlConnection(obj.cons);
            SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where s_id='"+sid+"'", con);
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where b_id='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (drpsearch.SelectedIndex == 2)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where applicante='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (drpsearch.SelectedIndex == 3)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where child_name='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where s_id='" + sid + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}