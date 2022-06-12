using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class application_water : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from application_water where nic='" + txtnic.Text + "' and date='" + txtdate.Text + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Already Exist";
            
        }
        else
        {
            r.Close();
            con.Close();
            /// insert query 
            SqlCommand cmd1 = new SqlCommand("insert into application_water(vc_name,village_name,name,f_name,nic,address,date)values('" + drpvc.SelectedItem + "','" + drpvillage.SelectedItem + "','" + txtname.Text + "','" + txtfname.Text + "','" + txtnic.Text + "','" + txtaddress.Text + "','" + txtdate.Text + "')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";

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