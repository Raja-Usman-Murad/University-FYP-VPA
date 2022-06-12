using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Add_School_information : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String sid;
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
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            sid = Session["sec_id"].ToString();
            if (Page.IsPostBack == false)
            {
                vc();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from school_information where school_name = '" + txtschol.Text + "'or code='" + txtcode.Text + "'", con);
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
            SqlCommand cmd1 = new SqlCommand("insert into school_information(school_name,vc_name,village_name,code,headmaster_name,contact_no,s_id)values('" + txtschol.Text + "','" + drpvc.SelectedItem.Text + "','" + drpvillage.SelectedItem.Text + "','" + txtcode.Text + "','" + txtmastername.Text + "','" + txtcontact.Text + "','" + sid + "')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtschol.Text = "";
            drpvc.SelectedIndex = 0;
            drpvillage.SelectedIndex = 0;
            txtcode.Text = "";
            txtmastername.Text = "";
            txtcontact.Text = "";

        }
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        drpvillage.Items.Add("Select");
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='" +drpvc.SelectedItem + "'", con);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtschol.Text = "";
        drpvc.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;
        txtcode.Text = "";
        txtmastername.Text = "";
        txtcontact.Text = "";
    }
}
