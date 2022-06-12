using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_infund : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            sid = Session["sec_id"].ToString();
            con = new SqlConnection(obj.cons);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from infund where s_no ='" + txtserial.Text + "'", con);
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
            SqlCommand cmd1 = new SqlCommand("insert into infund (s_no,amount,source,date,s_id)values('" + txtserial.Text + "','" + txtamount.Text + "','" + txtsource.Text + "','" + txtdate.Text + "','"+sid+"')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtserial.Text = "";
            txtamount.Text = "";
            txtsource.Text = "";
            txtdate.Text = "";
        }
    }
    }
