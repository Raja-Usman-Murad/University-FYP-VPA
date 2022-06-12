using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HighMemberHome : System.Web.UI.Page
{
    string member;
    SqlConnection con;
    my_code_file obj = new my_code_file();
    protected void Page_Load(object sender, EventArgs e)
    {
         con = new SqlConnection(obj.cons);
        if (Session["mid"] == null)
        {
            Response.Redirect("HighMemberLoign.aspx");
        }
        else
        {
            member = Session["mid"].ToString();
           // lbluid.Text = member;
            SqlCommand cmd = new SqlCommand("Select * from member where m_id='"+member+"'",con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbluid.Text = (r["name"].ToString());
                Label1.Text = (r["email"].ToString());
                Label2.Text = (r["position"].ToString());
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