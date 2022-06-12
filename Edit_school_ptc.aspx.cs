using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_school_ptc : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String ptc;
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
            ptc = Context.Request.QueryString["abc"].ToString();
            if (Page.IsPostBack == false)
            {
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

            if (Page.IsPostBack == false)
            {
                vc();
            }
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from school_ptc where ptc_id= '" + ptc + "'", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                if (r.Read())
                {
                    lblscholptc.Text = r["ptc_id"].ToString();
                    for (int i = 0; i < drpschool.Items.Count; i++) // Foe Drp drp school
                    {
                        if (drpschool.Items[i].Text == r["school_name"].ToString())
                        {
                            drpschool.SelectedIndex = i;
                        }
                    }
                    
                    for (int i = 0; i < drpvc.Items.Count; i++) // For drp Village name
                    {
                        if (drpvc.Items[i].Text == r["vc_name"].ToString())
                        {
                            drpvc.SelectedIndex = i;
                        }
                    }
                    drpvillage.SelectedItem.Text = r["village_name"].ToString();
                    txtptcacountno.Text = r["ptc_acountno"].ToString();
                    txtbankname.Text = r["bank_name"].ToString();
                    txtbankbranch.Text = r["bank_branch"].ToString();
                    txtpresentbal.Text = r["present_balance"].ToString();
                    txtchairman.Text = r["chairman"].ToString();
                    txtvice.Text = r["vice_chairman"].ToString();
                    txtparent.Text = r["member_parent"].ToString();
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
        SqlCommand cmd = new SqlCommand("select * from school_ptc where ptc_id= '" + lblscholptc.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update school_ptc set school_name='"+drpschool.SelectedItem.Text+"',vc_name='"+drpvc.SelectedItem+"',village_name='"+drpvillage.SelectedItem+"',ptc_acountno='"+txtptcacountno.Text+"',bank_name='"+txtbankname.Text+"',bank_branch='"+txtbankbranch.Text+"',present_balance='"+txtpresentbal.Text+"',chairman='"+txtchairman.Text+"',vice_chairman='"+txtvice.Text+"',member_parent='"+txtparent.Text+"' where ptc_id ='"+lblscholptc.Text+"'", con);
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
        SqlCommand cmd = new SqlCommand("select * from school_ptc where ptc_id= '" +lblscholptc.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from school_ptc where ptc_id='" + lblscholptc.Text + "'", con);
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