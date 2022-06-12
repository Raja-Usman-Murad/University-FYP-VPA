using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_schhol_ptc : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from school_information", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                while (r.Read())
                {
                    drpschool.Items.Add(r["school_name"].ToString());
                }
                r.Close();
                con.Close();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from school_ptc where school_name='" + drpschool.SelectedItem.Text + "'or ptc_acountno='" + txtptcacountno.Text + "'", con);
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
            
            SqlCommand cmd1 = new SqlCommand("insert into school_ptc(school_name,vc_name,village_name,ptc_acountno,bank_name,bank_branch,present_balance,chairman,vice_chairman,member_parent,s_id)values('" + drpschool.SelectedItem.Text + "','"+drpvc.SelectedItem+"','"+drpvillage.SelectedItem+"','" + txtptcacountno.Text + "','" + txtbankname.Text + "','" + txtbankbranch.Text + "','" +txtpresentbal.Text + "','" + txtchairman.Text + "','"+txtvice.Text+"','"+txtparent.Text+"','"+sid+"')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            drpschool.SelectedIndex = 0;
            drpvc.SelectedIndex = 0;
            drpvillage.SelectedIndex = 0;
            txtptcacountno.Text = "";
            txtbankname.Text = "";
            txtbankbranch.Text = "";
            txtpresentbal.Text = "";
            txtchairman.Text = "";
            txtvice.Text = "";
            txtparent.Text = "";


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
    protected void Button2_Click(object sender, EventArgs e)
    {
        drpschool.SelectedIndex = 0;
        drpvc.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;
        txtptcacountno.Text = "";
        txtbankname.Text = "";
        txtbankbranch.Text = "";
        txtpresentbal.Text = "";
        txtchairman.Text = "";
        txtvice.Text = "";
        txtparent.Text = "";

    }
}