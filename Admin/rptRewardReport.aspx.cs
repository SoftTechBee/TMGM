using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITTransaction;
using TripleITConnection;
public partial class User_Default : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadaccount("");
        }

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadaccount(txtsearch.Text);
    }
    //for account
    public void loadaccount(string username)
    {
        try
        {
            string sql = "select r.name,a.* from [tblreward] a inner join register r on a.username=r.username  ";
            if (txtsearch.Text != "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += " where a.username='" + txtsearch.Text + "'  and  a.DOA between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
            else if (txtsearch.Text == "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "  where  a.DOA between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
            else if (txtsearch.Text != "" && txtfromdate.Text == "" && txttodate.Text == "")
            {
                sql += " where a.username='" + txtsearch.Text + "'";
            }

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                danger.Visible = false;


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
   


    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Paid")
        {

            string rid = e.CommandArgument.ToString();
            string sql = "update tblreward set paidstatus='Paid' where rid='"+ rid + "'";
            int a = objcon.ExecuteSqlQuery(sql);
            if (a > 0)
            {
                danger.Visible = true;
                lbdanger.Text = "Reward Paid successfully";
                loadaccount("");

            }
            
            else
            {
                loadaccount("");
                lbdanger.Text = "Reward Already Paid!";
                danger.Visible = true;
            }
        }
    }
}