using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_school_facilities : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    private void vc()
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
            if (Page.IsPostBack == false)
            {
                vc();
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
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlCommand cmd = new SqlCommand("select * from schools_facilities where school_name='"+ drpschool.SelectedItem.Text+"'",con);
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
            SqlCommand cmd1 = new SqlCommand ("insert into schools_facilities(school_name,vc_name,village_name,total_rooms,electricity,water,boundarey_wall,teacher_washroom,student_washroom,s_id)values('" +drpschool.Text + "','"+drpvc.SelectedItem.Text+"','"+drpvillage.SelectedItem.Text+"','" + txttotalroom.Text + "','" + drpelectricity.SelectedItem.Text + "','"+ drpwater.SelectedItem.Text+"','" + drpboundareywall.SelectedItem.Text + "','" +drpteacherwashroom.SelectedItem.Text + "','" + drpstudentwashroom.SelectedItem.Text + "','"+sid+"')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            drpschool.SelectedIndex = 0;
            drpvc.SelectedIndex = 0;
            drpvillage.SelectedIndex = 0;
            txttotalroom.Text = "";
            drpelectricity.SelectedIndex = 0;
            drpwater.SelectedIndex = 0;
            drpboundareywall.SelectedIndex = 0;
            drpteacherwashroom.SelectedIndex = 0;
            drpstudentwashroom.SelectedIndex = 0;


        }
    }
    protected void drpvc_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvillage.Items.Clear();
        drpvillage.Items.Add("Select");
        SqlCommand cmd = new SqlCommand("select * from village where vc_name='" + drpvc.SelectedItem + "'", con);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        drpschool.SelectedIndex = 0;
        drpvc.SelectedIndex = 0;
        drpvillage.SelectedIndex = 0;
        txttotalroom.Text = "";
        drpelectricity.SelectedIndex = 0;
        drpwater.SelectedIndex = 0;
        drpboundareywall.SelectedIndex = 0;
        drpteacherwashroom.SelectedIndex = 0;
        drpstudentwashroom.SelectedIndex = 0;
    }
}