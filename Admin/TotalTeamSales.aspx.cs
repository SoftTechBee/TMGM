using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;

public partial class Admin_Default : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadinactivememberlist();
        }
    }

    private void loadinactivememberlist()
    {
        try
        {
            string sql = "select UserName,Amount,PackType,DOR from TblRetopup  ";
            if (txtsearch.Text != "")
            {
                sql += " where Username='" + txtsearch.Text + "'";
            }
            sql += " order by DOR";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                double total = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string amount = dt.Rows[i]["Amount"].ToString() == "" ? "0" : dt.Rows[i]["Amount"].ToString();
                    total += Convert.ToDouble(amount);


                }
                //lbtotal.Text = total.ToString();
                danger.Visible = false;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }

        }
        catch (Exception ex)
        {

        }
    }



    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadinactivememberlist();
    }
}