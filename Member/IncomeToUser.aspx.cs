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
        if (SessionData.Get<string>("Newuser") == null && SessionData.Get<string>("Newuser") == "")
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                int TotalDirect = Convert.ToInt32(objDash.TotalDirect(SessionData.Get<string>("Newuser")));
                if (TotalDirect >= 1)
                {
                    txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("Newuser"));

                    lbActiveMember.Text = SessionData.Get<string>("Newuser");
                }
                else
                {
                    btnaction.Visible = false;
                    warning.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    // lbdanger.Text = "You can applied for withdraw between Saturday or Sunday";
                    lbdanger.Text = "DO your 1 direct first";
                    danger.Visible = true;

                }
            }
        }

    }
    public int checkAccountStatus()
    {
        int status = 0;
        try
        {
            string sql = "select mobile from register where username='" + SessionData.Get<string>("Newuser") + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                info.Visible = false;
                string mobile = dt.Rows[0]["mobile"].ToString();
                //genrateOTP();
                //string SMS = "For Member Active OTP is:" + OTP + " .Do not share it";
                //  objsms.sendsms(mobile, SMS);
            }
            else
            {
                info.Visible = false;
                lbdanger.Text = "Your account has not activate ,You can not fund transfer this time.Please active your account first";
                danger.Visible = true;

            }


        }
        catch (Exception ex)
        { }
        return status;

    }
    //private void genrateOTP()
    //{
    //    try
    //    {


    //        var chars = "5678943210";
    //        var stringChars = new char[4];
    //        var random = new Random();

    //        for (int ik = 0; ik < stringChars.Length; ik++)
    //        {
    //            stringChars[ik] = chars[random.Next(chars.Length)];
    //        }

    //        var finalString = new String(stringChars);
    //        OTP = Convert.ToString(finalString);

    //    }
    //    catch (Exception ex) { }
    //}
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        try
        {
           
            decimal widamount = 0, Totalamount=0;
            string date = objtime.returnStringServerMachTime();
            string id = SessionData.Get<string>("Newuser");
            decimal finalamount = Convert.ToDecimal(txtbalance.Text.Trim());
            widamount = Convert.ToDecimal(txtAMount.Text);
            //Totalamount = Convert.ToDecimal(txtfinal.Text);
            if (finalamount >= widamount && widamount > 0)
            {
                int a = objamd.FundTransfer(lbActiveMember.Text, txtTransid.Text, Convert.ToDecimal(txtAMount.Text), txttransPassword.Text);
                if (a > 0)
                {


                    txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("Newuser"));
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    sccess.Visible = true;
                    lbsuccess.Text = "fund transfer  successfully";

                }
                else if (a == -1)
                {

                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    info.Visible = true;
                    lbinfo.Text = "Transaction Password Wrong..!";
                }


            }
            else
            {


                warning.Visible = false;
                danger.Visible = false;
                sccess.Visible = false;
                info.Visible = false;
                warning.Visible = true;
                lbwarning.Text = "Balance is less then to require balance ";
            }
           
        }
        catch (Exception ex)
        {
            warning.Visible = false;
            danger.Visible = false;
            sccess.Visible = false;
            info.Visible = false;
            lbwarning.Text = "Enter valid balance";
            warning.Visible = true;

           


        }
        txtAMount.Text = "";
        txtTransid.Text = "";


    }
  
    protected void txtTransid_TextChanged(object sender, EventArgs e)
    {
        int status = 0;
        try
        {
            string sql = "select name from register where username='" + txtTransid.Text + "' ";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                lbTransname.Text = dt.Rows[0]["name"].ToString();
                lbincome.Text = objDash.TotalWallectBlance(txtTransid.Text);
            }
            else
            {
                lbinfo.Text = "Invaid Member ID";
                txtTransid.Text = "";
                lbTransname.Text = "";
                txtTransid.Focus();

            }
        }
        catch (Exception ex)
        { }
    }


    protected void txtAMount_TextChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    decimal finalamount = Convert.ToDecimal(txtbalance.Text.Trim());
        //    decimal amt = Convert.ToInt32(txtAMount.Text.Trim());

        //    decimal multiplevalu = 10;

        //    decimal Total = (amt % multiplevalu);
        //    if (Total == 0)
        //    {
        //        decimal AdminCharge = (amt * 2 / 100);
        //        // decimal tds = (reqAmt * 5 / 100);
        //        decimal amount = amt+ AdminCharge;               
        //        txtadmincharge.Text = AdminCharge.ToString();
        //        txtfinal.Text = amount.ToString();
        //        //txtTDS.Text = tds.ToString();
        //        lbmsg.Visible = false;
        //        danger.Visible = false;
        //        sccess.Visible = false;
        //        info.Visible = false;
        //        sccess.Visible = false;
        //    }
        //    else
        //    {
        //        warning.Visible = false;
        //        danger.Visible = false;
        //        sccess.Visible = false;
        //        info.Visible = false;
        //        lbmsg.Text = "Amount should be multiple of 10 $";
        //        lbmsg.Visible = true;
        //        txtAMount.Text = "";
        //        txtAMount.Focus();

        //    }

        //}
        //catch (Exception ex)
        //{ }
    }
}