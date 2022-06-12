using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_member : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from member where m_id='" + txtmid.Text + "'or nic='" + txtnic.Text + "'", con);
        
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
            SqlCommand cmd1 = new SqlCommand("insert into member (m_id,name,f_name,nic,email,password,position)values('"+txtmid.Text+"','"+txtname.Text+"','"+txtfname.Text+"','"+txtnic.Text+"','"+txtemail.Text+"','"+txtpassword.Text+"','"+txtposition.Text+"')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtmid.Text = "";
            txtname.Text = "";
            txtfname.Text = "";
            txtnic.Text = "";
            txtemail.Text = "";
            txtpassword.Text = "";
            txtposition.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtmid.Text = "";
        txtname.Text = "";
        txtfname.Text = "";
        txtnic.Text = "";
        txtpassword.Text = "";
        txtposition.Text = "";
    }
}