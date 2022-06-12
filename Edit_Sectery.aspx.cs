using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_Sectery : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String sectery;
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
        con = new SqlConnection(obj1.cons);
        if (Page.IsPostBack == false)
        {
            vc();
        }
        sectery = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from sectery where s_id= '" + sectery + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                txtsectid.Text = r["s_id"].ToString();
                txtname.Text = r["name"].ToString();
                txtnic.Text = r["nic"].ToString();
                txtfname.Text = r["f_name"].ToString();
                txtemail.Text = r["email"].ToString();
                txtpass.Text = r["password"].ToString();
                txtcontno.Text = r["contact_no"].ToString();
                txtdatehirring.Text = r["date_hirring"].ToString();
                drpvc.SelectedItem.Text = r["vc_name"].ToString();
                drpvillage.SelectedItem.Text = r["village_name"].ToString();
                txttehsil.Text = r["tehsil"].ToString();
                txtaddress.Text = r["district"].ToString();
                txtaddress.Text = r["address"].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from sectery where s_id= '" + txtsectid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update sectery set name='"+txtname.Text+"',nic='"+txtnic.Text+"',f_name='"+txtfname.Text+"',email='"+txtemail.Text+"',password='"+txtpass.Text+"',contact_no='"+txtcontno.Text+"',date_hirring='"+txtdatehirring.Text+"',vc_name='"+drpvc.SelectedItem+"',village_name='"+drpvillage.SelectedItem+"',tehsil='"+txttehsil.Text+"',district='"+txtdistrict.Text+"',address='"+txtaddress.Text+"' where s_id='"+txtsectid.Text+"'", con);
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
            lblmsg.ForeColor = Color.Green;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from sectery where s_id= '" + txtsectid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from sectery where s_id='" + txtsectid.Text + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Deleted Sucessfully";
            lblmsg.ForeColor = Color.Green;

        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Not eixst or either deleted";
            lblmsg.ForeColor = Color.Green;
        }
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        drpvillage.Items.Add("Select village");
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