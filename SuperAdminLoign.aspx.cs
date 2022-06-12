using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class AdminLoign : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Load Event
        con = new SqlConnection(obj1.cons);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Button : Login
        SqlCommand cmd = new SqlCommand("select * from admin where adm_id='" + txtID.Text + "' and password='" + txtPwd.Text + "'",con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            // creating session 
            Session["uid"] = txtID.Text;
            Response.Redirect("SuperAdminHome.aspx");
        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Invalid Admin ID/Admin password";
            lblmsg.ForeColor = Color.Red;
        }
    }
} 