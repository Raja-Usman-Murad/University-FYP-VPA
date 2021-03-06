using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_application_water : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    string application;
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
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
        con = new SqlConnection(obj1.cons);
        if (Page.IsPostBack == false)
        {
            vc();
        }
        application = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from application_water where app_no = '" + application + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lblapp.Text = r["app_no"].ToString();
                drpvc.SelectedItem.Text = r["vc_name"].ToString();
                drpvillage.SelectedItem.Text = r["village_name"].ToString();
                txtname.Text = r["name"].ToString();
                txtfname.Text = r["f_name"].ToString();
                txtnic.Text = r["nic"].ToString();
                txtaddress.Text = r["address"].ToString();
                txtdate.Text = r["date"].ToString();
                r.Close();
                con.Close();
            }
            else
            {
                r.Close();
                con.Close();
            }
        }
        }
 }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from application_water where app_no= '" + lblapp.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update application_water set name='" + txtname.Text + "',vc_name='"+drpvc.SelectedItem+"',village_name='"+drpvillage.SelectedItem+"', f_name='" + txtfname.Text + "', nic='" + txtnic.Text + "', address='" + txtaddress.Text + "',date='" + txtdate.Text + "' where app_no='" + lblapp.Text + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Updated Sucessfully";
            lblmsg.ForeColor = Color.Green;

        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Not eixst or either deleted";
            lblmsg.ForeColor = Color.Red;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from application_water where app_no= '" + lblapp.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from application_water where app_no='" +lblapp.Text + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Deleted Sucessfully";
            lblmsg.ForeColor = Color.Red;

        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Not eixst or either deleted";
            lblmsg.ForeColor = Color.Red;
        }
    }

    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
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
}