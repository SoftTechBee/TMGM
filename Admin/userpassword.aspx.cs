using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;

public partial class Admin_userpassword : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {
                DataTable dt = objcon.ReturnDataTableSql("select * from register order by dateofjoin desc ");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        { }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try {

            DataTable dt = objcon.ReturnDataTableSql("select * from register where username='"+txtsearch.Text+"'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        
        }
        catch (Exception ex)
        { }
    }

    

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataTable dt = objcon.ReturnDataTableSql("select * from register");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}