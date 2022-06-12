using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminHome : System.Web.UI.Page
{
    string userid;
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
       // cheacking sesion value for null reference error 
        if (Session["uid"] == null)
        {
            Response.Redirect("SuperAdminLoign.aspx");
        }
        else
        { 
            // reading session value from prev page 
            userid = Session["uid"].ToString();
            //lbluid.Text = userid;
            SqlCommand cmd = new SqlCommand("select * from admin where adm_id='"+userid+"'",con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbluid.Text = (r["name"].ToString());
                r.Close();
                con.Close();


            }
            else
            {
                r.Close();
                con.Close();
                lbluid.Text = "";
            }
        }

    }
}