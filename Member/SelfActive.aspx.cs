using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
public partial class User_Default : System.Web.UI.Page
{
    clsfunction objfun = new clsfunction();
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsDashboard objDash = new clsDashboard();
    clsSMS objsms = new clsSMS();

    public static string OTP = "", RequestUser = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PackMaster();

            string reqUser =  Request.QueryString["Id"].ToString();
            lbActiveMember.Text = reqUser == "0" ? SessionData.Get<string>("newuser") : reqUser;
            txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("newuser"));
            lbpack.Text = objDash.ReturnPack(lbActiveMember.Text);

        }

    }

    private void PackMaster()
    {
        try
        {


            string sql = "select * from [TblInvestMaster] ";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {

                rep1.DataSource = dt;
                rep1.DataBind();
            }
            else
            {
                lbdanger.Text = "Error";
                danger.Visible = true;
            }
        }
        catch (Exception ex)
        {

        }
    }
   


    protected void rep1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Buy")
        {
           
            string id = e.CommandArgument.ToString();
            Response.Redirect("JoiningPackages.aspx?Id=" + lbActiveMember.Text+"&pid="+ id);

        }
        else if (e.CommandName == "Retopup")
        {
           
            string id = e.CommandArgument.ToString();
            Response.Redirect("RetopupJoining.aspx?Id=" + lbActiveMember.Text+"&pid="+ id);

        }
        //if (e.CommandName == "Active")
        //{
        //    Label lbpackname = e.Item.FindControl("lbpackname") as Label;
        //    Label lbmin = e.Item.FindControl("lbmin") as Label;
        //    Label lbmax = e.Item.FindControl("lbmax") as Label;
        //    Label income = e.Item.FindControl("income") as Label;
        //    //TextBox txtAmt = e.Item.FindControl("txtAmt") as TextBox;
        //    string id = e.CommandArgument.ToString();
        //    try
        //    {
        //        if (lbmax.Text != "")
        //        {


        //            decimal widamount = 0, Min = 0, Max = 0, DailyROI = 0;
        //            string PackType = lbpackname.Text;
        //            decimal finalamount = Convert.ToDecimal(txtbalance.Text.Trim());
        //            widamount = Convert.ToDecimal(lbmax.Text);
        //            DailyROI = Convert.ToDecimal(income.Text.Trim());
        //            //Min = Convert.ToDecimal(lbmin.Text.Trim());
        //            //Max = Convert.ToDecimal(lbmax.Text.Trim());


        //            if (finalamount >= widamount && widamount >= 1)
        //            {
        //                int a = objamd.ActiveMember(lbActiveMember.Text.Trim(), widamount, DailyROI, PackType, SessionData.Get<string>("Newuser"), "N");
        //                if (a > 0)
        //                {


        //                    txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("Newuser"));
        //                    warning.Visible = false;
        //                    danger.Visible = false;
        //                    sccess.Visible = false;
        //                    info.Visible = false;
        //                    sccess.Visible = true;
        //                    lbsuccess.Text = "Packages Buy successfully";
        //                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Successclick(); ", true);

        //                }
        //                else if (a == -1)
        //                {

        //                    warning.Visible = false;
        //                    danger.Visible = false;
        //                    sccess.Visible = false;
        //                    info.Visible = false;
        //                    info.Visible = true;
        //                    lbinfo.Text = "You are already Activated Member";
        //                }
        //                else
        //                {

        //                    warning.Visible = false;
        //                    danger.Visible = false;
        //                    sccess.Visible = false;
        //                    info.Visible = false;
        //                    info.Visible = true;
        //                    lbinfo.Text = "You are Not Activa Member....Try Again?";
        //                }

        //            }
        //            else
        //            {


        //                warning.Visible = false;
        //                danger.Visible = true;
        //                sccess.Visible = false;
        //                info.Visible = false;
        //                warning.Visible = false;
        //                lbdanger.Text = "Insufficient Balance..!";
        //            }
        //        }
        //        else
        //        {
        //            warning.Visible = false;
        //            danger.Visible = true;
        //            sccess.Visible = false;
        //            info.Visible = false;
        //            warning.Visible = false;
        //            lbdanger.Text = "Opps! Enter a amount...";

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        warning.Visible = false;
        //        danger.Visible = false;
        //        sccess.Visible = false;
        //        info.Visible = false;
        //        lbwarning.Text = "Enter valid amount";
        //        warning.Visible = true;

        //        //  Response.Redirect("error.aspx?error=" + ex);


        //    }
        //}
    }
}