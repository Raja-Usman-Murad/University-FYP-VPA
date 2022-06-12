using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Admin_tehsil : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    private void tehsil()
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("SuperAdminLoign.aspx");
        }
        else
        {
            con = new SqlConnection(obj.cons);
            if (Page.IsPostBack == false)
            {
                tehsil();
            }
            SqlDataAdapter ad = new SqlDataAdapter("select * from tehsil", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tehsil where tehsil_name = '" + txttehsil.Text + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Already Exist";
            lblmsg.ForeColor = Color.Red;

        }
        else
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("insert into tehsil(tehsil_name,dis_name)values('" + txttehsil.Text + "','"+drpdistrict.SelectedItem+"')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txttehsil.Text = "";
            Response.Redirect(Request.Url.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tehsil where tehsil_name= '" + txttehsil.Text + "'and dis_name='" + drpdistrict.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("  delete from tehsil where tehsil_name='" + txttehsil.Text + "'  ", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Deleted Sucessfully";
            lblmsg.ForeColor = Color.Green;
            txttehsil.Text = "";
            Response.Redirect(Request.Url.ToString());


        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Not eixst or either deleted";
            lblmsg.ForeColor = Color.Red;

        }
    }
    protected void drpdistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }
}