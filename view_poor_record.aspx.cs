﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_poor_record : System.Web.UI.Page
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from poor_record where s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (drpsearch.SelectedIndex == 1)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from poor_record where p_id='" + txtsearch.Text + "' and s_id='"+sid+"'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (drpsearch.SelectedIndex == 2)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from poor_record where name='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (drpsearch.SelectedIndex == 3)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from poor_record where village_concil='" + txtsearch.Text + "' and s_id='" + sid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter ad = new SqlDataAdapter("select * from poor_record where s_id='" + sid + "'", con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}