using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class detailview_marrigae_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String marriage;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("SuperAdminLoign.aspx");
        }
        else
        {
            con = new SqlConnection(obj.cons);
            marriage = Context.Request.QueryString["abc"].ToString();
            SqlDataAdapter ad = new SqlDataAdapter("select * from marriage_records where m_id='" + marriage + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}