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
        if (Page.IsPostBack == false)
        {
            readtype();
        }
    }
    private void readtype()
    {
        SqlCommand cmd = new SqlCommand("select distinct position from member", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            DropDownList1.Items.Add(r["position"].ToString());
           
        }
        r.Close();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Button : Login
        SqlCommand cmd = new SqlCommand("select * from member where m_id='" + txtID.Text + "' and password='" + txtPwd.Text + "'",con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            Session["mid"] = txtID.Text;
            Response.Redirect("HighMemberHome.aspx");
        }
        else
        {
            r.Close();
            con.Close();
            lblmsg.Text = "Invalid Member ID/Member password";
            lblmsg.ForeColor = Color.Red;
        }
    }
} 