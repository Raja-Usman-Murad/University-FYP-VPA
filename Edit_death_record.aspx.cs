using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_death_record : System.Web.UI.Page
{
     my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String death;
    private void vc()
    {
        SqlCommand cmd = new SqlCommand("select * from village_council", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvillagecouncil.Items.Add(r["vc_name"].ToString());
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
        death = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from death_record where d_id= '" + death + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbldeathID.Text = r["d_id"].ToString();
                txtapplicantname.Text = r["applicante_name"].ToString();
                txtapplicantnic.Text = r["applicant_nic"].ToString();
                txtname.Text = r["name"].ToString();
                txtnic.Text = r["nic"].ToString();
                drpgender.SelectedItem.Text = r["gender"].ToString();
                txtfname.Text = r["f_name"].ToString();
                txtfnic.Text = r["f_nic"].ToString();
                txtdob.Text = r["dob"].ToString();
                txtdod.Text = r["dod"].ToString();
                txtaddress.Text = r["address"].ToString();
                drpvillagecouncil.SelectedItem.Text = r["vc_name"].ToString();
                drpvillage.SelectedItem.Text = r["village_name"].ToString();
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
        SqlCommand cmd = new SqlCommand("select * from death_record where d_id= '" + lbldeathID.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update death_record set applicante_name='" + txtapplicantname.Text + "',applicant_nic='" + txtapplicantnic.Text + "', name='" + txtname.Text + "',nic='"+txtnic.Text+"', gender='" + drpgender.SelectedItem + "', f_name='" + txtfname.Text + "',f_nic='" + txtfnic.Text + "', dob='" + txtdob.Text + "',dod='" + txtdod.Text + "',address='" + txtaddress.Text + "',vc_name='" + drpvillagecouncil.SelectedItem + "',village_name='" + drpvillage.SelectedItem + "'where d_id='" + lbldeathID.Text + "'", con);
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
        SqlCommand cmd = new SqlCommand("select * from death_record where d_id= '" + lbldeathID.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from death_record where d_id='" + lbldeathID.Text + "'", con);
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
    protected void drpvillagecouncil_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='" + drpvillagecouncil.SelectedItem + "'", con);
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