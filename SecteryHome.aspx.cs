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
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        
            // reading session value from prev page 
            userid = Session["sec_id"].ToString();
            //lbluid.Text = userid;
            SqlCommand cmd = new SqlCommand("select * from sectery where s_id='"+userid+"'",con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbluid.Text = (r["name"].ToString());
                Label1.Text = (r["contact_no"].ToString());
                Label2.Text = (r["vc_name"].ToString());
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