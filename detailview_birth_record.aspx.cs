using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class detailview_birth_record : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String birth;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["sec_id"] == null)
        {
            Response.Redirect("SecteryLoign.aspx");
        }
        else
        {
            birth = Context.Request.QueryString["abc"].ToString();
            SqlDataAdapter ad = new SqlDataAdapter("select * from birth_records where b_id='" + birth + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}