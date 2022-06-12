using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_outfund : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String outfund;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj1.cons);
        outfund = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from outfund where s_no= '" + outfund + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                txtserialno.Text = r["s_no"].ToString();
                txtamount.Text = r["amount"].ToString();
                txtexpall.Text = r["exp_all"].ToString();
                txtdate.Text = r["date"].ToString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from outfund where s_no= '" + txtserialno.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update outfund set amount='" + txtamount.Text + "',exp_all='" + txtexpall.Text + "',date='" + txtdate.Text + "'where s_no='" + txtserialno.Text + "'", con);
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
        SqlCommand cmd = new SqlCommand("select * from outfund where s_no= '" + txtserialno.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from outfund where s_no='" + txtserialno.Text + "'", con);
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
}