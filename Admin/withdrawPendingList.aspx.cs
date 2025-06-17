using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
public partial class Admin_withdrawPendingList : System.Web.UI.Page
{
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsAMD objamd = new clsAMD();
    clsDashboard objdash = new clsDashboard();
    clsmail objmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { loadlist(); }
        
    }
    public void loadlist()
    {
        try {
            string sql = "select r.tds,r.PackType,r.Rid, r.username,r.Amount,r.DOR,r.DOA,r.remark,r.status,b.*,r.Payout,r.AdminCharge,r.Wallet,r.incometype from TblRWithdraw  r Left Join bankdetail b on r.Username=b.Username where r.status='Pending'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


        }
        catch (Exception ex)
        {

        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            Label username = e.Item.FindControl("lbuname") as Label;
            Label lbamt = e.Item.FindControl("lbamt") as Label;
            Label lbpayout = e.Item.FindControl("lbpayout") as Label;
            Label lbadminchrg = e.Item.FindControl("Label2") as Label;
            Label lbIncomeType = e.Item.FindControl("lbIncomeType") as Label;
            Label lbwallet = e.Item.FindControl("lbwallet") as Label;
            decimal amt = Convert.ToDecimal(lbamt.Text);
            string id = e.CommandArgument.ToString();
            int a = objamd.WithdrawRequest(Convert.ToInt32(id), "", 0, "", "","", "", "M");
            if(a > 0)
            {
                warning.Visible = false;
                danger.Visible = true;
                sccess.Visible = false;
                info.Visible = false;
                sccess.Visible = false;
                lbdanger.Text = "Request Reject Successfully";
                loadlist();
                string email = objdash.ReturnEmail(username.Text);
                objmail.WithdrawApproved(username.Text, lbpayout.Text, "", lbwallet.Text, email);


            }

        }
        if (e.CommandName == "Hold")
        {
            string id = e.CommandArgument.ToString();
            Label lbIncomeType = e.Item.FindControl("lbIncomeType") as Label;
            int a = objamd.WithdrawRequest(Convert.ToInt32(id), "", 0, "", lbIncomeType.Text, "", "", "H");
            loadlist();
            warning.Visible = false;
            danger.Visible = false;
            sccess.Visible = false;
            info.Visible = false;
            sccess.Visible = true;
            lbsuccess.Text = "Request Delete Successfully";
            loadlist();

        }
        if (e.CommandName == "Click")
        {
            Label username = e.Item.FindControl("lbuname") as Label;
            Label lbamt = e.Item.FindControl("lbamt") as Label;
            Label lbpayout = e.Item.FindControl("lbpayout") as Label;
            Label lbadminchrg = e.Item.FindControl("Label2") as Label;
            Label lbIncomeType = e.Item.FindControl("lbIncomeType") as Label;
            Label lbwallet = e.Item.FindControl("lbwallet") as Label;
            decimal amt = Convert.ToDecimal(lbamt.Text);
            string id = e.CommandArgument.ToString();
            //check pancard

            int a = objamd.WithdrawRequest(Convert.ToInt32(id), username.Text, amt, "","","", "","A");
           
           
            if (a> 0)
            {
                    loadlist();
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    sccess.Visible = true;
                    lbsuccess.Text = "Request Approved Successfully";

                string email = objdash.ReturnEmail(username.Text);
                objmail.WithdrawApproved(username.Text, lbpayout.Text, "" , lbwallet.Text, email);
            }
                else if (a == -1)
                {
                    loadlist();
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    info.Visible = true;
                    lbinfo.Text = "Request Approved Successfully ";
                }

            
        }



        }
    public void panchradcheck()
    {
        /// string query = "select pan from  register where username='" + username.Text + "' ";
        //  DataTable dt1 = objcon.ReturnDataTableSql(query);
        //  string cardno = dt1.Rows[0]["pan"].ToString();
        // if (cardno != "")
        //{  //if have pan card

        //  string tds = (amt * 10 / 100).ToString();
        //  int newamount = (amt - Convert.ToInt32(tds));
        //   string sql2 = "insert into passbook1(username,debit,date,remark,type)values('" + username.Text + "','" + newamount.ToString() + "','" + date + "','Withdraw Request Approved','Withdraw')";
        //  int status2 = objcon.ExecuteSqlQuery(sql2);
        // string sql1 = "insert into passbook1(username,debit,date,remark,type)values('" + username.Text + "','" + tds + "','" + date + "','TDS+Service Debit','TDS+Service')";
        // int status1 = objcon.ExecuteSqlQuery(sql1);
        // if (status1 > 0)
        //{
        //  loadlist();
        //  }
        //  }
        //else
        // {  //not have pan card
        // string tds = (amt * 25 / 100).ToString();
        // int newamount = (amt - Convert.ToInt32(tds));
        // string sql2 = "insert into passbook1(username,debit,date,remark,type)values('" + username.Text + "','" + newamount.ToString() + "','" + date + "','Withdraw Request Approved ','Withdraw')";
        // int status2 = objcon.ExecuteSqlQuery(sql2);
        //  string sql1 = "insert into passbook1(username,debit,date,remark,type)values('" + username.Text + "','" + tds + "','" + date + "','TDS+Service Debit','TDS+Service')";
        //  int a = objcon.ExecuteSqlQuery(sql1);



        }
        protected void btnExportToExcel_Click(object sender, EventArgs e)
        {
            try
            {


                Response.Clear();
                Response.Buffer = true;
                Response.AddHeader("content-disposition", "attachment;filename=PendingWithdrawlist.xls");
                Response.Charset = "";
                Response.ContentType = "application/vnd.ms-excel";

                System.IO.StringWriter stringWrite = new System.IO.StringWriter();
                System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
                //     Your Repeater Name Mine is "Rep"
                Repeater1.RenderControl(htmlWrite);
                Response.Write("<table>");
                Response.Write(stringWrite.ToString());
                Response.Write("</table>");
                Response.End();

            }
            catch (Exception ex)
            { }
        }

    

    }

   
