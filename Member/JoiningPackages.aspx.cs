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
    clsmail objmail = new clsmail();
    public static string OTP = "", RequestUser = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                      
            string reqUser = Request.QueryString["Id"].ToString();
            lbActiveMember.Text = (reqUser == "0" ? SessionData.Get<string>("Newuser") : reqUser);
            txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("Newuser"));
            string ID = Request.QueryString["pid"].ToString();
            paackmaster(ID);

        }

    }
 
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            if (txtamt.Text != "")
            {


                decimal widamount = 0, Min = 0, Max = 0, DailyROI = 0;
                string PackType = lbpackname.Text;
                decimal finalamount = Convert.ToDecimal(txtbalance.Text.Trim());
                widamount = Convert.ToDecimal(txtamt.Text);
                DailyROI = Convert.ToDecimal(lbincome.Text.Trim());
                Min = Convert.ToDecimal(lbmin.Text.Trim());
                Max = Convert.ToDecimal(lbmax.Text.Trim());


                if (finalamount >= widamount && widamount >= Min && widamount <= Max)
                {
                    int a = objamd.ActiveMember(lbActiveMember.Text.Trim(), widamount, DailyROI, PackType, SessionData.Get<string>("Newuser"), "N");
                    if (a > 0)
                    {


                        txtbalance.Text = objDash.TotalWallectBlance(SessionData.Get<string>("Newuser"));
                      
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Successfully?', 'you have investment successfully?', 'success');", true);

                        // Show SweetAlert popup
                        string Name = objDash.RetrunName(lbActiveMember.Text.Trim());
                        string Eamil = objDash.ReturnEmail(lbActiveMember.Text.Trim());
                        string Date = objtime.returnStringServerMachTime();

                        objmail.PackageActivate(Name, PackType, txtamt.Text, Date, Eamil);


                    }
                    else if (a == -1)
                    {

                       
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Already?', 'you have already investment on same amount in a day ?', 'warning');", true);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Try Again?', 'something went to wrong try again?', 'warning');", true);

                  
                    }

                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Insufficient Balance..!', 'Minimum invest $" + Min + " and Maximum Invset $" + Max + "', 'warning');", true);

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Opps!', 'enter a amount...', 'danger');", true);

               

            }
        }
        catch (Exception ex)
        {
           
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "swal('Opps!', 'Enter valid amount', 'danger');", true);

         


        }

    }


    
   
    private void paackmaster(string ID)
    {
        

        try
        {
            warning.Visible = false;
            danger.Visible = false;
            sccess.Visible = false;
            info.Visible = false;
            warning.Visible = false;

            

            string sql = "select * from [TblInvestMaster] where id='" + ID + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {
               
                lbpackname.Text = dt.Rows[0]["name"].ToString();
                lbmin.Text = dt.Rows[0]["DP"].ToString();
                lbmax.Text = dt.Rows[0]["GV"].ToString();
                lbincome.Text = dt.Rows[0]["income"].ToString();
                //hndqr.Value = dt.Rows[0]["imgurl"].ToString();

                //ImgQR.Src = hndqr.Value;
                //lbqty.Text = dt.Rows[0]["qty"].ToString();
                // lbrank.Text = dt.Rows[0]["rank"].ToString();







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
}