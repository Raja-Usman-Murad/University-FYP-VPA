using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class member_detailview_disable_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String disable;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["mid"] == null)
        {
            Response.Redirect("HighMemberLoign.aspx");
        }
        else
        {
            disable = Context.Request.QueryString["abc"].ToString();
            SqlDataAdapter ad = new SqlDataAdapter("select * from disable_record where dis_id='" + disable + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}