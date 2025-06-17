using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using TripleITTransaction;
using TripleITConnection;
public partial class Admin_rptmemberProfileAccess : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    clsDashboard objdash = new clsDashboard();
    public List<clsaccount> objacclist = new List<clsaccount>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            loadlist();
        }
     
    }
    private void loadlist()
    {
        try
        {
            string sql = "select * from  register a where 1=1";
             if (txtsearch.Text != "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "and a.username='" + txtsearch.Text + "'  and  a.dateofjoining between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
           else if (txtsearch.Text == "" && txtfromdate.Text != "" && txttodate.Text != "")
            {
                sql += "  and  a.dateofjoining between '" + txtfromdate.Text + "' and '" + txttodate.Text + "'";

            }
            else if (txtsearch.Text != "" && txtfromdate.Text == "" && txttodate.Text == "")
            {
                sql += "and a.username='" + txtsearch.Text + "'";
            }
            

            sql += " order by a.name asc";

            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
               
                
            }
            else
            {
                lbdanger.Text = "Opps! NO Data Found";
                danger.Visible = true;
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        loadlist();
    }
    public string Withstatus(object IsType)
    {
        string Status = "";
        if (IsType.ToString() == "False")
        {
            Status = "Enable";
        }
       
        else
        {
            Status = "Disable";
        }
        return Status;

    }
    public string Boostingstatus(object IsType)
    {
        string Status = "";
        if (IsType.ToString() == "False")
        {
            Status = "Enable";
        }

        else
        {
            Status = "Disable";
        }
        return Status;

    }
    public string P2Pstatus(object IsType)
    {
        string Status = "";
        if (IsType.ToString() == "False")
        {
            Status = "Enable";
        }
       
        else
        {
            Status = "Disable";
        }
        return Status;

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            string username = e.CommandArgument.ToString();
            Response.Redirect("../Member/AdminAccess.aspx?username=" + username);
        }
        if (e.CommandName == "Pass")
        {
            string username = e.CommandArgument.ToString();
            Response.Redirect("ChangeMemberPassword.aspx?username=" + username);
        }
        if (e.CommandName == "Transpass")
        {
            string username = e.CommandArgument.ToString();
            Response.Redirect("ChangeMemberTransPassword.aspx?username=" + username);
        }
        if (e.CommandName == "Withdraw")
        {
            loadlist();
            string username = e.CommandArgument.ToString();
            string status = objdash.ReturnWithdrawStatus(username);
            if (status == "False")
            {

                objcon.ExecuteSqlQuery("update register set Withdrawstatus='1' where username='" + username + "'");

                lbsuccess.Text = "Withdraw option Disable For ID='" + username + "'";
                sccess.Visible = true;
                loadlist();
            }
            else
            {
                objcon.ExecuteSqlQuery("update register set Withdrawstatus='0' where username='" + username + "'");

                lbsuccess.Text = "Withdraw option enable For ID='" + username + "'";
                sccess.Visible = false;
                loadlist();
            }


        }
        //if (e.CommandName == "Bossting")
        //{
        //    loadlist();
        //    string username = e.CommandArgument.ToString();
        //    string status = objdash.ReturnBoostingStatus(username);
        //    if (status == "False")
        //    {

        //        objcon.ExecuteSqlQuery("update register set BoostingStatus='1' where username='" + username + "'");

        //        lbsuccess.Text = "Boosting Status option Disable For ID='" + username + "'";
        //        sccess.Visible = true;
        //        loadlist();
        //    }
        //    else
        //    {
        //        objcon.ExecuteSqlQuery("update register set BoostingStatus='0' where username='" + username + "'");

        //        lbsuccess.Text = "Boosting Status option enable For ID='" + username + "'";
        //        sccess.Visible = false;
        //        loadlist();
        //    }


        //}
        //if (e.CommandName == "P2P")
        //{
        //    loadlist();
        //    string username = e.CommandArgument.ToString();
        //    string status = objdash.ReturnP2PStatus(username);
        //    if (status == "False")
        //    {

        //        objcon.ExecuteSqlQuery("update register set P2PStatus='1' where username='" + username + "'");

        //        lbsuccess.Text = "P2P Status option Disable For ID='" + username + "'";
        //        sccess.Visible = true;
        //        loadlist();
        //    }
        //    else
        //    {
        //        objcon.ExecuteSqlQuery("update register set P2PStatus='0' where username='" + username + "'");

        //        lbsuccess.Text = "P2P Status option enable For ID='" + username + "'";
        //        sccess.Visible = false;
        //        loadlist();
        //    }


        //}
    }
    //protected void btnExportToExcel_Click(object sender, EventArgs e)
    //{
    //    try
    //    {


    //        Response.Clear();
    //        Response.Buffer = true;
    //        Response.AddHeader("content-disposition", "attachment;filename=rptIncome.xls");
    //        Response.Charset = "";
    //        Response.ContentType = "application/vnd.ms-excel";

    //        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
    //        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
    //        //     Your Repeater Name Mine is "Rep"
    //        Repeater1.RenderControl(htmlWrite);
    //        Response.Write("<table>");
    //        Response.Write(stringWrite.ToString());
    //        Response.Write("</table>");
    //        Response.End();

    //    }
    //    catch (Exception ex)
    //    { }
    //}

}