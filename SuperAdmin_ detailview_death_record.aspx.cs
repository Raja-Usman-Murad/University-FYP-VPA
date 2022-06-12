using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class detailview_death_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String death;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["uid"] == null)
        {
            Response.Redirect("SuperAdminLoign.aspx");
        }
        else
        {
            death = Context.Request.QueryString["abc"].ToString();
            SqlDataAdapter ad = new SqlDataAdapter("select * from death_record where d_id='" + death + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}