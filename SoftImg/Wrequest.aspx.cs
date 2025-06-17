using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TripleITConnection;
using TripleITTransaction;
using Newtonsoft.Json;
using System.Drawing;
public partial class User_withdrrawPlan1 : System.Web.UI.Page
{
    clsfunction objfun = new clsfunction();
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsDashboard objDash = new clsDashboard();
    clsSMS objsms = new clsSMS();
    CoinPayments objcoin = new CoinPayments();
    clsmail objmail = new clsmail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionData.Get<string>("Newuser") == null && SessionData.Get<string>("Newuser") == "")
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            WithdrawDay();
            // lbdcoinrate.Text = objDash.CurrentDCoinRate();
            lbbalance.Text = objDash.monthlybalance(SessionData.Get<string>("Newuser"));

            //string dayname = "Saturday";// objtime.returnCurrentDay();
            //if (dayname == "Saturday" || dayname == "Sunday")
            //{
            //string Date = "10";// objtime.returnStringServerMachTime1();
            //if (Date == "10" || Date == "20" || Date == "30")
            //{
            //int TotalDirect = Convert.ToInt32( objDash.TotalDirect(SessionData.Get<string>("Newuser")));
            //if (TotalDirect >= 2)
            //{
            //    loadwallet();
            danger.Visible = false;
               
           
            
            //}

            //else
            //{
            //    btnaction.Visible = false;
            //    warning.Visible = false;
            //    sccess.Visible = false;
            //    info.Visible = false;
            //    lbdanger.Text = "Do Your 2 Active Direct First.....!";

            //    danger.Visible = true;
            //    txtAmt.ReadOnly = true;

            //}
            // checkAccountStatus();
            //}

            //else
            //{
            //    btnaction.Visible = false;
            //    warning.Visible = false;
            //    sccess.Visible = false;
            //    info.Visible = false;
            //    lbdanger.Text = "You can applied for withdraw only 10th, 20th & 30th Date Of Month";

            //    danger.Visible = true;
            //    txtAmt.ReadOnly = true;

            //}
        }
        }
   
    public void loadclean()
    {
        txtAmt.Text = "";
       // txtremark.Text = "";
        // lbIncome.Text = "";
        txtTotal.Text = "";
        //txtfinal.Text = "";
        // txttds.Text = "";
        // txtadmincharge.Text = "";

    }  
    public void loadwallet()
    {
        try
        {
            string sql = "select USDTWallet from  [dbo].[TblCryptoWallet] where UserName='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
               
                    lbWallet.Text = dt.Rows[0]["USDTWallet"].ToString() == "0" ? "" : dt.Rows[0]["BTCWallet"].ToString();
            
            }


        }
        catch (Exception ex)
        { }

    }  
    public void WithdrawDay()
    {
        try
        {
            //string Date = objtime.returnStringServerMachTime1();
            //if (Date == "25" || Date == "27")
            //{
                warning.Visible = false;

                sccess.Visible = false;
                info.Visible = false;

                int flag = checkrequest();
                if (flag == 0)
                {
                    warning.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    lbdanger.Text = "Your withdrawal has been disabled. Please Contact Admin.";
                    danger.Visible = true;
                    txtAmt.ReadOnly = true;
                    btnaction.Visible = false;
                    //checkAccountStatus();


                }
                else
                {

                    danger.Visible = false;
                    txtAmt.ReadOnly = false;
                    btnaction.Visible = true;
                }
            //}
            //else
            //{
            //    lbday.Text = "You can applied for withdraw only 25th And 26th Date Of Month";
            //    day.Visible = true;
            //    warning.Visible = false;
            //    danger.Visible = false;
            //    sccess.Visible = false;
            //    info.Visible = false;
            //    txtAmt.ReadOnly = true;
            //    btnaction.Visible = false;
            //}
        }
        catch (Exception ex)
        {

        }

    }
   
  


    public int checkrequest()
    {
        int status = 0;
        try
        {
            string sql = "select username from register where  [withdrawstatus]= '1' and username ='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                status = 0;


            }
            else
            {
                status = 1;

            }


        }
        catch (Exception ex)
        { }
        return status;

    }

 

    protected void butsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            decimal widamount = 0;
            string date = objtime.returnStringServerMachTime();

            string id = SessionData.Get<string>("Newuser");
            decimal finalamount = Convert.ToDecimal(lbbalance.Text.Trim());
            //  int wamount = (finalamount / 2);
            widamount = Convert.ToDecimal(txtAmt.Text.Trim());
            if (paymenttype.SelectedValue != "0")
            {
                if (finalamount >= widamount && widamount >= 10)
                {
                    string address = lbWallet.Text.Trim();

                    int a = objamd.WithdrawRequest(0, SessionData.Get<string>("Newuser"), widamount,"", paymenttype.SelectedValue, txttransPassword.Text, lbWallet.Text.Trim(),  "P");
                    if (a > 0)
                    {
                        lbbalance.Text = objDash.monthlybalance(SessionData.Get<string>("Newuser"));
                        string email = objDash.ReturnEmail(SessionData.Get<string>("Newuser"));

                        objmail.WithdrawFund(SessionData.Get<string>("Newuser"), widamount.ToString(), paymenttype.SelectedValue, address, email);

                        warning.Visible = false;
                        danger.Visible = false;
                        sccess.Visible = false;
                        info.Visible = false;
                        sccess.Visible = true;
                        lbsuccess.Text = "Request sent to Admin! successfully ";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Successclick(); ", true);
                        loadclean();

                    }
                    else if (a == -1)
                    {
                        loadclean();
                        warning.Visible = false;
                        danger.Visible = false;
                        sccess.Visible = false;
                        info.Visible = false;
                        info.Visible = true;
                        lbinfo.Text = "Invaid Transaction Password.";

                    }



                }
                else
                {

                    loadclean();
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    warning.Visible = true;
                    lbwarning.Text = "Insufficient amount (or) amount should be greater than 10 $";

                }
            }
            else
            {
                lbdanger.Text = "Select Wallet Address";
                //txttransPassword.Text = "";
                //txttransPassword.Focus();

                danger.Visible = true;

            }

        }
        catch (Exception ex)
        {
            warning.Visible = false;
            danger.Visible = false;
            sccess.Visible = false;
            info.Visible = false;
            lbwarning.Text = "Enter valid amount";
            warning.Visible = true;
            txtAmt.Text = "";
            txtAmt.Focus();
            //  Response.Redirect("error.aspx?error=" + ex);


        }

    }

   

   
    protected void txtAmt_TextChanged(object sender, EventArgs e)
    {

        try
        {
            if (txtAmt.Text != "")
            {
                decimal reqAmt = Convert.ToDecimal(txtAmt.Text.Trim());

                decimal finalamount = Convert.ToDecimal(lbbalance.Text.Trim());

                if (finalamount >= reqAmt)
                {
                    decimal AdminCharge = (reqAmt * 5 / 100);
                    //decimal tds = (reqAmt * 5 / 100);
                    decimal amount = reqAmt - AdminCharge;
                    txtTotal.Text = Math.Round(amount, 2).ToString();//amount.ToString();
                    txtadmincharge.Text = Math.Round(AdminCharge, 2).ToString(); ;// AdminCharge.ToString();
                    // txtTDS.Text = tds.ToString();
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    sccess.Visible = false;
                }
                else
                {
                    warning.Visible = false;
                    danger.Visible = false;
                    sccess.Visible = false;
                    info.Visible = false;
                    lbwarning.Text = "Insufficient amount (or) amount should be greater than 10 $ ";
                    warning.Visible = true;
                    txtAmt.Text = "";
                    txtAmt.Focus();

                }

            }
        }
        catch (Exception ex)
        { }
    }





    protected void paymenttype_TextChanged(object sender, EventArgs e)
    {

        try
        {
            string sql = "select BTCWallet,TRXWallet,USDTWallet from  [dbo].[TblCryptoWallet] where UserName='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                if (paymenttype.SelectedValue == "0")
                {
                    lbWallet.Text = "";
                    divwallet.Visible = false;
                   // divbankclick.Visible = false;
                    divwalletclick.Visible = false;
                }
               
             
                else if (paymenttype.SelectedValue == "USDT-TRC20")
                {
                    
                    lbWallet.Text = dt.Rows[0]["USDTWallet"].ToString() == "0" ? "" : dt.Rows[0]["USDTWallet"].ToString();
                    divwallet.Visible = true;
                    //divbankclick.Visible = false;
                    divwalletclick.Visible = true;
                }
                else if (paymenttype.SelectedValue == "USDT-BEP20")
                {
                    lbWallet.Text = dt.Rows[0]["TRXWallet"].ToString() == "0" ? "" : dt.Rows[0]["TRXWallet"].ToString();
                    divwallet.Visible = true;
                  //  divbankclick.Visible = false;
                    divwalletclick.Visible = true;
                }
                

                
            }


        }
        catch (Exception ex)
        { }

    }
    public class Result
    {
        public string id { get; set; }
        public int status { get; set; }
        public string amount { get; set; }
    }

    public class Rootwithdraw
    {
        public string error { get; set; }
        public Result result { get; set; }
    }



    protected void txttransPassword_TextChanged(object sender, EventArgs e)
    {
        string sql = "select transpassword from register where username ='" + SessionData.Get<string>("Newuser") + "'";
        DataTable dt = objcon.ReturnDataTableSql(sql);
        if (dt.Rows.Count > 0)
        {

            string TransPassword = dt.Rows[0]["transpassword"].ToString();
            if (TransPassword == txttransPassword.Text)
            {
                danger.Visible = false;
                txttransPassword.Text = txttransPassword.Text;
            }
            else
            {
                lbdanger.Text = "Invaild Password ...... Try again";

                txttransPassword.Text = "";
                danger.Visible = true;
            }




        }
        else
        {
            lbdanger.Text = "Invaild Main Password ...... Try again";

            txttransPassword.Text = "";
            danger.Visible = true;

        }
    }
}