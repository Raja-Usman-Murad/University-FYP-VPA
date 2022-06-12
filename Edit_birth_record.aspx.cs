using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_birth_record : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String birth;
    private void vc()
    {
        SqlCommand cmd = new SqlCommand("select * from village_council", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvcname.Items.Add(r["vc_name"].ToString());
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
        birth = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from birth_records where b_id= '" + birth + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lblbirthid.Text = r["b_id"].ToString();
                txtapplicantname.Text = r["applicante_name"].ToString();
                txtapplicantnic.Text = r["applicante_nic"].ToString();
                txtchildname.Text = r["child_name"].ToString();
                drpgender.SelectedItem.Text = r["gender"].ToString();
                txtfname.Text = r["f_name"].ToString();
                txtfnic.Text = r["f_nic"].ToString();
                txtmname.Text = r["m_name"].ToString();
                txtmnic.Text = r["m_nic"].ToString();
                txtdob.Text = r["dob"].ToString();
                txtaddress.Text = r["address"].ToString();
                drpvcname.SelectedItem.Text = r["vc_name"].ToString();
                drpvillagename.SelectedItem.Text = r["village"].ToString();
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
        SqlCommand cmd = new SqlCommand("select * from birth_records where b_id= '" + lblbirthid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update birth_records set applicante_name='" + txtapplicantname.Text+ "',applicante_nic='" +txtapplicantnic.Text + "', child_name='" + txtchildname.Text + "', gender='" + drpgender.SelectedItem + "', f_name='" + txtfname.Text + "',f_nic='" + txtfnic.Text + "', m_name='" + txtmname.Text + "',m_nic='"+txtmnic.Text+"',dob='"+txtdob.Text+"',address='"+txtaddress.Text+"',vc_name='"+drpvcname.SelectedItem+"',village='"+drpvillagename.SelectedItem+"'where b_id='"+lblbirthid.Text+"'", con);
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
        SqlCommand cmd = new SqlCommand("select * from birth_records where b_id= '" + lblbirthid.Text+ "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from birth_records where b_id='" + lblbirthid.Text + "'", con);
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
    protected void drpvcname_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillagename.Items.Clear();
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='" + drpvcname.SelectedItem + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvillagename.Items.Add(r["village_name"].ToString());
        }
        r.Close();
        con.Close();
    }
}