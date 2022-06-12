using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


public partial class Edit_school_sthrength : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    string sthrength;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //////////////////////
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            con = new SqlConnection(obj1.cons);
            sthrength = Context.Request.QueryString["abc"].ToString();
            /////
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from school_information", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                while (r.Read())
                {
                    drpschool.Items.Add(r["school_name"].ToString());
                }
                r.Close();
                con.Close();
            }
            ////
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from village_council", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                while (r.Read())
                {
                    drpvc.Items.Add(r["vc_name"].ToString());
                }
                r.Close();
                con.Close();
            }
            ////////////
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from school_sthrength where sth_id= '" + sthrength + "'", con);
                SqlDataReader r;
                con.Open();
                r = cmd.ExecuteReader();
                if (r.Read())
                {
                    lblsthid.Text = r["sth_id"].ToString();
                    //////
                    for (int i = 0; i < drpschool.Items.Count; i++) // Foe Drp drp school
                    {
                        if (drpschool.Items[i].Text == r["school_name"].ToString())
                        {
                            drpschool.SelectedIndex = i;
                        }
                    }
                    /////
                    //drpschool.SelectedItem.Text = r["school_name"].ToString();
                    txtclass.Text = r["class"].ToString();
                    txtmalestudent.Text = r["male_students"].ToString();
                    txtfemalestudent.Text = r["female_students"].ToString();
                    txttotal.Text = r["total_students"].ToString();
                    txtclassteachername.Text = r["classteacher_name"].ToString();
                    txtsalery.Text = r["salrey"].ToString();
                    for (int i = 0; i < drpvc.Items.Count; i++) // For drp school
                    {
                        if (drpvc.Items[i].Text == r["vc_name"].ToString())
                        {
                            drpvc.SelectedIndex = i;
                        }
                    }
                    drpvillage.SelectedItem.Text = r["village_name"].ToString();
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
        ///////////////////////
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from school_sthrength where sth_id= '" +lblsthid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update school_sthrength set school_name='"+drpschool.SelectedItem.Text+"',class='"+txtclass.Text+"',male_students='"+txtmalestudent.Text+"',female_students='"+txtfemalestudent+"',total_students='"+txttotal.Text+"',classteacher_name='"+txtclassteachername.Text+"',salrey='"+txtsalery.Text+"',vc_name='"+drpvc.SelectedItem.Text+"',village_name='"+drpvillage.SelectedItem.Text+"' where sth_id='"+lblsthid.Text+"'",con);
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
        SqlCommand cmd = new SqlCommand("select * from school_sthrength where sth_id= '" + lblsthid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from school_sthrength where sth_id= '" + lblsthid.Text + "'", con);
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
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
    
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='" + drpvc.SelectedItem.Text + "'", con);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        while (r.Read())
        {
            drpvillage.Items.Add(r["village_name"].ToString());
        }
        r.Close();
        con.Close();
    }
}