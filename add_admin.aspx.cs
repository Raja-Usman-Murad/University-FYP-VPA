using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_admin : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
    }
    protected void Botton1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from admin where adm_id='" + txtadmin.Text + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Record Already Exist";
            lblmsg.ForeColor = System.Drawing.Color.Red;

        }
        else
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("insert into admin(adm_id,password,name)values('" + txtadmin.Text + "','" + txtpass.Text + "','" + txtname.Text + "')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            txtadmin.Text = "";
            txtname.Text = "";
            Response.Redirect("Default.aspx");

        }
    }
}