using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_sectery : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
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
        con = new SqlConnection(obj.cons);
        if (Page.IsPostBack == false)
        {
            vc();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from sectery where s_id='" + txtsectid.Text + "'or nic='" + txtnic.Text + "'", con);
        
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Already Exist";
            lblmsg.ForeColor = Color.Red;
            txtsectid.Focus();
        }
        else
        {
            r.Close();
            con.Close();
            /// insert query 
            SqlCommand cmd1 = new SqlCommand("insert into sectery(s_id,name,nic,f_name,email,password,contact_no,date_hirring,vc_name,village_name,tehsil,district,address)values('"+txtsectid.Text+"','"+txtname.Text+"','"+txtnic.Text+"','"+txtfname.Text+"','"+txtemail.Text+"','"+txtpass.Text+"','"+txtcontno.Text+"','"+txtdatehirring.Text+"','"+drpvc.SelectedItem+"','"+drpvillage.SelectedItem+"','"+txttehsil.Text+"','"+txtdistrict.Text+"','"+txtaddress.Text+"')",con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtsectid.Text = "";
            txtname.Text = "";
            txtnic.Text = "";
            txtfname.Text = "";
            txtemail.Text = "";
            txtpass.Text = "";
            txtcontno.Text = "";
            txtdatehirring.Text = "";
            txttehsil.Text = "";
            txtdistrict.Text = "";
            txtaddress.Text = "";
            drpvillage.SelectedIndex = 0;
            drpvc.SelectedIndex = 0;


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