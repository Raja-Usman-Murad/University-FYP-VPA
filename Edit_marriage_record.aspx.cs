using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Edit_marriage_record : System.Web.UI.Page
{
    my_code_file obj1 = new my_code_file();
    SqlConnection con;
    String marriage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
        con = new SqlConnection(obj1.cons);
        marriage = Context.Request.QueryString["abc"].ToString();
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from marriage_records where m_id= '" + marriage + "'", con);
            SqlDataReader r;
            con.Open();
            r = cmd.ExecuteReader();
            if (r.Read())
            {
                lblmarrgid.Text = r["m_id"].ToString();
                txtdulhaname.Text = r["dulha_name"].ToString();
                txtdulhanic.Text = r["dulha_nic"].ToString();
                txtfndulha.Text = r["f_namedulha"].ToString();
                txtfdulhanic.Text = r["f_dulha_nic"].ToString();
                txtage.Text = r["age"].ToString();
                txtstatus.Text = r["status"].ToString();
                txtaddressdulha.Text = r["address_dulha"].ToString();
                txtuc.Text = r["union_concil"].ToString();
                txttehsil.Text = r["tehsil"].ToString();
                txtdistrict.Text = r["district"].ToString();
                txtmarrigedate.Text = r["marriage_date"].ToString();
                txtdulhanname.Text = r["dulhan_name"].ToString();
                txtdulhannic.Text = r["dulhan_nic"].ToString();
                txtfnamedulhan.Text = r["f_namedulhan"].ToString();
                txtfdulhannic.Text = r["f_dulhan_nic"].ToString();
                txtageatmaarg.Text = r["age_at_marriage"].ToString();
                txtadressdulhan.Text = r["address_dulhan"].ToString();
                txtmehramount.Text = r["mehr_amount"].ToString();
                txtdetailmehr.Text = r["detail_mehr"].ToString();
            }
            else
            {
                r.Close();
                con.Close();
            }
        }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from marriage_records where m_id= '" +lblmarrgid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("update marriage_records set dulha_name='"+txtdulhaname.Text+"',dulha_nic='"+txtdulhanic.Text+"',f_namedulha='"+txtfndulha.Text+"',f_dulha_nic='"+txtfdulhanic.Text+"',age='"+txtage.Text+"',status='"+txtstatus.Text+"',address_dulha='"+txtaddressdulha.Text+"',union_concil='"+txtuc.Text+"',tehsil='"+txttehsil.Text+"',district='"+txtdistrict.Text+"',marriage_date='"+txtmarrigedate.Text+"',dulhan_name='"+txtdulhanname.Text+"',dulhan_nic='"+txtdulhannic.Text+"',f_namedulhan='"+txtfnamedulhan.Text+"',f_dulhan_nic='"+txtfdulhannic.Text+"',age_at_marriage='"+txtageatmaarg.Text+"',address_dulhan='"+txtadressdulhan.Text+"',mehr_amount='"+txtmehramount.Text+"',detail_mehr='"+txtdetailmehr.Text+"' where m_id='"+lblmarrgid.Text+"'", con);
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
        SqlCommand cmd = new SqlCommand("select * from marriage_records where m_id= '" + lblmarrgid.Text + "'", con);
        con.Open();
        SqlDataReader r;
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            r.Close();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("delete from marriage_records where m_id='" + lblmarrgid.Text + "'", con);
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