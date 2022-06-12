using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Secetery_Change_Password : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       SqlCommand cmd = new SqlCommand("select * from sectery where s_id= '" + txtsid.Text + "' and password='"+txtoldpassword.Text+"'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update sectery set password='" + txtconfimepass.Text + "' where s_id='"+txtsid.Text+"' and password='"+txtoldpassword.Text+"'",con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Password Updated Sucessfully";
            lblmsg.ForeColor = Color.Green;
            txtsid.Text = "";
            txtconfimepass.Text = "";
            txtnewpassword.Text = "";
        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Invalid User ID or password";
            lblmsg.ForeColor = Color.Red;
        }
    }
}