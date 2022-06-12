using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_poor_record : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String poor;
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
        {
            con = new SqlConnection(obj1.cons);
            if (Page.IsPostBack == false)
            {
                vc();
            }
            poor = Context.Request.QueryString["abc"].ToString();
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from poor_record where p_id= '" + poor + "'", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                if (r.Read())
                {
                    lblpoorid.Text = r["p_id"].ToString();

                    txtname.Text = r["name"].ToString();
                    txtfname.Text = r["f_name"].ToString();
                    txtnic.Text = r["nic"].ToString();


                    txtdob.Text = r["dob"].ToString();
                    txtcontactno.Text = r["contact_no"].ToString();

                    drpvc.SelectedItem.Text = r["village_concil"].ToString();
                    drpvillage.SelectedItem.Text = r["village"].ToString();
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
        SqlCommand cmd = new SqlCommand("select * from poor_record where p_id= '" + lblpoorid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update poor_record set name='" + txtname.Text + "',f_name='" + txtfname.Text + "', nic='"+txtnic.Text+"', dob='" + txtdob.Text + "',contact_no='" + txtcontactno.Text + "',village_concil='" + drpvc.SelectedItem + "',village='" + drpvillage.SelectedItem + "'where p_id='" + lblpoorid.Text + "'", con);
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
        SqlCommand cmd = new SqlCommand("select * from poor_record where p_id= '" + lblpoorid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from poor_record where p_id='" + lblpoorid.Text + "'", con);
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
}
