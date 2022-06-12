using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_death_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    private void vc()
    {
        SqlCommand cmd = new SqlCommand("select * from village_council",con);
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
            sid = Session["sec_id"].ToString();
            con = new SqlConnection(obj.cons);
            if (Page.IsPostBack == false)
            {
                vc();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from death_record where nic = '"+txtnic.Text+"'",con);
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
            SqlCommand cmd1 = new SqlCommand("insert into death_record(applicante_name,applicant_nic,name,nic,gender,f_name,f_nic,dob,dod,address,vc_name,village_name,s_id)values('"+txtapplicantname.Text+"','"+txtapplicantnic.Text+"','"+txtname.Text+"','"+txtnic.Text+"','"+drpgender.SelectedItem.Text+"','"+txtfname.Text+"','"+txtfnic.Text+"','"+txtdob.Text+"','"+txtdod.Text+"','"+txtaddress.Text+"','"+drpvillagecouncil.SelectedItem+"','"+drpvillage.SelectedItem+"','"+sid+"')",con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtapplicantname.Text = "";
            txtapplicantnic.Text = "";
            txtname.Text = "";
            txtnic.Text = "";
            drpgender.SelectedIndex = 0;
            txtfname.Text = "";
            txtfnic.Text = "";
            txtdob.Text = "";
            txtdod.Text = "";
            txtaddress.Text = "";
            drpvillagecouncil.SelectedIndex = 0;
            drpvillage.SelectedIndex = 0;
        }

    }
    protected void drpvillagecouncil_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        drpvillage.Items.Add("Select Village");
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='"+drpvillagecouncil.SelectedItem+"'", con);
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
        txtapplicantname.Text = "";
        txtapplicantnic.Text = "";
        txtname.Text = "";
        txtnic.Text = "";
        drpgender.SelectedIndex = 0;
        txtfname.Text = "";
        txtfnic.Text = "";
        txtdob.Text = "";
        txtdod.Text = "";
        txtaddress.Text = "";
        drpvillagecouncil.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;

    }
}