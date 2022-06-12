using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_application_water : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
     private void vc()
     {
        SqlCommand cmd = new SqlCommand("select * from village_council", con);
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
                if (Page.IsPostBack == false)
                {
                    vc();
                }
            }
        }
        catch(Exception ex)
        {
            lblmsg.Text = ex.ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("select * from application_water where nic='" + txtnic.Text + "' and date='" + txtdate.Text + "'", con);
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
                /// insert query 
                SqlCommand cmd1 = new SqlCommand("insert into application_water(vc_name,village_name,name,f_name,nic,address,date,s_id)values('" + drpvc.SelectedItem + "','" + drpvillage.SelectedItem + "','" + txtname.Text + "','" + txtfname.Text + "','" + txtnic.Text + "','" + txtaddress.Text + "','" + txtdate.Text + "','" + sid + "')", con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Record Saved";
                lblmsg.ForeColor = Color.Green;
                txtname.Text = "";
                txtfname.Text = "";
                txtnic.Text = "";
                txtaddress.Text = "";
                txtdate.Text = "";
                drpvillage.SelectedIndex = 0;
                drpvc.SelectedIndex = 0;

            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.ToString();
        }
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            drpvillage.Items.Clear();
            drpvillage.Items.Add("Select Village");
            SqlCommand cmd = new SqlCommand("select * from village where vc_name='" + drpvc.SelectedItem + "'", con);
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
        catch (Exception ex)
        {
            lblmsg.Text = ex.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        drpvc.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;
        txtname.Text = "";
        txtfname.Text = "";
        txtnic.Text = "";
        txtaddress.Text = "";
        txtdate.Text = "";
    }
}