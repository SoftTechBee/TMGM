using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TripleITConnection;
using TripleITTransaction;
public partial class User_withdrrawPlan1 : System.Web.UI.Page
{
    clsfunction objfun = new clsfunction();
    clsAMD objamd = new clsAMD();
    clsConnection objcon = new clsConnection();
    clsTimeZone objtime = new clsTimeZone();
    clsList objlist = new clsList();
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

            if (!IsPostBack)
            {



                hndusername.Value = SessionData.Get<string>("Newuser");

                loadwallet();
              



            }



        }
    }

    public void loadwallet()
    {
        try
        {
            string sql = "select USDTWallet from  [dbo].[TblCryptoWallet] where UserName='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                lbincome.Text = objDash.monthlybalance(SessionData.Get<string>("Newuser"));
                address1.Value = dt.Rows[0]["USDTWallet"].ToString() == "0" ? "" : dt.Rows[0]["USDTWallet"].ToString();
                hndbalance.Value = lbincome.Text;
            }


        }
        catch (Exception ex)
        { }

    }
 
    

    
  
    [WebMethod]
    public static string Withdraw(  string Username, string Amount, string Type, string Wallet, string incomeType)
    {
   
        clsConnection objcon = new clsConnection();
        string result = "";
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        clsDashboard objDash = new clsDashboard();

        clsAMD objamd = new clsAMD();
        clsmail objmail = new clsmail(); // Initialize objmail



        int a = objamd.WithdrawRequest(Convert.ToInt32( 0), Username, Convert.ToDecimal( Amount), Type, Wallet.Trim(),"", incomeType,"P");

        if (a > 0)
        {
            result = "Success";
            //decimal Payout = Convert.ToDecimal(Amount) * Convert.ToDecimal(0.9);

            //objmail.WithdrawFund(Username, Payout.ToString(), Type, Wallet, objDash.ReturnEmail(Username));
            //string msge = "DEFI Admin You Have Request For Withdrawal By USER : "+ Username + " & Wallet: "+Wallet+ " With Amount USDT: " + Payout + " ";
            //string Mail = objmail.Notification("Admin", msge, objDash.ReturnAdminEmail("Admin"));

        }
        else if (a == -1)
        {
            result = "Already";

        }
        else
        {
            result = "Invaid Transaction";

        }
      
        return jsSerializer.Serialize(result);



    }
  
   
}