﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_detailview_sectery : System.Web.UI.Page
{
    SqlConnection con;
    my_code_file obj = new my_code_file();
    String sect;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(obj.cons);
        if (Session["mid"] == null)
        {
            Response.Redirect("HighMemberLoign.aspx");
        }
        else
        {
            sect = Context.Request.QueryString["abc"].ToString();
            SqlDataAdapter ad = new SqlDataAdapter("select * from sectery where s_id='" + sect + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}