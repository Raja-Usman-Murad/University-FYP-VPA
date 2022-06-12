using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class add_marriages_records : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    string sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            sid = Session["sec_id"].ToString();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from marriage_records where dulha_nic='"+txtdulhanic.Text+"' and dulhan_nic='"+txtdulhannic.Text+"'",con);
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
            SqlCommand cmd1 = new SqlCommand("insert into marriage_records(dulha_name,dulha_nic,f_namedulha,f_dulha_nic,age,status,address_dulha,union_concil,tehsil,district,marriage_date,dulhan_name,dulhan_nic,f_namedulhan,f_dulhan_nic,age_at_marriage,address_dulhan,mehr_amount,detail_mehr,s_id)values('"+txtdulhaname.Text+"','"+txtdulhanic.Text+"','"+txtfnamedulha.Text+"','"+txtfdulhanic.Text+"','"+txtage.Text+ "','" + txtstatus.Text + "','" + txtaddressdulha.Text+"','"+txtuc.Text+"','"+txttehsil.Text+"','"+txtdistrict.Text+"','"+txtmarriagedate.Text+"','"+txtdulhanname.Text+"','"+txtdulhannic.Text+"','"+ txtfnamedulhan.Text+"','"+ txtfdulhannic.Text+"','"+txtageatmarrg.Text+"','"+txtaddressdulhan.Text+"','"+txtmehramount.Text+"','"+txtdetailamount.Text+"','"+sid+"')",con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Saved";
            lblmsg.ForeColor = Color.Green;
            txtdulhaname.Text = "";
            txtdulhanic.Text = "";
            txtfnamedulha.Text = "";
            txtfdulhanic.Text = "";
            txtage.Text = "";
            txtstatus.Text = "";
            txtaddressdulha.Text = "";
            txtuc.Text = "";
            txttehsil.Text = "";
            txtdistrict.Text = "";
            txtmarriagedate.Text = "";
            txtdulhanname.Text = "";
            txtdulhannic.Text = "";
            txtfnamedulhan.Text = "";
            txtfdulhannic.Text = "";
            txtageatmarrg.Text = "";
            txtaddressdulhan.Text = "";
            txtmehramount.Text = "";
            txtdetailamount.Text = "";

        }

    }
}