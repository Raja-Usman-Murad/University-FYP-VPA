using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_birth_record : System.Web.UI.Page
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
        con = new SqlConnection(obj.cons);
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            sid = Session["sec_id"].ToString();
            
           
        }
        if (Page.IsPostBack == false)
        {
            vc();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          SqlCommand cmd = new SqlCommand("select * from birth_records where f_nic = '"+txtfnic.Text+"' and child_name='"+txtchildname.Text+"'",con);
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
            SqlCommand cmd1 = new SqlCommand("insert into birth_records(applicante_name,applicante_nic,child_name,gender,f_name,f_nic,m_name,m_nic,dob,address,vc_name,village,s_id)values('"+txtapplicantename.Text+"','"+txtappplinic.Text+"','"+txtchildname.Text+"','"+drpgender.SelectedItem+"','"+txtfname.Text+"','"+txtfnic.Text+"','"+txtmothername.Text+"','"+txtmothernic.Text+"','"+txtdob.Text+"','"+txtaddress.Text+"','"+drpvc.SelectedItem+"','"+drpvillage.SelectedItem+"','"+sid+"')",con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtapplicantename.Text = "";
            txtappplinic.Text = "";
            txtchildname.Text = "";
            drpgender.SelectedIndex = 0;
            txtfname.Text = "";
            txtfnic.Text = "";
            txtmothername.Text = "";
            txtmothernic.Text = "";
            txtdob.Text = "";
            txtaddress.Text = "";
            drpvc.SelectedIndex = 0;
            drpvillage.SelectedIndex = 0;
        }
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtapplicantename.Text = "";
        txtappplinic.Text = "";
        txtchildname.Text = "";
        drpgender.SelectedIndex = 0;
        txtfname.Text = "";
        txtfnic.Text = "";
        txtmothername.Text = "";
        txtmothernic.Text = "";
        txtdob.Text = "";
        txtaddress.Text = "";
        drpvc.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;
    }
}