using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_school_facilities : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    string schools;
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
        con = new SqlConnection(obj1.cons);
        if (Page.IsPostBack == false)
        {
            vc();
        }
        schools = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from schools_facilities where f_id= '" + schools + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lblfacilitiesid.Text = r["f_id"].ToString();
                drpschoolname.SelectedItem.Text = r["school_name"].ToString();
                drpvc.SelectedItem.Text = r["vc_name"].ToString();
                drpvillage.SelectedItem.Text = r["village_name"].ToString();
                txttotalroom.Text = r["total_rooms"].ToString();
                drpelectricity.SelectedItem.Text = r["electricity"].ToString();
                drpwater.SelectedItem.Text = r["water"].ToString();
                drpboundareywall.SelectedItem.Text = r["boundarey_wall"].ToString();
                drpteacherwashroom.SelectedItem.Text = r["teacher_washroom"].ToString();
                drpstudentwashroom.SelectedItem.Text = r["student_washroom"].ToString();




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
          SqlCommand cmd = new SqlCommand("select * from schools_facilities where f_id= '" +lblfacilitiesid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update schools_facilities set school_name='"+drpschoolname.SelectedItem.Text+"',vc_name='"+drpvc.SelectedItem.Text+"',village_name='"+drpvillage.SelectedItem.Text+"',total_rooms='"+txttotalroom.Text+"',electricity='"+drpelectricity.SelectedItem.Text+"',water='"+drpwater.SelectedItem.Text+"',boundarey_wall='"+drpboundareywall.SelectedItem.Text+"',teacher_washroom='"+drpteacherwashroom.SelectedItem.Text+"',student_washroom='"+drpstudentwashroom.SelectedItem.Text+"' where f_id='"+lblfacilitiesid.Text+"'",con);
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
        SqlCommand cmd = new SqlCommand("select * from schools_facilities where f_id= '" + lblfacilitiesid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from schools_facilities where f_id= '" + lblfacilitiesid.Text + "'", con);
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